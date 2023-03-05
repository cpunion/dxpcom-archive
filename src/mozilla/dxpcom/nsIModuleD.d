/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIModule.idl
 */

module mozilla.dxpcom.nsIModuleD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIModule;


public import mozilla.dxpcom.nsIModuleD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;

public import mozilla.xpcom.nsIComponentManager;

public import mozilla.dxpcom.nsIComponentManagerD;


/* starting wrapper class:    nsIModule */
/**
 * The nsIModule interface.
 * @status FROZEN
 */
class nsIModuleD : public nsISupportsD {

  static const nsIID IID = NS_IMODULE_IID;


  alias nsIModule InnerType;

  this(nsIModule intr){
    super(intr);
    this.inner = intr;
  }

  nsIModule opCast() {
    return inner;
  }

  void opAssign(nsIModule value) {
    inner = value;
  }

  /** 
     * Object Instance Creation
     *
     * Obtains a Class Object from a nsIModule for a given CID and IID pair.  
     * This class object can either be query to a nsIFactory or a may be 
     * query to a nsIClassInfo.
     *
     * @param aCompMgr  : The global component manager
     * @param aClass    : ClassID of object instance requested
     * @param aIID      : IID of interface requested
     * 
     */
  /* void getClassObject (in nsIComponentManager aCompMgr, in nsCIDRef aClass, in nsIIDRef aIID, [iid_is (aIID), retval] out nsQIResult aResult); */
  void GetClassObject(nsIComponentManagerD aCompMgr, nsCID * aClass, nsIID * aIID, out void * aResult){
    nsresult __result = inner.GetClassObject(aCompMgr ? cast(nsIComponentManager)aCompMgr : null, aClass, aIID, &aResult);
    CheckException(__result);
  }

  /**
     * One time registration callback
     *
     * When the nsIModule is discovered, this method will be
     * called so that any setup registration can be preformed.
     *
     * @param aCompMgr  : The global component manager
     * @param aLocation : The location of the nsIModule on disk
     * @param aLoaderStr: Opaque loader specific string
     * @param aType     : Loader Type being used to load this module 
     */
  /* void registerSelf (in nsIComponentManager aCompMgr, in nsIFile aLocation, in string aLoaderStr, in string aType); */
  void RegisterSelf(nsIComponentManagerD aCompMgr, nsIFileD aLocation, char*aLoaderStr, char*aType){
    nsresult __result = inner.RegisterSelf(aCompMgr ? cast(nsIComponentManager)aCompMgr : null, aLocation ? cast(nsIFile)aLocation : null, aLoaderStr, aType);
    CheckException(__result);
  }

  /**
     * One time unregistration callback
     *
     * When the nsIModule is being unregistered, this method will be
     * called so that any unregistration can be preformed
     *
     * @param aCompMgr   : The global component manager
     * @param aLocation  : The location of the nsIModule on disk
     * @param aLoaderStr : Opaque loader specific string
     * 
     */
  /* void unregisterSelf (in nsIComponentManager aCompMgr, in nsIFile aLocation, in string aLoaderStr); */
  void UnregisterSelf(nsIComponentManagerD aCompMgr, nsIFileD aLocation, char*aLoaderStr){
    nsresult __result = inner.UnregisterSelf(aCompMgr ? cast(nsIComponentManager)aCompMgr : null, aLocation ? cast(nsIFile)aLocation : null, aLoaderStr);
    CheckException(__result);
  }

  /** 
    * Module load management
    * 
    * @param aCompMgr  : The global component manager
    *
    * @return indicates to the caller if the module can be unloaded.
    * 		Returning PR_TRUE isn't a guarantee that the module will be
    *		unloaded. It constitues only willingness of the module to be
    *		unloaded.  It is very important to ensure that no outstanding 
    *       references to the module's code/data exist before returning 
    *       PR_TRUE. 
    *		Returning PR_FALSE guaratees that the module wont be unloaded.
    */
  /* boolean canUnload (in nsIComponentManager aCompMgr); */
  PRBool CanUnload(nsIComponentManagerD aCompMgr){
    PRBool _retval;
    nsresult __result = inner.CanUnload(aCompMgr ? cast(nsIComponentManager)aCompMgr : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIModule inner;

}

