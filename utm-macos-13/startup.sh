#!/usr/bin/env bash

# =================================================================================================
#           utm-macos-13: Used on macOS Ventura virtual machines after starting up
# =================================================================================================

DIR="$(cd -- "$(dirname "$0")" > /dev/null 2>&1 ; pwd -P)"
USERNAME="$(stat -f%Su /dev/console)"
HOME_DIR="/Users/$USERNAME"
SHARE_DIR="$HOME_DIR/share"


# =================================================================================================
#                       SHARED METHODS USED THROUGHOUT THE APPLCIATION
# =================================================================================================

# Await user input until "yes" is answered 
function awaitUser() {
    while true; do
        read "yn?$1 "
        case $yn in
            [Yy]* ) break;;
            *) echo "Please answer with yes!";;
        esac
    done
}

# Reload the path entries and Z shell user profile
function reloadSession() {
    eval "$(/usr/libexec/path_helper)"
    source $ZPROFILE
}

# Header for steps 
function header() {
    echo "\n\n================================================================================\n \
  $1\n================================================================================"
}

# Log simple lines
function log() {
    echo "* $1"
}


# =================================================================================================
#                                   ACTUAL APPLICATION STEPS
# =================================================================================================

if [[ -d "$SHARE_DIR/shared" ]]; then
    log "startup.sh already called, stopping here!"
    exit 0
fi


# 0) Mount shared folder from host
header "0) Mount shared folder from host"

mkdir $SHARE_DIR
mount_virtiofs share $SHARE_DIR
if [[ "$?" -ne "0" ]]; then
    log "Cannot mount shared folder at '$SHARE_DIR', please assess the situation!"
    awaitUser
    exit 1
fi
log "Shared folder mounted at '$SHARE_DIR'"


# 1) Import / replace all certificatets
header "1) Import / replace all certificates"

for certificate in $SHARE_DIR/shared/*.cer; do
    echo "Certificate: $certificate"
    NAME="$(openssl x509 -noout -text -in $certificate | grep Issue | cut -d '=' -f7 | cut -d ',' -f1)"

    EXISTS="$(sudo security find-certificate -a -c "$NAME" /Library/Keychains/System.keychain)"
    if [[ ! -z "${EXISTS}" ]]; then
        sudo security delete-certificate -c "$NAME" /Library/Keychains/System.keychain
        if [[ "$?" -ne "0" ]]; then
            log "Certificate '$NAME' cannot be deleted from system keychain, must be done manually!"
            awaitUser
            exit 2
        fi
    fi

    sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain $certificate
    if [[ "$?" -ne "0" ]]; then
        log "Certificate '$certificate' cannot be added to the system keychain"
        awaitUser
        exit 3
    fi
done
log "Certificates imported correctly"


# 2) Copy utm-macos-13 into home directory
header "2) Getting newest version of 'utm-macos-13' scripts"

if [[ ! -d "$SHARE_DIR/shared/utm-macos-13" ]]; then
    log "Script dir missing on the shared drive, please assess the situation!"
    awaitUser
    exit 4
fi

UTM_MACOS_13_DIR="$HOME_DIR/utm-macos-13"
rm -rf $UTM_MACOS_13_DIR
mkdir $UTM_MACOS_13_DIR
cp $SHARE_DIR/shared/utm-macos-13/* $UTM_MACOS_13_DIR
log "Scripts updated"


# 3) Create the startup script on the Desktop for easier usage
header "3) Startup script on Desktop"

if [[ ! -d "$HOME_DIR/Desktop/startup.app" ]]; then
    osacompile -o $HOME_DIR/Desktop/startup.app $UTM_MACOS_13_DIR/startup.scpt
fi
log "Startup script done"
