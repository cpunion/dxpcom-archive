/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPalmSyncSupport.idl
 */

module mozilla.dxpcom.nsIPalmSyncSupportD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPalmSyncSupport;


public import mozilla.dxpcom.nsIPalmSyncSupportD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIPalmSyncSupport */
/**
 * This interface provides support for registering Mozilla as a COM component
 * for enabling Palm-Mozilla Address Book (and also other when implemented) Synchronization
 * 
 */
class nsIPalmSyncSupportD : public nsISupportsD {

  static const nsIID IID = NS_IPALMSYNCSUPPORT_IID;


  alias nsIPalmSyncSupport InnerType;

  this(nsIPalmSyncSupport intr){
    super(intr);
    this.inner = intr;
  }

  nsIPalmSyncSupport opCast() {
    return inner;
  }

  void opAssign(nsIPalmSyncSupport value) {
    inner = value;
  }

  /** Initiates PalmSync support
    */
  /* void initializePalmSyncSupport (); */
  void InitializePalmSyncSupport(){
    nsresult __result = inner.InitializePalmSyncSupport();
    CheckException(__result);
  }

  /** Register the PalmSync COM interface for IPC
     * This is called only once from the installer
     */
  /* void registerPalmSync (); */
  void RegisterPalmSync(){
    nsresult __result = inner.RegisterPalmSync();
    CheckException(__result);
  }

  /** Unregister the PalmSync COM interface for IPC
     * This is called only once from the installer
     */
  /* void unRegisterPalmSync (); */
  void UnRegisterPalmSync(){
    nsresult __result = inner.UnRegisterPalmSync();
    CheckException(__result);
  }

  /**  Shuts down the PalmSync support
    */
  /* void shutdownPalmSyncSupport (); */
  void ShutdownPalmSyncSupport(){
    nsresult __result = inner.ShutdownPalmSyncSupport();
    CheckException(__result);
  }

private:
  nsIPalmSyncSupport inner;

}

