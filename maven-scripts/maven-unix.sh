#!/bin/sh
printf "Enter baritone version (Example: 1.7.2): "
read version
printf "Enter head version (Example: 1.7): "
read head_version
call mvn install:install-file -Dfile=baritone-$version.jar -DgroupId=cabaletta -DartifactId=baritone -Dversion=$head_version -Dpackaging=jar -DcreateChecksum=true -DlocalRepositoryPath=.
printf "Successfully built baritone-$version maven"
call mvn install:install-file -Dfile=baritone-$version-dev.jar -DgroupId=cabaletta -DartifactId=baritone-dev -Dversion=$head_version -Dpackaging=jar -DcreateChecksum=true -DlocalRepositoryPath=.
printf "Successfully built baritone-dev-$version maven"
mvn install:install-file -Dfile=baritone-api-fabric-$version.jar -DgroupId=cabaletta -DartifactId=baritone-api-fabric -Dversion=$head_version -Dpackaging=jar -DcreateChecksum=true -DlocalRepositoryPath=.
printf "Successfully built baritone-api-fabric-$version maven"
mvn install:install-file -Dfile=baritone-standalone-fabric-$version.jar -DgroupId=cabaletta -DartifactId=baritone-standalone-fabric -Dversion=$head_version -Dpackaging=jar -DcreateChecksum=true -DlocalRepositoryPath=.
printf "Successfully built baritone-standalone-fabric-$version maven"
mvn install:install-file -Dfile=baritone-unoptimized-fabric-$version.jar -DgroupId=cabaletta -DartifactId=baritone-unoptimized-fabric -Dversion=$head_version -Dpackaging=jar -DcreateChecksum=true -DlocalRepositoryPath=.
printf "Successfully built baritone-unoptimized-fabric-$version maven"