## vscode-per-namespace-settings
This repo builds an InterSystems Package Manager (IPM) package that creates the `/_vscode` IRIS web application which the [VS Code InterSystems ObjectScript](https://github.com/intersystems-community/vscode-objectscript) extension can use to store namespace-specific settings, snippets, debug configurations etc when operating in server-side editing mode.

## What's inside the repo

# module.xml

This file describes project to be installed as package in InterSystems Package Manager. You can test your module.xml with following commands:
```
// load the source code of the package as it is described in module.xml
IRISAPP:zpm>load /home/irisowner/dev
// run the package installer test
IRISAPP:zpm>vscode-per-namespace-settings package -v
```
