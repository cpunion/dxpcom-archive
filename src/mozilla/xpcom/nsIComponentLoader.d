/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIComponentLoader.idl
 */

module mozilla.xpcom.nsIComponentLoader;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIFactory;
public import mozilla.xpcom.nsIFile;
public import mozilla.xpcom.nsIComponentManager;


/* starting interface:    nsIComponentLoader */
const char[] NS_ICOMPONENTLOADER_IID_STR = "c073cfc0-567c-11d3-aec1-0000f8e25c06";

const nsIID NS_ICOMPONENTLOADER_IID= 
  {0xc073cfc0, 0x567c, 0x11d3, 
    [ 0xae, 0xc1, 0x00, 0x00, 0xf8, 0xe2, 0x5c, 0x06 ]};

extern(Windows)
interface nsIComponentLoader : nsISupports {
  static const char[] IID_STR = NS_ICOMPONENTLOADER_IID_STR;
  static const nsIID IID = NS_ICOMPONENTLOADER_IID;

  /**
     * Get the factory for a given component.
     */
  /* nsIFactory getFactory (in nsIIDRef aCID, in string aLocation, in string aType); */
  nsresult GetFactory(nsIID * aCID, char *aLocation, char *aType, nsIFactory *_retval);

  /**
     * Initialize the loader.
     *
     * We use nsISupports here because nsIRegistry isn't IDLized yet.
     */
  /* void init (in nsIComponentManager aCompMgr, in nsISupports aRegistry); */
  nsresult Init(nsIComponentManager aCompMgr, nsISupports aRegistry);

  /**
     * Called when a component of the appropriate type is registered,
     * to give the component loader an opportunity to do things like
     * annotate the registry and such.
     */
  /* void onRegister (in nsIIDRef aCID, in string aType, in string aClassName, in string aContractID, in string aLocation, in boolean aReplace, in boolean aPersist); */
  nsresult OnRegister(nsIID * aCID, char *aType, char *aClassName, char *aContractID, char *aLocation, PRBool aReplace, PRBool aPersist);

  /**
     * When is AutoRegistration occuring?
     */
  enum { Startup = 0 };

  enum { Component = 1 };

  enum { Timer = 2 };

  /**
     * AutoRegister components in the given directory.
     */
  /* void autoRegisterComponents (in long aWhen, in nsIFile aDirectory); */
  nsresult AutoRegisterComponents(PRInt32 aWhen, nsIFile aDirectory);

  /**
     * AutoRegister the given component.
     *
     * Returns true if the component was registered, false if it couldn't
     * attempt to register the component (wrong type) and ``throws'' an
     * NS_FAILED code if there was an error during registration.
     */
  /* boolean autoRegisterComponent (in long aWhen, in nsIFile aComponent); */
  nsresult AutoRegisterComponent(PRInt32 aWhen, nsIFile aComponent, PRBool *_retval);

  /**
     * AutoUnregister the given component.
     * Returns true if the component was unregistered, false if it coudln't
     * attempt to unregister the component (not found, wrong type).
     */
  /* boolean autoUnregisterComponent (in long aWhen, in nsIFile aComponent); */
  nsresult AutoUnregisterComponent(PRInt32 aWhen, nsIFile aComponent, PRBool *_retval);

  /**
     * Register any deferred (NS_ERROR_FACTORY_REGISTER_AGAIN) components.
     * Return registered-any-components?
     */
  /* boolean registerDeferredComponents (in long aWhen); */
  nsresult RegisterDeferredComponents(PRInt32 aWhen, PRBool *_retval);

  /**
     * Unload all components that are willing.
     */
  /* void unloadAll (in long aWhen); */
  nsresult UnloadAll(PRInt32 aWhen);

}

