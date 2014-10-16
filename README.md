# Adobe Illustrator Layer Renamer

This script allows you to batch rename layers in Illustrator. 

![](https://s3-us-west-2.amazonaws.com/sebastienlavoie.personal/adobe-illustrator-layer-renamer.png)

The script currently only works with string replacement. Regular expressions will eventually be added.

## Installation

### Option 1

Save `ai-layer-renamer.jsx` in your scripts folder.

- Windows: `Program Files\Adobe\Adobe After Effects <version>\Presets\<language>/Scripts`
- OS X: `/Applications/Illustrator <version>/Presets/<language>/Scripts`

### Option 2

Run it from ExtendScript Toolkit.

## Development

1. Make sure you have [coffeescript](http://coffeescript.org) installed.
2. Run `cake watch` from the root of folder.
3. Run `cake build` to output .jsx file.