### Naev Simple Shaders Plugin

A very simple plugin that removes or simplifies shaders that are known to be problematic with certain hardware set-ups.

Currently the following shaders have been modified:
* `love_shaders.circuit()`: refer to https://github.com/naev/naev/issues/2339

#### Installation

Download the zip of the latest version from https://github.com/naev/simple-shaders-plugin/releases/ and place it in your Naev plugins directory. It can be found by going in-game clicking on options, and then going to the plugins tab. The plugins directory should be listed at the top of the window.

#### Updating the Plugin

The plugin is designed as a collection of patches that are applied directly against the original Naev source. By running the `update.sh` script, you should be able to automatically download the necessary source files, patch them, and update this plugin. If the plugin is out of date, feel free to update them and submit a pull request.
