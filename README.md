# SonarLint for Eclipse: Development launcher

This repository contains common exported launchers for developing SonarLint for Eclipse.

## TODOs:

There are still some things left to do:

- change Ant script to use `ant:if` and `ant:unless` instead of running (with potential *failures*)
- change *sonarlint-core-osgi.xml* to use `loadresource` instead of loading/saving temporary files
- change *sonarlint-test-classpath.xml* to use reusable macros instead of multiple implementations
