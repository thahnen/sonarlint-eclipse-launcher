#!/bin/bash

export SONARLINT_JVM_OPTS="-agentlib:jdwp=transport=dt_socket,server=n,address=localhost:9009,suspend=y"
/opt/idz-16.0.4/developer_for_zos
