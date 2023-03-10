/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIComponentManagerObsolete.idl
 */

module mozilla.dxpcom.nsIComponentManagerObsoleteD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIComponentManagerObsolete;


public import mozilla.dxpcom.nsIComponentManagerObsoleteD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIFactory;
public import mozilla.dxpcom.nsIFactoryD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;

public import mozilla.xpcom.nsIEnumerator;

public import mozilla.dxpcom.nsIEnumeratorD;


/* starting wrapper class:    nsIComponentManagerObsolete */
class nsIComponentManagerObsoleteD : public nsISupportsD {

  static const nsIID IID = NS_ICOMPONENTMANAGEROBSOLETE_IID;


  alias nsIComponentManagerObsolete InnerType;

  this(nsIComponentManagerObsolete intr){
    super(intr);
    this.inner = intr;
  }

  nsIComponentManagerObsolete opCast() {
    return inner;
  }

  void opAssign(nsIComponentManagerObsolete value) {
    inner = value;
  }

  /**
     * findFactory
     *
     * Returns the factory object that can be used to create instances of
     * CID aClass
     *
     * @param aClass The classid of the factory that is being requested
     */
  /* nsIFactory findFactory (in nsCIDRef aClass); */
  nsIFactoryD  FindFactory(nsCID * aClass){
    nsIFactory _retval;
    nsresult __result = inner.FindFactory(aClass, &_retval);
    CheckException(__result);
    return new nsIFactoryD(_retval);
  }

