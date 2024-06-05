#!/bin/bash

export SONARLINT_JVM_OPTS="-agentlib:jdwp=transport=dt_socket,server=y,address=localhost:9009,suspend=y"
/opt/eclipse-cpp/eclipse
