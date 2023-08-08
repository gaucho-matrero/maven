# Maven Repo

## How to update to new version

1. Make sure your local version of baritone works with altoclef ([check here for a brief guide on how to do this](https://github.com/gaucho-matrero/altoclef/blob/main/develop.md#modifying-baritone-dev-mode))
1. Clone this repo
1. Build the baritone jars
1. Grab every jar from the build folder (`...-dev.jar`, `...-api.jar`, etc.) and copy it to the `maven-scripts` folder
1. Run `maven-unix.sh` or `maven-windows.bat` in the folder. Version is the same as what you see on the jar file (ex. `baritone-1.18.2` is version `1.18.2`), Head Version is the version of the baritone update (ex. [baritone for 1.18.2 is version 1.8.4](https://github.com/cabaletta/baritone/blob/24e047c12e807fc4ee6528f4698c560b70e5a641/gradle.properties#L3)
1. Some new folders should be generated in the `maven-scripts` folder. Copy these folders into the `cabaletta` folder (make sure they match the folder structure. For example, the new `baritone-api-fabric` folder should be copied to the exact same location of the old `baritone-api-fabric` folder so their contents get merged.)
1. You should now have an updated version of the repo that needs to be pushed. To confirm, do a `git diff cabaletta/baritone/maven-metadata-local.xml` and confirm that the version number has been updated to your new version.
1. Delete the old baritone jar files from the `maven-scripts` folder
1. Push the `cabaletta` folder
1. You're done!
1. Check the github pages setting to verify that the site is updated ![image](https://user-images.githubusercontent.com/13367955/229860596-7eead121-158d-4d94-88ca-aee962f9815f.png)
1. After the new github page is live, you can update your `altoclef` `build.gradle` to use the new baritone from maven (check [this line](https://github.com/gaucho-matrero/altoclef/blob/cc6350b517308355cf2d35e5c15178077e7e3f60/build.gradle#L50))