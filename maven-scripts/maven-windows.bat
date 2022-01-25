@echo off
SET /P version="Enter baritone version suffix (Example: 1.18-SNAPSHOT): "
SET /P head_version="Enter maven version (Example: 1.8.1): "
call mvn install:install-file -Dfile=baritone-%version%.jar -DgroupId=cabaletta -DartifactId=baritone -Dversion=%head_version% -Dpackaging=jar -DcreateChecksum=true -DlocalRepositoryPath=.
echo Successfully built baritone-%version% maven
call mvn install:install-file -Dfile=baritone-%version%-dev.jar -DgroupId=cabaletta -DartifactId=baritone-dev -Dversion=%head_version% -Dpackaging=jar -DcreateChecksum=true -DlocalRepositoryPath=.
echo Successfully built baritone-dev-%version% maven
call mvn install:install-file -Dfile=baritone-api-fabric-%version%.jar -DgroupId=cabaletta -DartifactId=baritone-api-fabric -Dversion=%head_version% -Dpackaging=jar -DcreateChecksum=true -DlocalRepositoryPath=.
echo Successfully built baritone-api-fabric-%version% maven
call mvn install:install-file -Dfile=baritone-standalone-fabric-%version%.jar -DgroupId=cabaletta -DartifactId=baritone-standalone-fabric -Dversion=%head_version% -Dpackaging=jar -DcreateChecksum=true -DlocalRepositoryPath=.
echo Successfully built baritone-standalone-fabric-%version% maven
call mvn install:install-file -Dfile=baritone-unoptimized-fabric-%version%.jar -DgroupId=cabaletta -DartifactId=baritone-unoptimized-fabric -Dversion=%head_version% -Dpackaging=jar -DcreateChecksum=true -DlocalRepositoryPath=.
echo Successfully built baritone-unoptimized-fabric-%version% maven
pause
