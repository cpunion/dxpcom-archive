/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIComponentManagerObsolete.idl
 */

module mozilla.xpcom.nsIComponentManagerObsolete;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIFactory;

public import mozilla.xpcom.nsIFile; /* forward declaration */

public import mozilla.xpcom.nsIEnumerator; /* forward declaration */


/* starting interface:    nsIComponentManagerObsolete */
const char[] NS_ICOMPONENTMANAGEROBSOLETE_IID_STR = "8458a740-d5dc-11d2-92fb-00e09805570f";

const nsIID NS_ICOMPONENTMANAGEROBSOLETE_IID= 
  {0x8458a740, 0xd5dc, 0x11d2, 
    [ 0x92, 0xfb, 0x00, 0xe0, 0x98, 0x05, 0x57, 0x0f ]};

extern(Windows)
interface nsIComponentManagerObsolete : nsISupports {
  static const char[] IID_STR = NS_ICOMPONENTMANAGEROBSOLETE_IID_STR;
  static const nsIID IID = NS_ICOMPONENTMANAGEROBSOLETE_IID;

  /**
     * findFactory
     *
     * Returns the factory object that can be used to create instances of
     * CID aClass
     *
     * @param aClass The classid of the factory that is being requested
     */
  /* nsIFactory findFactory (in nsCIDRef aClass); */
  nsresult FindFactory(nsCID * aClass, nsIFactory *_retval);

  /**
     * getClassObject
     *
     * @param aClass : CID of the class whose class object is requested
     * @param aIID : IID of an interface that the class object is known to
     *               to implement. nsISupports and nsIFactory are known to
     *               be implemented by the class object.
     */
  /* [noscript] voidPtr getClassObject (in nsCIDRef aClass, in nsIIDRef aIID); */
  nsresult GetClassObject(nsCID * aClass, nsIID * aIID, void * *_retval);

  /**
     * contractIDToClassID
     *
     * Get the ClassID for a given ContractID. Many ClassIDs may implement a
     * ContractID. In such a situation, this returns the preferred ClassID, which
     * happens to be the last registered ClassID.
     * 
     * @param aContractID : Contractid for which ClassID is requested
     * @return aClass : ClassID return
     */
  /* [notxpcom] nsresult contractIDToClassID (in string aContractID, out nsCID aClass); */
  nsresult ContractIDToClassID(char *aContractID, nsCID *aClass);

  /**
     * classIDToContractid
     *
     * Get the ContractID for a given ClassID. A ClassIDs may implement multiple
     * ContractIDs. This function return the last registered ContractID.
     *
     * @param aClass : ClassID for which ContractID is requested.
     * @return aClassName : returns class name asssociated with aClass
     * @return : ContractID last registered for aClass
     */
  /* string CLSIDToContractID (in nsCIDRef aClass, out string aClassName); */
  nsresult CLSIDToContractID(nsCID * aClass, char **aClassName, char **_retval);

  /**
     * createInstance
     *
     * Create an instance of the CID aClass and return the interface aIID.
     *
     * @param aClass : ClassID of object instance requested
     * @param aDelegate : Used for aggregation
     * @param aIID : IID of interface requested
     */
  /* [noscript] voidPtr createInstance (in nsCIDRef aClass, in nsISupports aDelegate, in nsIIDRef aIID); */
  nsresult CreateInstance(nsCID * aClass, nsISupports aDelegate, nsIID * aIID, void * *_retval);

  /**
     * createInstanceByContractID
     *
     * Create an instance of the CID that implements aContractID and return the
     * interface aIID. This is a convenience function that effectively does
     * ContractIDToClassID() followed by CreateInstance().
     *
     * @param aContractID : aContractID of object instance requested
     * @param aDelegate : Used for aggregation
     * @param aIID : IID of interface requested
     */
  /* [noscript] voidPtr createInstanceByContractID (in string aContractID, in nsISupports aDelegate, in nsIIDRef IID); */
  nsresult CreateInstanceByContractID(char *aContractID, nsISupports aDelegate, nsIID * IID, void * *_retval);

  /**
     * registryLocationForSpec
     *
     * Given a file specification, return the registry representation of
     * the filename. Files that are found relative to the components
     * directory will have a registry representation
     * "rel:<relative-native-path>" while filenames that are not, will have
     * "abs:<full-native-path>".
     */
  /* string registryLocationForSpec (in nsIFile aSpec); */
  nsresult RegistryLocationForSpec(nsIFile aSpec, char **_retval);

