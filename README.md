# SonarLint for Eclipse: Development launcher

This repository contains common exported launchers for developing SonarLint for Eclipse.

## TODOs:

There are still some things left to do:

- change Ant script to use `ant:if` and `ant:unless` instead of running (with potential *failures*)
- change *sonarlint-core-osgi.xml* to use `loadresource` instead of loading/saving temporary files
- copy *sonarlint-core-osgi.xml* for the upcoming new OSGi artifacts for Sloop
- change *sonarlint-test-classpath.xml* to use reusable macros instead of multiple implementations
- add Ant script for testing [THIS](https://xtranet-sonarsource.atlassian.net/wiki/spaces/SL/pages/2875162997/HOWTO+Update+SLCORE+in+SLE)
- add Ant script for checking protobuf version consistency between SLE / SLCORE
