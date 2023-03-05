import mozilla.xpcom.nsXPCOM;
import mozilla.dxpcom.nsXPCOM : CheckException;
import mozilla.xpcom.nsILocalFile;
import mozilla.xpcom.nsIComponentManager;
import mozilla.xpcom.nsISupports;
import mozilla.dxpcom.StringAPI;
import mozilla.dxpcom.QueryInterface;
import std.string;
import std.stdio;

void main(char[][] args) {
	if (args.length < 2) {
		writefln("USAGE: %s files...", args[0]);
		return;
	}

	nsIComponentManager componentManager;

	nsresult result;
	result = NS_InitXPCOM2(null, null, null);
	CheckException(result);

	result = NS_GetComponentManager(&componentManager);
	CheckException(result);

	nsILocalFile ifile = null;
	result = componentManager.CreateInstanceByContractID(
		"@mozilla.org/file/local;1",
		null,
		&NS_ILOCALFILE_IID,
		cast(void**)&ifile
		);
	CheckException(result);
	
	foreach(file; args[1..$]) {
		scope AString str = new AString(std.utf.toUTF16(file));
		result = ifile.InitWithPath(cast(nsAString*)str);
		CheckException(result);

		long filesize;
		result = ifile.GetFileSize(&filesize);
		CheckException(result);
		writefln("File %s size: %d", file, filesize);
	}

	result = NS_ShutdownXPCOM(null);
	CheckException(result);
}