  /**
     * specForRegistyLocation
     *
     * Create a file specification for the registry representation (rel:/abs:)
     * got via registryLocationForSpec.
     */
  /* nsIFile specForRegistryLocation (in string aLocation); */
  nsresult SpecForRegistryLocation(char *aLocation, nsIFile *_retval);

  /**
     * registerFactory
     *
     * Register a factory and ContractID associated with CID aClass
     *
     * @param aClass : CID of object
     * @param aClassName : Class Name of CID
     * @param aContractID : ContractID associated with CID aClass
     * @param aFactory : Factory that will be registered for CID aClass
     * @param aReplace : Boolean that indicates whether to replace a previous
     *                   registration for the CID aClass.
     */
  /* void registerFactory (in nsCIDRef aClass, in string aClassName, in string aContractID, in nsIFactory aFactory, in boolean aReplace); */
  nsresult RegisterFactory(nsCID * aClass, char *aClassName, char *aContractID, nsIFactory aFactory, PRBool aReplace);

  /**
     * registerComponent
     *
     * Register a native dll module via its registry representation as returned
     * by registryLocationForSpec() as the container of CID implemenation
     * aClass and associate aContractID and aClassName to the CID aClass. Native
     * dll component type is assumed.
     *
     * @param aClass : CID implemenation contained in module
     * @param aClassName : Class name associated with CID aClass
     * @param aContractID : ContractID associated with CID aClass
     * @param aLocation : Location of module (dll). Format of this is the
     *                    registry representation as returned by
     *                    registryLocationForSpec()
     * @param aReplace : Boolean that indicates whether to replace a previous
     *                   module registration for aClass.
     * @param aPersist : Remember this registration across sessions.
     */
  /* void registerComponent (in nsCIDRef aClass, in string aClassName, in string aContractID, in string aLocation, in boolean aReplace, in boolean aPersist); */
  nsresult RegisterComponent(nsCID * aClass, char *aClassName, char *aContractID, char *aLocation, PRBool aReplace, PRBool aPersist);

  /**
     * registerComponentWithType
     *
     * Register a module's location via its registry representation
     * as returned by registryLocationForSpec() as the container of CID implemenation
     * aClass of type aType and associate aContractID and aClassName to the CID aClass.
     *
     * @param aClass : CID implemenation contained in module
     * @param aClassName : Class name associated with CID aClass
     * @param aContractID : ContractID associated with CID aClass
     * @param aSpec : Filename spec for module's location.
     * @param aLocation : Location of module of type aType. Format of this string
     *                    is the registry representation as returned by
     *                    registryLocationForSpec()
     * @param aReplace : Boolean that indicates whether to replace a previous
     *                   loader registration for aClass.
     * @param aPersist : Remember this registration across sessions.
     * @param aType : Component Type of CID aClass.
     */
  /* void registerComponentWithType (in nsCIDRef aClass, in string aClassName, in string aContractID, in nsIFile aSpec, in string aLocation, in boolean aReplace, in boolean aPersist, in string aType); */
  nsresult RegisterComponentWithType(nsCID * aClass, char *aClassName, char *aContractID, nsIFile aSpec, char *aLocation, PRBool aReplace, PRBool aPersist, char *aType);

  /**
     * registerComponentSpec
     *
     * Register a native dll module via its file specification as the container
     * of CID implemenation aClass and associate aContractID and aClassName to the
     * CID aClass. Native dll component type is assumed.
     *
     * @param aClass : CID implemenation contained in module
     * @param aClassName : Class name associated with CID aClass
     * @param aContractID : ContractID associated with CID aClass
     * @param aLibrary : File specification Location of module (dll).
     * @param aReplace : Boolean that indicates whether to replace a previous
     *                   module registration for aClass.
     * @param aPersist : Remember this registration across sessions.
     */
  /* void registerComponentSpec (in nsCIDRef aClass, in string aClassName, in string aContractID, in nsIFile aLibrary, in boolean aReplace, in boolean aPersist); */
  nsresult RegisterComponentSpec(nsCID * aClass, char *aClassName, char *aContractID, nsIFile aLibrary, PRBool aReplace, PRBool aPersist);

