/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIExtensionManager.idl
 */

module mozilla.dxpcom.nsIExtensionManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIExtensionManager;


public import mozilla.dxpcom.nsIExtensionManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;


/* starting wrapper class:    nsIExtensionManager */
class nsIExtensionManagerD : public nsISupportsD {

  static const nsIID IID = NS_IEXTENSIONMANAGER_IID;


  alias nsIExtensionManager InnerType;

  this(nsIExtensionManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIExtensionManager opCast() {
    return inner;
  }

  void opAssign(nsIExtensionManager value) {
    inner = value;
  }

  enum { FLAG_INSTALL_PROFILE = 1U }

  /* void installExtension (in nsIFile aXPIFile, in unsigned long aFlags); */
  void InstallExtension(nsIFileD aXPIFile, PRUint32 aFlags){
    nsresult __result = inner.InstallExtension(aXPIFile ? cast(nsIFile)aXPIFile : null, aFlags);
    CheckException(__result);
  }

  /* void installTheme (in nsIFile aJARFile, in unsigned long aFlags); */
  void InstallTheme(nsIFileD aJARFile, PRUint32 aFlags){
    nsresult __result = inner.InstallTheme(aJARFile ? cast(nsIFile)aJARFile : null, aFlags);
    CheckException(__result);
  }

private:
  nsIExtensionManager inner;

}

