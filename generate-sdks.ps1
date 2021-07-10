
# temporarily change to the correct folder
$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
Push-Location $dir

# OpenAPI Generator
#apex
java -jar .\swagger-codegen\openapi-generator-cli.jar generate -g apex -o "./swagger-out/apex" -i "https://raw.githubusercontent.com/SigniFlow/OpenAPI-Specifications/main/reference/SigniFlow-OpenAPI-v1.yaml" --config "./swagger-config/config-apex.json" --template-dir "./swagger-templates/apex"

#csharp
java -jar .\swagger-codegen\openapi-generator-cli.jar generate -g csharp -o "./swagger-out/csharp" -i "https://raw.githubusercontent.com/SigniFlow/OpenAPI-Specifications/main/reference/SigniFlow-OpenAPI-v1.yaml" --config "./swagger-config/config-csharp.json" --template-dir "./swagger-templates/csharp"

#java
java -jar .\swagger-codegen\openapi-generator-cli.jar generate -g java -o "./swagger-out/java" -i "https://raw.githubusercontent.com/SigniFlow/OpenAPI-Specifications/main/reference/SigniFlow-OpenAPI-v1.yaml" --config "./swagger-config/config-java.json" --template-dir "./swagger-templates/java"

#javascript
java -jar .\swagger-codegen\openapi-generator-cli.jar generate -g javascript -o "./swagger-out/javascript" -i "https://raw.githubusercontent.com/SigniFlow/OpenAPI-Specifications/main/reference/SigniFlow-OpenAPI-v1.yaml" --config "./swagger-config/config-javascript.json" --template-dir "./swagger-templates/javascript"

#kotlin
java -jar .\swagger-codegen\openapi-generator-cli.jar generate -g kotlin -o "./swagger-out/kotlin" -i "https://raw.githubusercontent.com/SigniFlow/OpenAPI-Specifications/main/reference/SigniFlow-OpenAPI-v1.yaml" --config "./swagger-config/config-kotlin.json" --template-dir "./swagger-templates/kotlin"

#php
java -jar .\swagger-codegen\openapi-generator-cli.jar generate -g php -o "./swagger-out/php" -i "https://raw.githubusercontent.com/SigniFlow/OpenAPI-Specifications/main/reference/SigniFlow-OpenAPI-v1.yaml" --config "./swagger-config/config-php.json" --template-dir "./swagger-templates/php"

#python
java -jar .\swagger-codegen\openapi-generator-cli.jar generate -g python -o "./swagger-out/python" -i "https://raw.githubusercontent.com/SigniFlow/OpenAPI-Specifications/main/reference/SigniFlow-OpenAPI-v1.yaml" --config "./swagger-config/config-python.json" --template-dir "./swagger-templates/python"

#swift5
java -jar .\swagger-codegen\openapi-generator-cli.jar generate -g swift5 -o "./swagger-out/swift5" -i "https://raw.githubusercontent.com/SigniFlow/OpenAPI-Specifications/main/reference/SigniFlow-OpenAPI-v1.yaml" --config "./swagger-config/config-swift5.json" --template-dir "./swagger-templates/swift5"

# now back to previous directory
Pop-Location




