module mozilla.dxpcom.nsXPCOM;

import mozilla.xpcom.nsError;
import mozilla.xpcom.nsXPCOM;
import mozilla.dxpcom.nsrootidlD;
import mozilla.xpcom.nsIComponentManager;
import mozilla.dxpcom.nsIComponentManagerD;
import mozilla.xpcom.nsIServiceManager;
import mozilla.dxpcom.nsIServiceManagerD;
import mozilla.xpcom.nsIFile;
import mozilla.dxpcom.nsIFileD;
import mozilla.xpcom.nsIDirectoryService;
import mozilla.dxpcom.nsIDirectoryServiceD;
import std.string;

void CheckException(nsresult result) {
	if (result != NS_OK)
		throw new Exception(format("XPCOM Error: %d", result));
}

/*
nsIServiceManagerD InitXPCOM2(nsIFileD binDirectory, nsIDirectoryServiceProviderD appFileLocationProvider) {
	nsIServiceManager serviceManager;
	nsIFile _binDirectory = binDirectory ? cast(nsIFile)binDirectory : null;
	nsIDirectoryServiceProvider _appFileLocationProvider = appFileLocationProvider ? cast(nsIDirectoryServiceProvider)appFileLocationProvider : null;

	nsresult result = NS_InitXPCOM2(
		&serviceManager,
		_binDirectory,
		_appFileLocationProvider);
	CheckException(result);
	return new nsIServiceManagerD(serviceManager);
}
*/

void ShutdownXPCOM(nsIServiceManagerD serviceManager) {
	nsresult result = NS_ShutdownXPCOM(
		serviceManager ? cast(nsIServiceManager)serviceManager : null);
	CheckException(result);
}


nsIComponentManagerD GetComponentManager()
{
	nsIComponentManager componentManager;
	nsresult result = NS_GetComponentManager(&componentManager);
	CheckException(result);
	return new nsIComponentManagerD(componentManager);
}

