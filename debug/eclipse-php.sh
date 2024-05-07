#!/bin/bash

export SONARLINT_JVM_OPTS="-agentlib:jdwp=transport=dt_socket,server=n,address=localhost:6006,suspend=y"
/opt/eclipse-php/eclipse
