#!/bin/bash

export SONARLINT_JVM_OPTS="-agentlib:jdwp=transport=dt_socket,server=n,address=localhost:8008,suspend=y"
/opt/sts-4/SpringToolSuite4
