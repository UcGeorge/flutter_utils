## 0.0.1

## Overview

The `flutter_assist` package includes various utility functions and classes that aim to simplify some common tasks while working with Flutter. These utilities are grouped into different categories such as DateTime, Flow, Functions, LocalFile, Log, MapMarker, and Regex.

## Installation

To use this package, you need to include it as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_assist: ^1.0.0
```

Then, run `flutter pub get` to download the package.

## DateTime utils

This category contains a set of extension functions on the `DateTime` class that make working with dates and times more straightforward.

## FlowUtils

The `FlowUtils` category includes a set of static functions that abstract Flutter's Navigator functions. These functions aim to make navigation between screens more comfortable and more readable.

## FunctionsUtil

This category consists of one function that allows you to asynchronously execute a list of asynchronous functions and return the outputs of all in a list.

## LocalFileUtil

The `LocalFileUtil` category includes a set of static functions that allow you to pick images and files from the user's file system.

## LogUtil

The `LogUtil` category includes a set of static functions that enable you to log to the debug console effectively.

## MapMarkerUtil

The `MapMarkerUtil` category includes a set of static functions that allow you to convert from various formats to a `BitmapDescriptor`. The formats included in this category are:

- `SVG asset`
- `Picture asset`
- `Picture asset with center text`
- `Circle canvas with text`
- `Online picture`
- `Icon`
- `Widget`

## RegexUtil

The `RegexUtil` category includes a set of static RegEx objects for form validations.
