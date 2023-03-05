/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMapiSupport.idl
 */

module mozilla.dxpcom.nsIMapiSupportD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMapiSupport;


public import mozilla.dxpcom.nsIMapiSupportD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIMapiSupport */
/**
 * This interface provides support for registering Mozilla as a COM component
 * for extending the use of Mail/News through Simple MAPI.
 * 
 */
class nsIMapiSupportD : public nsISupportsD {

  static const nsIID IID = NS_IMAPISUPPORT_IID;


  alias nsIMapiSupport InnerType;

  this(nsIMapiSupport intr){
    super(intr);
    this.inner = intr;
  }

  nsIMapiSupport opCast() {
    return inner;
  }

  void opAssign(nsIMapiSupport value) {
    inner = value;
  }

  /** Initiates MAPI support
    */
  /* void initializeMAPISupport (); */
  void InitializeMAPISupport(){
    nsresult __result = inner.InitializeMAPISupport();
    CheckException(__result);
  }

  /**  Shuts down the MAPI support
    */
  /* void shutdownMAPISupport (); */
  void ShutdownMAPISupport(){
    nsresult __result = inner.ShutdownMAPISupport();
    CheckException(__result);
  }

  /**  registerServer - register the mapi DLL with the desktop
    *   Typically called by the window shell service when we are
    *   made the default mail app
    */
  /* void registerServer (); */
  void RegisterServer(){
    nsresult __result = inner.RegisterServer();
    CheckException(__result);
  }

  /**  unRegisterServer - unregister the mapi DLL with the desktop
    *   Typically called by the window shell service when we are
    *   removed as the default mail app.
    */
  /* void unRegisterServer (); */
  void UnRegisterServer(){
    nsresult __result = inner.UnRegisterServer();
    CheckException(__result);
  }

private:
  nsIMapiSupport inner;

}