  /**
     * getClassObject
     *
     * @param aClass : CID of the class whose class object is requested
     * @param aIID : IID of an interface that the class object is known to
     *               to implement. nsISupports and nsIFactory are known to
     *               be implemented by the class object.
     */
  /* [noscript] voidPtr getClassObject (in nsCIDRef aClass, in nsIIDRef aIID); */
  void * GetClassObject(nsCID * aClass, nsIID * aIID){
void * _retval;
    nsresult __result = inner.GetClassObject(aClass, aIID, &_retval);
    CheckException(__result);
    return _retval;
  }

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
  nsresult ContractIDToClassID(char*aContractID, out nsCID aClass){
    nsresult _retval;
    _retval = inner.ContractIDToClassID(aContractID, &aClass);

    return _retval;
  }

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
  char* CLSIDToContractID(nsCID * aClass, out char*aClassName){
    char* _retval;
    nsresult __result = inner.CLSIDToContractID(aClass, &aClassName, &_retval);
    CheckException(__result);
    return _retval;
  }

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
  void * CreateInstance(nsCID * aClass, nsISupportsD aDelegate, nsIID * aIID){
void * _retval;
    nsresult __result = inner.CreateInstance(aClass, aDelegate ? cast(nsISupports)aDelegate : null, aIID, &_retval);
    CheckException(__result);
    return _retval;
  }

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
  void * CreateInstanceByContractID(char*aContractID, nsISupportsD aDelegate, nsIID * IID){
void * _retval;
    nsresult __result = inner.CreateInstanceByContractID(aContractID, aDelegate ? cast(nsISupports)aDelegate : null, IID, &_retval);
    CheckException(__result);
    return _retval;
  }

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
  char* RegistryLocationForSpec(nsIFileD aSpec){
    char* _retval;
    nsresult __result = inner.RegistryLocationForSpec(aSpec ? cast(nsIFile)aSpec : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * specForRegistyLocation
     *
     * Create a file specification for the registry representation (rel:/abs:)
     * got via registryLocationForSpec.
     */
  /* nsIFile specForRegistryLocation (in string aLocation); */
  nsIFileD  SpecForRegistryLocation(char*aLocation){
    nsIFile _retval;
    nsresult __result = inner.SpecForRegistryLocation(aLocation, &_retval);
    CheckException(__result);
    return new nsIFileD(_retval);
  }

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
  void RegisterFactory(nsCID * aClass, char*aClassName, char*aContractID, nsIFactoryD aFactory, PRBool aReplace){
    nsresult __result = inner.RegisterFactory(aClass, aClassName, aContractID, aFactory ? cast(nsIFactory)aFactory : null, aReplace);
    CheckException(__result);
  }

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
  void RegisterComponent(nsCID * aClass, char*aClassName, char*aContractID, char*aLocation, PRBool aReplace, PRBool aPersist){
    nsresult __result = inner.RegisterComponent(aClass, aClassName, aContractID, aLocation, aReplace, aPersist);
    CheckException(__result);
  }

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
  void RegisterComponentWithType(nsCID * aClass, char*aClassName, char*aContractID, nsIFileD aSpec, char*aLocation, PRBool aReplace, PRBool aPersist, char*aType){
    nsresult __result = inner.RegisterComponentWithType(aClass, aClassName, aContractID, aSpec ? cast(nsIFile)aSpec : null, aLocation, aReplace, aPersist, aType);
    CheckException(__result);
  }

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
  void RegisterComponentSpec(nsCID * aClass, char*aClassName, char*aContractID, nsIFileD aLibrary, PRBool aReplace, PRBool aPersist){
    nsresult __result = inner.RegisterComponentSpec(aClass, aClassName, aContractID, aLibrary ? cast(nsIFile)aLibrary : null, aReplace, aPersist);
    CheckException(__result);
  }

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
  void RegisterComponentLib(nsCID * aClass, char*aClassName, char*aContractID, char*aDllName, PRBool aReplace, PRBool aPersist){
    nsresult __result = inner.RegisterComponentLib(aClass, aClassName, aContractID, aDllName, aReplace, aPersist);
    CheckException(__result);
  }

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
  void UnregisterFactory(nsCID * aClass, nsIFactoryD aFactory){
    nsresult __result = inner.UnregisterFactory(aClass, aFactory ? cast(nsIFactory)aFactory : null);
    CheckException(__result);
  }

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
  void UnregisterComponent(nsCID * aClass, char*aLocation){
    nsresult __result = inner.UnregisterComponent(aClass, aLocation);
    CheckException(__result);
  }

  /**
     * unregisterComponentSpec
     *
     * Disassociate module references by file specification aLibrarySpec as
     * containing ClassID aClass.
     */
  /* void unregisterComponentSpec (in nsCIDRef aClass, in nsIFile aLibrarySpec); */
  void UnregisterComponentSpec(nsCID * aClass, nsIFileD aLibrarySpec){
    nsresult __result = inner.UnregisterComponentSpec(aClass, aLibrarySpec ? cast(nsIFile)aLibrarySpec : null);
    CheckException(__result);
  }

  /**
     * freeLibraries
     *
     * Enumerates all loaded modules and unloads unused modules.
     */
  /* void freeLibraries (); */
  void FreeLibraries(){
    nsresult __result = inner.FreeLibraries();
    CheckException(__result);
  }

  /**
     * ID values for 'when'
     */
  enum { NS_Startup = 0 }

  enum { NS_Script = 1 }

  enum { NS_Timer = 2 }

  enum { NS_Shutdown = 3 }

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
  void AutoRegister(PRInt32 when, nsIFileD directory){
    nsresult __result = inner.AutoRegister(when, directory ? cast(nsIFile)directory : null);
    CheckException(__result);
  }

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
  void AutoRegisterComponent(PRInt32 when, nsIFileD aFileLocation){
    nsresult __result = inner.AutoRegisterComponent(when, aFileLocation ? cast(nsIFile)aFileLocation : null);
    CheckException(__result);
  }

  /**
     * autoUnregisterComponent
     *
     * Loads module using approriate loader and gives it an opportunity to
     * unregister its CIDs
     */
  /* void autoUnregisterComponent (in long when, in nsIFile aFileLocation); */
  void AutoUnregisterComponent(PRInt32 when, nsIFileD aFileLocation){
    nsresult __result = inner.AutoUnregisterComponent(when, aFileLocation ? cast(nsIFile)aFileLocation : null);
    CheckException(__result);
  }

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
  PRBool IsRegistered(nsCID * aClass){
    PRBool _retval;
    nsresult __result = inner.IsRegistered(aClass, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * enumerateCLSIDs
     *
     * Enumerate the list of all registered ClassIDs.
     *
     * @return : enumerator for ClassIDs.
     */
  /* nsIEnumerator enumerateCLSIDs (); */
  nsIEnumeratorD  EnumerateCLSIDs(){
    nsIEnumerator _retval;
    nsresult __result = inner.EnumerateCLSIDs(&_retval);
    CheckException(__result);
    return new nsIEnumeratorD(_retval);
  }

  /**
     * enumerateContractIDs
     *
     * Enumerate the list of all registered ContractIDs.
     *
     * @return : enumerator for ContractIDs.
     */
  /* nsIEnumerator enumerateContractIDs (); */
  nsIEnumeratorD  EnumerateContractIDs(){
    nsIEnumerator _retval;
    nsresult __result = inner.EnumerateContractIDs(&_retval);
    CheckException(__result);
    return new nsIEnumeratorD(_retval);
  }

private:
  nsIComponentManagerObsolete inner;

}

