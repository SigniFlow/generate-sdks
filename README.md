Connecting to the SigniFlow API
============================

This is the project that _generates_ API clients for connecting to the public SigniFlow API. You probably want to just use one of the clients that are pre-built in a language of your choice:

* [Python](https://github.com/SigniFlow/connect-python-sdk)
* [C#](https://github.com/SigniFlow/connect-csharp-sdk)
* [Ruby](https://github.com/SigniFlow/connect-ruby-sdk)
* [PHP](https://github.com/SigniFlow/connect-php-sdk)
* [Java](https://github.com/SigniFlow/connect-java-sdk)
* [Javascript](https://github.com/SigniFlow/connect-javascript-sdk)

The [Connect Examples](https://github.com/SigniFlow/connect-api-examples/tree/master/connect-examples/) are working sample applications that you can copy from to build your own.

Connect API Specifications
=============================

This repository contains the specifications for generating client SDKs with
[Swagger/OpenAPI](http://swagger.io/).

The canonical specification is defined in `api.json`. The templates for our
supported SDKs are located in `swagger-templates`. The configuration for each
SDK (e.g. name of the library, version number, etc.) are located in
`swagger-config`.

Configure a new language
------------------------

Generating an SDK for a new language is possible. You'll need to have a working version of `swagger-codegen` and follow these steps:

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
5. (Optional) Add custom templates for your generator. Check [Swagger Codegen Readme](https://github.com/swagger-api/swagger-codegen#modifying-the-client-library-format).

Generating and Downloading New Swagger Specs
--------------------------------------------

Swagger specifications are now generated in our new pipeline, using the [`oas-pipeline` tool](https://git.sqcorp.co/projects/XP/repos/oas-pipeline/browse/cli). You will need the build id for an `OAS` generated with the tool in production. The Swagger Spec can then be generated with the following command:
```
oas-pipeline generate swagger <build_id>
```

Once the Swagger generation has succeeded, the spec files can be downloaded and pushed to a release branch with the following command:
```
./script/internal/download-swagger-specs.sh <build_id>
```

Note: the build id must be from a production environment build.

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
