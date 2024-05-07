#!/bin/bash

export SONARLINT_JVM_OPTS="-agentlib:jdwp=transport=dt_socket,server=n,address=localhost:5005,suspend=y"
/opt/eclipse-rcp/eclipse
