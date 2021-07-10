

# temporarily change to the correct folder
$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
$dir = "$dir\swagger-codegen";
Push-Location $dir

Invoke-WebRequest -OutFile openapi-generator-cli.jar https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/5.1.0/openapi-generator-cli-5.1.0.jar

# now back to previous directory
Pop-Location