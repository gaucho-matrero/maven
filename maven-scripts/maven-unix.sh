#!/bin/sh
printf "Enter baritone version (Example: 1.5.3-664-g1a60d080): "
read version
printf "Enter minecraft client version (Example: 1.19.2): "
read client_version
mvn install:install-file -Dfile=baritone-fabric-api-$version.jar -DgroupId=cabaletta -DartifactId=baritone-fabric-api -Dversion=$client_version -Dpackaging=jar -DcreateChecksum=true -DlocalRepositoryPath=.
printf "Successfully added baritone-fabric-api-$version to maven"
mvn install:install-file -Dfile=baritone-fabric-standalone-$version.jar -DgroupId=cabaletta -DartifactId=baritone-fabric-standalone -Dversion=$client_version -Dpackaging=jar -DcreateChecksum=true -DlocalRepositoryPath=.
printf "Successfully added itone-fabric-standalone-$version to maven"
mvn install:install-file -Dfile=baritone-fabric-unoptimized-$version.jar -DgroupId=cabaletta -DartifactId=baritone-fabric-unoptimized -Dversion=$client_version -Dpackaging=jar -DcreateChecksum=true -DlocalRepositoryPath=.
printf "Successfully added baritone-fabric-unoptimized-$version to maven"
