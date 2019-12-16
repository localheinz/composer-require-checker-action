# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

For a full diff see [`1.1.1...master`](https://github.com/localheinz/composer-require-checker-action/compare/1.1.1...master).

### Added

* Added `version` input parameter which allows specifying a version constraint for installing `maglnet/composer-require-checker` when necessary ([#5]), by [@localheinz]
* Added `workingDirectory` input parameter which allows specifying a directory in which to run `maglnet/composer-require-checker` ([#10]), by [@localheinz]

### [`1.1.1`][1.1.1]

For a full diff see [`1.1.0...1.1.1`][1.1.0...1.1.1].

#### Changed

* Set `memory_limit` to `-1` ([#3]), by [@localheinz]

### [`1.1.0`][1.1.0]

For a full diff see [`1.0.0...1.1.0`][1.0.0...1.1.0].

#### Changed

* Used `php:7.4-cli-alpine` instead of `php:7.3-cli-alpine` as base Docker image ([#2]), by [@localheinz]

### [`1.0.0`][1.0.0]

For a full diff see [`34c52fe...1.0.0`][34c52fe...1.0.0].

[1.0.0]: https://github.com/localheinz/localheinz/composer-require-checker-action/releases/tag/1.0.0
[1.1.0]: https://github.com/localheinz/localheinz/composer-require-checker-action/releases/tag/1.1.0
[1.1.1]: https://github.com/localheinz/localheinz/composer-require-checker-action/releases/tag/1.1.1

[34c52fe...1.0.0]: https://github.com/localheinz/composer-require-checker-action/compare/34c52fe...1.0.0
[1.0.0...1.1.0]: https://github.com/localheinz/composer-require-checker-action/compare/1.0.0...1.1.0
[1.1.0...1.1.1]: https://github.com/localheinz/composer-require-checker-action/compare/1.1.0...1.1.1

[#2]: https://github.com/localheinz/composer-require-checker-action/pull/2
[#3]: https://github.com/localheinz/composer-require-checker-action/pull/3
[#5]: https://github.com/localheinz/composer-require-checker-action/pull/5
[#10]: https://github.com/localheinz/composer-require-checker-action/pull/10

[@localheinz]: https://github.com/localheinz
