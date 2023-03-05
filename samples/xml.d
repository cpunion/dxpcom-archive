import mozilla.xpcom.nsXPCOM;
import mozilla.xpcom.nsIDOMParser;
import mozilla.xpcom.nsIComponentManager;
import mozilla.dxpcom.StringAPI;
import mozilla.dxpcom.QueryInterface;
import std.string;
import std.stdio;

void main(char[][] args)
{
	nsIComponentManager componentManager;

	nsresult result;
	result = NS_InitXPCOM2(null, null, null);

	result = NS_GetComponentManager(&componentManager);

	nsIDOMParser parser = null;
	result = componentManager.CreateInstanceByContractID(
		"@mozilla.org/xmlextras/domparser;1",
		null,
		&NS_IDOMPARSER_IID,
		cast(void**)&parser
		);

	writefln("%d", cast(void*)parser);
	if (result != 0)
		throw new Exception("Create instance by contaceID fail");

	wchar[] xml = "
<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>
<!-- Copyright 1981-2001 Microsoft Corporation -->
<assembly xmlns=\"urn:schemas-microsoft-com:asm.v1\" manifestVersion=\"1.0\">
    <noInheritable/>
    <assemblyIdentity 
        type=\"win32\" 
        name=\"Microsoft.VC80.CRT\" 
        version=\"8.0.50608.0\" 
        processorArchitecture=\"x86\" 
        publicKeyToken=\"1fc8b3b9a1e18e3b\"
    />
    <file name=\"msvcr80.dll\"/>
    <file name=\"msvcp80.dll\"/>
    <file name=\"msvcm80.dll\"/>
</assembly>\0"w;

	nsIDOMDocument doc;
	result = parser.ParseFromString(cast(PRUnichar*)xml, cast(char*)"text/xml\0", &doc);
	if (result != 0)
		throw new Exception("Parse from string fail");


	result = NS_ShutdownXPCOM(null);
	writefln(result);
}

