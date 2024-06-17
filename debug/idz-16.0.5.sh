#!/bin/bash

export SONARLINT_JVM_OPTS="-agentlib:jdwp=transport=dt_socket,server=y,address=localhost:9009,suspend=y"
/opt/idz-16.0.5/developer_for_zos
