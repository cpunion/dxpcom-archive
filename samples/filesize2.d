module test2;

import mozilla.xpcom.nsXPCOM;
import mozilla.dxpcom.nsXPCOM;
import mozilla.dxpcom.nsIComponentManagerD;
import mozilla.dxpcom.StringAPI;
import mozilla.dxpcom.nsILocalFileD;
import std.string;
import std.stdio;

static this() {
	NS_InitXPCOM2(null, null, null);
}

static ~this() {
	ShutdownXPCOM(null);
}

void main(char[][] args) {
	if (args.length < 2) {
		writefln("USAGE: %s files...", args[0]);
		return;
	}

	scope nsIComponentManagerD componentManager = GetComponentManager();
	scope auto ifiled = componentManager.CreateInstanceByContractId!(nsILocalFileD)(
		"@mozilla.org/file/local;1", null);

	foreach(file; args[1..$]) {
		ifiled.InitWithPath(std.utf.toUTF16(file));
		writefln("File %s size: %d", file, ifiled.FileSize);
	}
}

