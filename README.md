Connecting to the SigniFlow API
============================

This is the project that _generates_ API clients for connecting to the public SigniFlow API. You probably want to just use one of the clients that are pre-built in a language of your choice:

* [Apex](https://github.com/SigniFlow/connect-apex-sdk)
* [C#](https://github.com/SigniFlow/connect-csharp-sdk)
* [Java](https://github.com/SigniFlow/connect-java-sdk)
* [Javascript](https://github.com/SigniFlow/connect-javascript-sdk)
* [Kotlin](https://github.com/SigniFlow/connect-kotlin-sdk)
* [PHP](https://github.com/SigniFlow/connect-php-sdk)
* [Python](https://github.com/SigniFlow/connect-python-sdk)
* [Swift5](https://github.com/SigniFlow/connect-swift5-sdk)


The [Connect Examples](https://github.com/SigniFlow/connect-api-examples/) are working sample applications that you can copy from to build your own.

Connect API Specifications
=============================

This repository contains the specifications for generating client SDKs with
[OpenAPI-Generator](https://openapi-generator.tech/).

The canonical specification is defined in [OpenAPI-Specifications](https://github.com/SigniFlow/OpenAPI-Specifications). The templates for our
supported SDKs are located in `swagger-templates`. The configuration for each
SDK (e.g. name of the library, version number, etc.) are located in
`swagger-config`.

Configure a new language
------------------------

Generating an SDK for a new language is possible. You'll need to have a working version of `openapi-generator` and follow these steps:

1. Check if Swagger Codegen supports the language by running:
    ```bash
    swagger-codegen langs
    ```
2. If the language is supported, note swagger's name for it. We'll call it {lang}
3. Add a configuration file on [swagger-config](swagger-config/) named `config-{lang}.json`. You can check [this template](swagger-config/config-{lang}.json).
4. Create a directory on [swagger-templates](swagger-templates/) named `{lang}`. Generation scripts expect to have a folder even if no custom templates are included:
    ```bash
    mkdir $lang
    ```
5. (Optional) Add custom templates for your generator. Check [OpenAPI Generator Documentation](https://openapi-generator.tech/docs/templating).


Contributing
------------

See [CONTRIBUTING.md](./CONTRIBUTING.md).

License
-------

```
Copyright 2016 - 2018 SigniFlow, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
