@echo off
SET /P version="Enter baritone version (Example: 1.7.2): "
SET /P head_version="Enter head version (Example: 1.7): "
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