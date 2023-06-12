# vscode-per-namespace-settings
This repo builds an InterSystems Package Manager (IPM) package that creates the `/_vscode` IRIS web application which the [VS Code InterSystems ObjectScript](https://github.com/intersystems-community/vscode-objectscript) extension can use to store namespace-specific settings, snippets, debug configurations etc when operating in server-side editing mode.

It can be installed from any namespace, as it only adds a web app into the IRIS configuration. For example:

```
USER>zpm "install vscode-per-namespace-settings"
```

## Building, Testing and Publishing

Do this from a terminal session in USER in the IRIS container.
```
USER>zpm
zpm:USER>
```

To test-publish:
```
repo -r -n registry -url https://test.pm.community.intersystems.com/registry/ -user test -pass PassWord42

registry
        Source:                 https://test.pm.community.intersystems.com/registry/
        Enabled?                Yes
        Available?              Yes
        Use for Snapshots?      Yes
        Use for Prereleases?    Yes
        Is Read-Only?           No
        Deployment Enabled?     No
        Username:               test
        Password:               <set>

zpm:USER>vscode-per-namespace-settings publish -Ddelete=
```

To reset to default repo:
```
repo -r -n registry -url https://pm.community.intersystems.com/ -user "" -pass ""
```

To check current repo info:
```
zpm:USER>repo -list
```