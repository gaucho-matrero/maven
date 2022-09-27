@echo off
SET /P version="Enter baritone version (Example: 1.5.3-664-g1a60d080): "
SET /P client_version="Enter minecraft client version (Example: 1.19.2): "
call mvn install:install-file -Dfile=baritone-api-fabric-%version%.jar -DgroupId=cabaletta -DartifactId=baritone-api-fabric -Dversion=%client_version% -Dpackaging=jar -DcreateChecksum=true -DlocalRepositoryPath=.
echo Successfully added baritone-fabric-api-%version% to maven
call mvn install:install-file -Dfile=baritone-standalone-fabric-%version%.jar -DgroupId=cabaletta -DartifactId=baritone-standalone-fabric -Dversion=%client_version% -Dpackaging=jar -DcreateChecksum=true -DlocalRepositoryPath=.
echo Successfully added baritone-fabric-standalone-%version% to maven
call mvn install:install-file -Dfile=baritone-unoptimized-fabric-%version%.jar -DgroupId=cabaletta -DartifactId=baritone-unoptimized-fabric -Dversion=%client_version% -Dpackaging=jar -DcreateChecksum=true -DlocalRepositoryPath=.
echo Successfully added baritone-fabric-unoptimized-%version% to maven
pause
