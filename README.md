# SonarLint for Eclipse: Development launcher

This repository contains common exported launchers for developing SonarLint for Eclipse.

## Ant scripts

Some Ant scripts are used for better integration of Maven projects into Eclipse. This is due Maven creating a file
named **_remote.repositories** per artifact downloaded inside the local repository. Running these scripts will remove
friction when (re-)loading target platforms

- *sonarlint-core-osgi.xml* used for pre-Sloop development, having one OSGi bundle for all of SonarLint Core
- *sonarlint-rpc-protocol.xml* used for development, containing only the RPC protocol definition
- *sonarlint-rpc-java-client.xml* used for development, containing only the RPC client (Java based IDEs)
- *sonarlint-java-client-utils.xml* used for development, containing only utilities (Java based IDEs)
- *sonarlint-java-client-legacy.xml* used for development, containing legacy logic not yet moved (Java based IDEs)

There is one Ant script used for SonarLint to pick up Eclipse plug-in test projects as they don't necessarily follow
the Maven project structure and when the classpath files are generated by Maven/Tycho the *test* property is not always
set correctly:

- *sonarlint-test-classpath.xml* used so SonarLint issues are only raised for non-production rules on test source code

## IBM Developer for z/OS

Due to SonarLint for Eclipse being also usable in IDz via the integration plug-in provided by IBM, it makes sense from
time to time to check whether changes introduce might break the compatiblity (e.g. on changes on the extension points).

For easier testing, there are some [Homebrew casks](https://github.com/Homebrew/homebrew-cask) that can be found in the
*IBM-Developer-for-zOS* folder for installation locally (should work on macOS / Linux devices).

A local cask can be installed via
> brew install --cask {local repository directory}/IBM-Developer-for-zOS/{formulae name with file suffix} --debug

- *IDz1508.rb* for IBM IDz 15.0.8 (12.2023), the latest Java 8 based
  [General Availability](https://en.wikipedia.org/wiki/Software_release_life_cycle#General_availability_(GA))
- *IDz1602.rb* for IBM IDz 16.0.2 (06.2023)
- *IDz1603.rb* for IBM IDz 16.0.3 (10.2023)
- *IDz1604.rb* for IBM IDz 16.0.4 (03.2024), the latest Java 11 based
  [General Availability](https://en.wikipedia.org/wiki/Software_release_life_cycle#General_availability_(GA)) that
  should be sufficient when testing

A local cask can be uninstalled via
> brew uninstall --force --cask {formulae name without file suffix} --debug

**INFO: Currently uninstalling these casks doesn't work correctly as the copied applications are not removed!**

## UTM - Virtual machines

[UTM](https://mac.getutm.app/) is used for virtualization and testing SonarLint for Eclipse on different operating
systems including investigation of potential issues. Every virtual machine will have a specific folder with scripts
and other configuration (e.g. *utm-macos-13* for a macOS Ventura virtual machine).

- *startup.sh* must be run after login, used for setting up shared folder and installing certificates
- *init.sh* must be run after *startup.sh* in order to update the local machine and install missing dependencies

On macOS the scripts will be linked on the Desktop via tiny helper applications starting the shell scripts!

## TODOs:

There are still some things left to do:

- unify the Ant scripts for the target platform definition with one single library
- add Ant script for checking consistency in SLCORE versions between *pom.xml* / *commons.target*
- add Ant script for testing [THIS](https://xtranet-sonarsource.atlassian.net/wiki/spaces/SL/pages/2875162997/HOWTO+Update+SLCORE+in+SLE)
- add Ant script for checking protobuf version consistency between SLE / SLCORE
- add target platform that can be loaded into Eclipse to run IDz instead of a default Eclipse Application
