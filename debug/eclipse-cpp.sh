#!/bin/bash

export SONARLINT_JVM_OPTS="-agentlib:jdwp=transport=dt_socket,server=n,address=localhost:7007,suspend=y"
/opt/eclipse-cpp/eclipse
