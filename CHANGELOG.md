# Change Log
This project adheres to [Semantic Versioning](http://semver.org/).

This CHANGELOG follows the format listed [here](https://github.com/sensu-plugins/community/blob/master/HOW_WE_CHANGELOG.md)

## [Unreleased]

### Security
- updated rubocop dependency to `~> 0.51.0` per: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-8418.

### Changed


## [1.0.0] - 2017-07-01
### Breaking Changes
- removed ruby 1.9 support (@majormoses)
- require use of `'sensu-plugin', '~> 2.0'` because ruby 2.4 and json.

### Added
- ruby 2.4.1 testing (@majormoses)

### Removed
- CodeClimate stuff thats not used anymore (@majormoses)

## [0.0.4] - 2016-02-5
### Added
- add new cert

## [0.0.3] - 2015-07-14
### Changed
- updated sensu-plugin gem to 1.2.0

## [0.0.2] - 2015-06-02
### Fixed
- added binstubs

## 0.0.1 - 2015-05-04
### Added
- initial release

[Unreleased]: https://github.com/sensu-plugins/sensu-plugins-ansible/compare/1.0.0...HEAD
[1.0.0]: https://github.com/sensu-plugins/sensu-plugins-ansible/compare/0.0.4...1.0.0
[0.0.4]: https://github.com/sensu-plugins/sensu-plugins-ansible/compare/0.0.3...0.0.4
[0.0.3]: https://github.com/sensu-plugins/sensu-plugins-ansible/compare/0.0.2...0.0.3
[0.0.2]: https://github.com/sensu-plugins/sensu-plugins-ansible/compare/0.0.1...0.0.2
