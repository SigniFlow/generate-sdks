
# temporarily change to the correct folder
$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
$dir = $dir;
Push-Location $dir

java -jar .\swagger-codegen\openapi-generator-cli.jar list

#java -jar .\swagger-codegen\openapi-generator-cli.jar author template -g csharp-netcore -o "./swagger-templates/csharp"
#java -jar .\swagger-codegen\openapi-generator-cli.jar author template -g java -o "./swagger-templates/java"
#java -jar .\swagger-codegen\openapi-generator-cli.jar author template -g javascript -o "./swagger-templates/javascript"
#java -jar .\swagger-codegen\openapi-generator-cli.jar author template -g php -o "./swagger-templates/php"
#java -jar .\swagger-codegen\openapi-generator-cli.jar author template -g apex -o "./swagger-templates/apex"
#java -jar .\swagger-codegen\openapi-generator-cli.jar author template -g kotlin -o "./swagger-templates/kotlin"
#java -jar .\swagger-codegen\openapi-generator-cli.jar author template -g swift5 -o "./swagger-templates/swift5"
#java -jar .\swagger-codegen\openapi-generator-cli.jar author template -g python -o "./swagger-templates/python"

# now back to previous directory
Pop-Location