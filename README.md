# An iOS file preview and open plugin

This plugin will preview a file using UIDocumentInteractionController and allow to open it via the share sheet.

## Requirements

- iOS that support swift 3 and above (available since then)
- Cordova 8.0

## Installation

```
cordova plugin add cordova-ios-file-preview
```

## Usage

The file parameter expect a full URL generated as `FileEntry.toURL()` with the full path to the file.

```
iOSFilePreview(file, type, () => { success }, () => { error });
```

## Notes

Code based in [cordova-plugin-ios-document-preview](https://github.com/katallaxie/cordova-plugin-ios-document-preview) by [Sebastian Döll](https://github.com/katallaxie)

# Author

Made with love, by [David R. Comba Lareu](https://twitter.com/shadow_of__soul) CEO of [Ipsilon Developments Inc.](https://ipsilondev.com), MIT licensed.
