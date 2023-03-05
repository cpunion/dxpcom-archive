/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIClassicPluginFactory.idl
 */

module mozilla.dxpcom.nsIClassicPluginFactoryD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIClassicPluginFactory;


public import mozilla.dxpcom.nsIClassicPluginFactoryD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIPlugin;

public import mozilla.dxpcom.nsIPluginD;


/* starting wrapper class:    nsIClassicPluginFactory */
class nsIClassicPluginFactoryD : public nsISupportsD {

  static const nsIID IID = NS_ICLASSICPLUGINFACTORY_IID;


  alias nsIClassicPluginFactory InnerType;

  this(nsIClassicPluginFactory intr){
    super(intr);
    this.inner = intr;
  }

  nsIClassicPluginFactory opCast() {
    return inner;
  }

  void opAssign(nsIClassicPluginFactory value) {
    inner = value;
  }

  /**
  * A factory method for constructing 4.x plugins. 
  * Constructs and initializes an ns4xPlugin object
  */
  /* void createPlugin (in nsIServiceManagerObsolete aServiceMgr, in string aFileName, in string aFullPath, in PRLibraryPtr aLibrary, out nsIPlugin aResult); */
  void CreatePlugin(nsIServiceManagerObsoleteD aServiceMgr, char*aFileName, char*aFullPath, PRLibrary * aLibrary, out nsIPluginD aResult){
    nsIPlugin _aResult;
    nsresult __result = inner.CreatePlugin(aServiceMgr ? cast(nsIServiceManagerObsolete)aServiceMgr : null, aFileName, aFullPath, aLibrary, &_aResult);
    CheckException(__result);
    aResult = _aResult ? new nsIPluginD(_aResult) : null;
  }

private:
  nsIClassicPluginFactory inner;

}

