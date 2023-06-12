Class %Z.IPM.Bootstraps.Main
{

/// Create the /_vscode web app for the %SYS namespace if it does not already exist
ClassMethod CreateWebApp(pSourcePath) As %Status
{
	set sc = $$$OK
	new $namespace
	set $namespace = "%SYS"
	if ('##class(Security.Applications).Exists("/_vscode")) {
		set prop("Path") = $system.Util.InstallDirectory()_".vscode"
		if ('##class(%Library.File).DirectoryExists(prop("Path"))) {
			set sc=##class(%Library.File).CopyDir(pSourcePath, prop("Path"))
		}
		set prop("AutheEnabled") = 32
		set prop("AutoCompile") = 0
		set prop("Description") = "Storage for namespace-specific VS Code settings, snippets, debug configurations etc."
		set prop("NameSpace") = "%SYS"
		set sc=##class(Security.Applications).Create("/_vscode",.prop)
	}
	return sc
}

}
