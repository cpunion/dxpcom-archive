/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIClassicPluginFactory.idl
 */

module mozilla.xpcom.nsIClassicPluginFactory;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIPlugin; /* forward declaration */


/* starting interface:    nsIClassicPluginFactory */
const char[] NS_ICLASSICPLUGINFACTORY_IID_STR = "07bfa284-1dd2-11b2-90f8-fef5608e8a56";

const nsIID NS_ICLASSICPLUGINFACTORY_IID= 
  {0x07bfa284, 0x1dd2, 0x11b2, 
    [ 0x90, 0xf8, 0xfe, 0xf5, 0x60, 0x8e, 0x8a, 0x56 ]};

extern(Windows)
interface nsIClassicPluginFactory : nsISupports {
  static const char[] IID_STR = NS_ICLASSICPLUGINFACTORY_IID_STR;
  static const nsIID IID = NS_ICLASSICPLUGINFACTORY_IID;

  /**
  * A factory method for constructing 4.x plugins. 
  * Constructs and initializes an ns4xPlugin object
  */
  /* void createPlugin (in nsIServiceManagerObsolete aServiceMgr, in string aFileName, in string aFullPath, in PRLibraryPtr aLibrary, out nsIPlugin aResult); */
  nsresult CreatePlugin(nsIServiceManagerObsolete aServiceMgr, char *aFileName, char *aFullPath, PRLibrary * aLibrary, nsIPlugin *aResult);

}

