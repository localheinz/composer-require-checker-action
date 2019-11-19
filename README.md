# composer-require-checker-action

[![Continuous Integration](https://github.com/localheinz/composer-require-checker-action/workflows/Continuous%20Integration/badge.svg)](https://github.com/localheinz/composer-require-checker-action/actions)
[![Continuous Deployment](https://github.com/localheinz/composer-require-checker-action/workflows/Continuous%20Deployment/badge.svg)](https://github.com/localheinz/composer-require-checker-action/actions)

Provides a [GitHub action](https://github.com/features/actions) that runs [`maglnet/composer-require-checker`](https://github.com/maglnet/ComposerRequireChecker) to ensure your PHP project does not use any unknown symbols.

## Usage

Define a workflow in `.github/workflows/continuous-integration.yml` (or add a job if you already have defined workflows).

:bulb: Read more about [Configuring a workflow](https://help.github.com/en/articles/configuring-a-workflow).

```yaml
on:
  pull_request:
  push:
    branches:
      - master
    tags:
      - "**"

name: "Continuous Integration"

jobs:
  dependency-analysis:
    name: "Dependency Analysis"
    
    runs-on: ubuntu-latest
    
    steps:
      - name: "Checkout"
        uses: actions/checkout@master

      - name: "Run maglnet/composer-require-checker"
        uses: docker://localheinz/composer-require-checker-action:latest
```

### Docker image

As Docker images are automatically built and pushed on a merge to `master` or when a new tag is created in this repository, the recommended way to use this GitHub action is to reference the pre-built Docker image directly, as seen above.

:bulb: The Docker image can also be executed directly by running

```
$ docker run --interactive --rm --tty --workdir=/app --volume ${PWD}:/app localheinz/composer-require-checker-action:latest
```

For more information, see the [Docker Docs: Docker run reference](https://docs.docker.com/engine/reference/run/).

Instead of using the latest pre-built Docker image, you can also specify a Docker image tag (which corresponds to the tags [released on GitHub](https://github.com/localheinz/composer-require-checker-action/releases)):

```diff
 on:
   pull_request:
   push:
     branches:
       - master
     tags:
       - "**"

 name: "Continuous Integration"

 jobs:
   composer-require-checker-action:
     name: composer-require-checker-action
    
     runs-on: ubuntu-latest
    
     steps:
       - name: "Checkout"
         uses: actions/checkout@master

       - name: "Run action"
-        uses: docker://localheinz/composer-require-checker-action:latest
+        uses: docker://localheinz/composer-require-checker-action:1.2.3
```

## Changelog

Please have a look at [`CHANGELOG.md`](CHANGELOG.md).

## Contributing

Please have a look at [`CONTRIBUTING.md`](.github/CONTRIBUTING.md).

## Code of Conduct

Please have a look at [`CODE_OF_CONDUCT.md`](.github/CODE_OF_CONDUCT.md).

## License

This package is licensed using the MIT License.
