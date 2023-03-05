/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIComponentLoader.idl
 */

module mozilla.dxpcom.nsIComponentLoaderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIComponentLoader;


public import mozilla.dxpcom.nsIComponentLoaderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIFactory;
public import mozilla.dxpcom.nsIFactoryD;
public import mozilla.xpcom.nsIFile;
public import mozilla.dxpcom.nsIFileD;
public import mozilla.xpcom.nsIComponentManager;
public import mozilla.dxpcom.nsIComponentManagerD;


/* starting wrapper class:    nsIComponentLoader */
class nsIComponentLoaderD : public nsISupportsD {

  static const nsIID IID = NS_ICOMPONENTLOADER_IID;


  alias nsIComponentLoader InnerType;

  this(nsIComponentLoader intr){
    super(intr);
    this.inner = intr;
  }

  nsIComponentLoader opCast() {
    return inner;
  }

  void opAssign(nsIComponentLoader value) {
    inner = value;
  }

  /**
     * Get the factory for a given component.
     */
  /* nsIFactory getFactory (in nsIIDRef aCID, in string aLocation, in string aType); */
  nsIFactoryD  GetFactory(nsIID * aCID, char*aLocation, char*aType){
    nsIFactory _retval;
    nsresult __result = inner.GetFactory(aCID, aLocation, aType, &_retval);
    CheckException(__result);
    return new nsIFactoryD(_retval);
  }

  /**
     * Initialize the loader.
     *
     * We use nsISupports here because nsIRegistry isn't IDLized yet.
     */
  /* void init (in nsIComponentManager aCompMgr, in nsISupports aRegistry); */
  void Init(nsIComponentManagerD aCompMgr, nsISupportsD aRegistry){
    nsresult __result = inner.Init(aCompMgr ? cast(nsIComponentManager)aCompMgr : null, aRegistry ? cast(nsISupports)aRegistry : null);
    CheckException(__result);
  }

  /**
     * Called when a component of the appropriate type is registered,
     * to give the component loader an opportunity to do things like
     * annotate the registry and such.
     */
  /* void onRegister (in nsIIDRef aCID, in string aType, in string aClassName, in string aContractID, in string aLocation, in boolean aReplace, in boolean aPersist); */
  void OnRegister(nsIID * aCID, char*aType, char*aClassName, char*aContractID, char*aLocation, PRBool aReplace, PRBool aPersist){
    nsresult __result = inner.OnRegister(aCID, aType, aClassName, aContractID, aLocation, aReplace, aPersist);
    CheckException(__result);
  }

  /**
     * When is AutoRegistration occuring?
     */
  enum { Startup = 0 }

  enum { Component = 1 }

  enum { Timer = 2 }

  /**
     * AutoRegister components in the given directory.
     */
  /* void autoRegisterComponents (in long aWhen, in nsIFile aDirectory); */
  void AutoRegisterComponents(PRInt32 aWhen, nsIFileD aDirectory){
    nsresult __result = inner.AutoRegisterComponents(aWhen, aDirectory ? cast(nsIFile)aDirectory : null);
    CheckException(__result);
  }

  /**
     * AutoRegister the given component.
     *
     * Returns true if the component was registered, false if it couldn't
     * attempt to register the component (wrong type) and ``throws'' an
     * NS_FAILED code if there was an error during registration.
     */
  /* boolean autoRegisterComponent (in long aWhen, in nsIFile aComponent); */
  PRBool AutoRegisterComponent(PRInt32 aWhen, nsIFileD aComponent){
    PRBool _retval;
    nsresult __result = inner.AutoRegisterComponent(aWhen, aComponent ? cast(nsIFile)aComponent : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * AutoUnregister the given component.
     * Returns true if the component was unregistered, false if it coudln't
     * attempt to unregister the component (not found, wrong type).
     */
  /* boolean autoUnregisterComponent (in long aWhen, in nsIFile aComponent); */
  PRBool AutoUnregisterComponent(PRInt32 aWhen, nsIFileD aComponent){
    PRBool _retval;
    nsresult __result = inner.AutoUnregisterComponent(aWhen, aComponent ? cast(nsIFile)aComponent : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Register any deferred (NS_ERROR_FACTORY_REGISTER_AGAIN) components.
     * Return registered-any-components?
     */
  /* boolean registerDeferredComponents (in long aWhen); */
  PRBool RegisterDeferredComponents(PRInt32 aWhen){
    PRBool _retval;
    nsresult __result = inner.RegisterDeferredComponents(aWhen, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Unload all components that are willing.
     */
  /* void unloadAll (in long aWhen); */
  void UnloadAll(PRInt32 aWhen){
    nsresult __result = inner.UnloadAll(aWhen);
    CheckException(__result);
  }

private:
  nsIComponentLoader inner;

}

