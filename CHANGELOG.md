## 0.1.1

- Refactored ffi directory to bindings directory
- Refactored usage lines to be all lowercase and with no period
- Added `derry --version` option

## 0.1.0

- Added support for `derry source` command

## 0.0.9

- Added support for using subcommands with options/arguments/parameters

## 0.0.8+1

- Fixed #20 `MultipleHandlers` Error caused by #12 fix

## 0.0.8

- Fixed #12 Ctrl-C Error
- Added `-s` as abbrreviation for `--silent`

## 0.0.7+1

- Fixed #14 error on not being able to use options caused by previous changes

## 0.0.7

- Added support for nested scripts
- Modified `Did you mean this?` check and `ls` commands to work well with nested scripts
- Breaking changes on `Advanced Configuration` API for compatibility with nested scripts

## 0.0.6

- Added `Did you mean this?` check by using `string-similarity` package
- Fixed null infoLine error
- Fixed command not found unhandled exceptions

## 0.0.5

- Added `derry ls` command
- Updated documentation

## 0.0.4

- Added support for `test` and `build` aliases
- Better and consistent error messages with an API

## 0.0.3+1

- Modified README to work correctly on pub.dev

## 0.0.3

- Added support for `--silent`
- Refactored Rust source code
- Started using derry for build
- Modified documentation

## 0.0.2

- Added support for subcommands

## 0.0.1

- Initial version, scaffolded by Stagehand
- Added support for list definitions
- Added support for configurable execution type
- Added support for win64, linux64, and (mac64)
- Added tests for helpers
