# Local Data Storage

A new Flutter project.

## Dependencys 

```bash
dev_dependencies:
  build_runner: ^2.0.0
  hive_generator: ^2.0.0

```
## Getting Started
This package is a wrapper for the native SharedPreferences Android and iOS platform, it provides a simple way
to store key-value pairs in your app's local storage. The values stored using this prefer
ences are not guaranteed to be persistent between application restarts. If you need
persistence you should use a database instead.
The plugin API will stay as simple as possible. All keys must be strings and there are no
restrictions on the size of the keys or values. Values can be any type that can
be converted to JSON. For example, you can save complex types like Integers, Floats
and even objects by converting them to JSON first.
**Please note:** This plugin does not provide any functionality beyond what is provided by the standard

## build hive
1. Add dependency `hive` & `hive_flutter` into pubspec.
```bash
dependencies:
  hive: ^2.0.4
  hive_flutter: ^1.1.0

```
2. add `hive` and `build_runner` into pubspec.yaml file
```bash
flutter pub run build_runner build

```