  /**
     * registerComponentLib
     *
     * Register a native dll module via its dll name (not full path) as the
     * container of CID implemenation aClass and associate aContractID and aClassName
     * to the CID aClass. Native dll component type is assumed and the system
     * services will be used to load this dll.
     *
     * @param aClass : CID implemenation contained in module
     * @param aClassName : Class name associated with CID aClass
     * @param aContractID : ContractID associated with CID aClass
     * @param aDllNameLocation : Dll name of module.
     * @param aReplace : Boolean that indicates whether to replace a previous
     *                   module registration for aClass.
     * @param aPersist : Remember this registration across sessions.
     */
  /* void registerComponentLib (in nsCIDRef aClass, in string aClassName, in string aContractID, in string aDllName, in boolean aReplace, in boolean aPersist); */
  nsresult RegisterComponentLib(nsCID * aClass, char *aClassName, char *aContractID, char *aDllName, PRBool aReplace, PRBool aPersist);

  /**
     * unregisterFactory
     *
     * Unregister a factory associated with CID aClass.
     *
     * @param aClass : ClassID being unregistered
     * @param aFactory : Factory previously registered to create instances of
     *                   ClassID aClass.
     */
  /* void unregisterFactory (in nsCIDRef aClass, in nsIFactory aFactory); */
  nsresult UnregisterFactory(nsCID * aClass, nsIFactory aFactory);

  /**
     * unregisterComponent
     *
     * Disassociate module aLocation represented as registry location as returned
     * by registryLocationForSpec() as containing ClassID aClass.
     *
     * @param aClass : ClassID being unregistered
     * @param aLocation : Location of module. Format of this is the registry
     *                    representation as returned by registryLocationForSpec().
     *                    Components of any type will be unregistered.
     */
  /* void unregisterComponent (in nsCIDRef aClass, in string aLocation); */
  nsresult UnregisterComponent(nsCID * aClass, char *aLocation);

  /**
     * unregisterComponentSpec
     *
     * Disassociate module references by file specification aLibrarySpec as
     * containing ClassID aClass.
     */
  /* void unregisterComponentSpec (in nsCIDRef aClass, in nsIFile aLibrarySpec); */
  nsresult UnregisterComponentSpec(nsCID * aClass, nsIFile aLibrarySpec);

  /**
     * freeLibraries
     *
     * Enumerates all loaded modules and unloads unused modules.
     */
  /* void freeLibraries (); */
  nsresult FreeLibraries();

  /**
     * ID values for 'when'
     */
  enum { NS_Startup = 0 };

  enum { NS_Script = 1 };

  enum { NS_Timer = 2 };

  enum { NS_Shutdown = 3 };

  /**
     * autoRegister
     *
     * Enumerates directory looking for modules of all types and registers
     * modules who have changed (modtime or size) since the last time
     * autoRegister() was invoked.
     *
     * @param when : ID values of when the call is being made.
     * @param directory : Directory the will be enumerated.
     */
  /* void autoRegister (in long when, in nsIFile directory); */
  nsresult AutoRegister(PRInt32 when, nsIFile directory);

  /**
     * autoRegisterComponent
     *
     * Loads module using appropriate loader and gives it an opportunity to
     * register its CIDs if module's modtime or size changed since the last
     * time this was called.
     *
     * @param when : ID values of when the call is being made.
     * @param aFileLocation : File specification of module.
     */
  /* void autoRegisterComponent (in long when, in nsIFile aFileLocation); */
  nsresult AutoRegisterComponent(PRInt32 when, nsIFile aFileLocation);

  /**
     * autoUnregisterComponent
     *
     * Loads module using approriate loader and gives it an opportunity to
     * unregister its CIDs
     */
  /* void autoUnregisterComponent (in long when, in nsIFile aFileLocation); */
  nsresult AutoUnregisterComponent(PRInt32 when, nsIFile aFileLocation);

  /**
     * isRegistered
     *
     * Returns true if a factory or module is registered for CID aClass.
     *
     * @param aClass : ClassID queried for registeration
     * @return : true if a factory or module is registered for CID aClass.
     *           false otherwise.
     */
  /* boolean isRegistered (in nsCIDRef aClass); */
  nsresult IsRegistered(nsCID * aClass, PRBool *_retval);

  /**
     * enumerateCLSIDs
     *
     * Enumerate the list of all registered ClassIDs.
     *
     * @return : enumerator for ClassIDs.
     */
  /* nsIEnumerator enumerateCLSIDs (); */
  nsresult EnumerateCLSIDs(nsIEnumerator *_retval);

  /**
     * enumerateContractIDs
     *
     * Enumerate the list of all registered ContractIDs.
     *
     * @return : enumerator for ContractIDs.
     */
  /* nsIEnumerator enumerateContractIDs (); */
  nsresult EnumerateContractIDs(nsIEnumerator *_retval);

}

