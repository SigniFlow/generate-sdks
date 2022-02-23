
# temporarily change to the correct folder
$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
Push-Location $dir

# OpenAPI Generator
#apex
Push-Location $dir
java -jar .\swagger-codegen\openapi-generator-cli.jar generate -g apex -o "./swagger-out/connect-apex-sdk" -i "https://raw.githubusercontent.com/SigniFlow/OpenAPI-Specifications/main/reference/SigniFlow-OpenAPI-v1.yaml" --config "./swagger-config/config-apex.json" --template-dir "./swagger-templates/apex" --server-variables=serverUrl=server-url
Push-Location "$dir\swagger-out\connect-apex-sdk\";
./git_push.sh signiflow connect-csharp-sdk "minor update" "github.com"

#csharp
Push-Location $dir
java -jar .\swagger-codegen\openapi-generator-cli.jar generate -g csharp-netcore -o "./swagger-out/connect-csharp-sdk" -i "https://raw.githubusercontent.com/SigniFlow/OpenAPI-Specifications/main/reference/SigniFlow-OpenAPI-v1.yaml" --config "./swagger-config/config-csharp.json" --template-dir "./swagger-templates/csharp" --server-variables=serverUrl=server-url

#java -jar .\swagger-codegen\openapi-generator-cli.jar generate -g csharp-netcore -o "./swagger-out/connect-csharp-sdk" -i "https://raw.githubusercontent.com/SigniFlow/OpenAPI-Specifications/main/reference/SigniFlow-OpenAPI-v1.yaml" --config "./swagger-config/config-csharp.json" --template-dir "./swagger-templates/csharp" --server-variables=serverUrl=server-url --global-property debugSupportingFiles --dry-run | set-content test
Push-Location "$dir\swagger-out\connect-csharp-sdk\";
./git_push.sh signiflow connect-csharp-sdk "minor update" "github.com"

#java
Push-Location $dir
java -jar .\swagger-codegen\openapi-generator-cli.jar generate -g java -o "./swagger-out/connect-java-sdk" -i "https://raw.githubusercontent.com/SigniFlow/OpenAPI-Specifications/main/reference/SigniFlow-OpenAPI-v1.yaml" --config "./swagger-config/config-java.json" --template-dir "./swagger-templates/java" --server-variables=serverUrl=server-url
Push-Location "$dir\swagger-out\connect-java-sdk\";
./git_push.sh signiflow connect-csharp-sdk "minor update" "github.com"

#javascript
Push-Location $dir
java -jar .\swagger-codegen\openapi-generator-cli.jar generate -g javascript -o "./swagger-out/connect-javascript-sdk" -i "https://raw.githubusercontent.com/SigniFlow/OpenAPI-Specifications/main/reference/SigniFlow-OpenAPI-v1.yaml" --config "./swagger-config/config-javascript.json" --template-dir "./swagger-templates/javascript" --server-variables=serverUrl=server-url
Push-Location "$dir\swagger-out\connect-javascript-sdk\";
./git_push.sh signiflow connect-javascript-sdk "minor update" "github.com"

#kotlin
Push-Location $dir
java -jar .\swagger-codegen\openapi-generator-cli.jar generate -g kotlin -o "./swagger-out/connect-kotlin-sdk" -i "https://raw.githubusercontent.com/SigniFlow/OpenAPI-Specifications/main/reference/SigniFlow-OpenAPI-v1.yaml" --config "./swagger-config/config-kotlin.json" --template-dir "./swagger-templates/kotlin" --server-variables=serverUrl=server-url
Push-Location "$dir\swagger-out\connect-kotlin-sdk\";
./git_push.sh signiflow connect-kotlin-sdk "minor update" "github.com"

#php
Push-Location $dir
java -jar .\swagger-codegen\openapi-generator-cli.jar generate -g php -o "./swagger-out/connect-php-sdk" -i "https://raw.githubusercontent.com/SigniFlow/OpenAPI-Specifications/main/reference/SigniFlow-OpenAPI-v1.yaml" --config "./swagger-config/config-php.json" --template-dir "./swagger-templates/php" --server-variables=serverUrl=server-url 
Push-Location "$dir\swagger-out\connect-php-sdk\";
./git_push.sh signiflow connect-php-sdk "minor update" "github.com"

#php-laravel
#Push-Location $dir
#java -jar .\swagger-codegen\openapi-generator-cli.jar generate -g php-laravel -o "./swagger-out/connect-php-laravel-sdk" -i "https://raw.githubusercontent.com/SigniFlow/OpenAPI-Specifications/main/reference/SigniFlow-OpenAPI-v1.yaml" --config "./swagger-config/config-php-laravel.json" --template-dir "./swagger-templates/php-laravel" --server-variables=serverUrl=server-url
#Push-Location "$dir\swagger-out\connect-php-laravel-sdk\";
#./git_push.sh signiflow connect-php-laravel-sdk "minor update" "github.com"

#python
Push-Location $dir
java -jar .\swagger-codegen\openapi-generator-cli.jar generate -g python -o "./swagger-out/connect-python-sdk" -i "https://raw.githubusercontent.com/SigniFlow/OpenAPI-Specifications/main/reference/SigniFlow-OpenAPI-v1.yaml" --config "./swagger-config/config-python.json" --template-dir "./swagger-templates/python" --server-variables=serverUrl=server-url
Push-Location "$dir\swagger-out\connect-python-sdk\";
./git_push.sh signiflow connect-python-sdk "minor update" "github.com"

#swift5
Push-Location $dir
java -jar .\swagger-codegen\openapi-generator-cli.jar generate -g swift5 -o "./swagger-out/connect-swift5-sdk" -i "https://raw.githubusercontent.com/SigniFlow/OpenAPI-Specifications/main/reference/SigniFlow-OpenAPI-v1.yaml" --config "./swagger-config/config-swift5.json" --template-dir "./swagger-templates/swift5" --server-variables=serverUrl=server-url
Push-Location "$dir\swagger-out\connect-swift5-sdk\";
./git_push.sh signiflow connect-swift5-sdk "minor update" "github.com"

#ruby
Push-Location $dir
java -jar .\swagger-codegen\openapi-generator-cli.jar generate -g ruby -o "./swagger-out/connect-ruby-sdk" -i "https://raw.githubusercontent.com/SigniFlow/OpenAPI-Specifications/main/reference/SigniFlow-OpenAPI-v1.yaml" --config "./swagger-config/config-ruby.json" --template-dir "./swagger-templates/ruby" --server-variables=serverUrl=server-url
Push-Location "$dir\swagger-out\connect-ruby-sdk\";
./git_push.sh signiflow connect-ruby-sdk "minor update" "github.com"

# now back to previous directory
Pop-Location




