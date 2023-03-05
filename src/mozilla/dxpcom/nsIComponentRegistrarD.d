/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIComponentRegistrar.idl
 */

module mozilla.dxpcom.nsIComponentRegistrarD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIComponentRegistrar;


public import mozilla.dxpcom.nsIComponentRegistrarD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;

public import mozilla.xpcom.nsIFactory;

public import mozilla.dxpcom.nsIFactoryD;

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;


/* starting wrapper class:    nsIComponentRegistrar */
class nsIComponentRegistrarD : public nsISupportsD {

  static const nsIID IID = NS_ICOMPONENTREGISTRAR_IID;


  alias nsIComponentRegistrar InnerType;

  this(nsIComponentRegistrar intr){
    super(intr);
    this.inner = intr;
  }

  nsIComponentRegistrar opCast() {
    return inner;
  }

  void opAssign(nsIComponentRegistrar value) {
    inner = value;
  }

  /**
     * autoRegister
     *
     * Register a component file or all component files in a directory.  
     *
     * Component files must have an associated loader and export the required
     * symbols which this loader defines.  For example, if the given file is a
     * native library (which is built into XPCOM), it must export the symbol 
     * "NSGetModule".  Other loaders may have different semantics.
     *
     * This method may only be called from the main thread.
     * 
     * @param aSpec    : Filename spec for component file's location. If aSpec 
     *                   is a directory, then every component file in the
     *                   directory will be registered.  
     *                   If the aSpec is null, then the application component's
     *                   directory as defined by NS_XPCOM_COMPONENT_DIR will be 
     *                   registered  (see nsIDirectoryService.idl)
     *
     * @return NS_OK   : Registration was successful.
     *         NS_ERROR: Method failure.
     */
  /* void autoRegister (in nsIFile aSpec); */
  void AutoRegister(nsIFileD aSpec){
    nsresult __result = inner.AutoRegister(aSpec ? cast(nsIFile)aSpec : null);
    CheckException(__result);
  }

  /**
     * autoUnregister
     *
     * Unregister a component file or all component files in a directory.  
     * This method may only be called from the main thread.
     *
     * @param aSpec    : Filename spec for component file's location. If aSpec 
     *                   is a directory, the every component file in the directory 
     *                   will be registered.  
     *                   If aSpec is null, then the application component's 
     *                   directory as defined by NS_XPCOM_COMPONENT_DIR will be 
     *                   registered. (see nsIDirectoryService.idl)
     *
     * @return NS_OK     Unregistration was successful.
     *         NS_ERROR* Method failure.
     */
  /* void autoUnregister (in nsIFile aSpec); */
  void AutoUnregister(nsIFileD aSpec){
    nsresult __result = inner.AutoUnregister(aSpec ? cast(nsIFile)aSpec : null);
    CheckException(__result);
  }

  /**
     * registerFactory
     *
     * Register a factory with a given ContractID, CID and Class Name.
     *
     * @param aClass      : CID of object
     * @param aClassName  : Class Name of CID
     * @param aContractID : ContractID associated with CID aClass
     * @param aFactory    : Factory that will be registered for CID aClass
     *
     * @return NS_OK        Registration was successful.
     *         NS_ERROR*    method failure.
     */
  /* void registerFactory (in nsCIDRef aClass, in string aClassName, in string aContractID, in nsIFactory aFactory); */
  void RegisterFactory(nsCID * aClass, char*aClassName, char*aContractID, nsIFactoryD aFactory){
    nsresult __result = inner.RegisterFactory(aClass, aClassName, aContractID, aFactory ? cast(nsIFactory)aFactory : null);
    CheckException(__result);
  }

  /**
     * unregisterFactory
     *
     * Unregister a factory associated with CID aClass.
     *
     * @param aClass   : CID being unregistered
     * @param aFactory : Factory previously registered to create instances of
     *                   CID aClass.
     *
     * @return NS_OK     Unregistration was successful.
     *         NS_ERROR* Method failure.
     */
  /* void unregisterFactory (in nsCIDRef aClass, in nsIFactory aFactory); */
  void UnregisterFactory(nsCID * aClass, nsIFactoryD aFactory){
    nsresult __result = inner.UnregisterFactory(aClass, aFactory ? cast(nsIFactory)aFactory : null);
    CheckException(__result);
  }

  /**
     * registerFactoryLocation
     *
     * Register a factory with a given ContractID, CID and Class Name
     *
     * @param aClass      : CID of object
     * @param aClassName  : Class Name of CID
     * @param aContractID : ContractID associated with CID aClass
     * @param aFile       : Component File. This file must have an associated 
     *                      loader and export the required symbols which this 
     *                      loader specifies.
     * @param aLoaderStr  : Opaque loader specific string.  This value is
     *                      passed into the nsIModule's registerSelf
     *                      callback and must be fowarded unmodified when
     *                      registering factories via their location.
     * @param aType       : Component Type of CID aClass.  This value is
     *                      passed into the nsIModule's registerSelf
     *                      callback and must be fowarded unmodified when
     *                      registering factories via their location.
     *
     * @return NS_OK        Registration was successful.
     *         NS_ERROR*    Method failure.
     */
  /* void registerFactoryLocation (in nsCIDRef aClass, in string aClassName, in string aContractID, in nsIFile aFile, in string aLoaderStr, in string aType); */
  void RegisterFactoryLocation(nsCID * aClass, char*aClassName, char*aContractID, nsIFileD aFile, char*aLoaderStr, char*aType){
    nsresult __result = inner.RegisterFactoryLocation(aClass, aClassName, aContractID, aFile ? cast(nsIFile)aFile : null, aLoaderStr, aType);
    CheckException(__result);
  }

  /**
     * unregisterFactoryLocation
     *
     * Unregister a factory associated with CID aClass.
     *
     * @param aClass   : CID being unregistered
     * @param aFile    : Component File previously registered
     *
     * @return NS_OK     Unregistration was successful.
     *         NS_ERROR* Method failure.
     */
  /* void unregisterFactoryLocation (in nsCIDRef aClass, in nsIFile aFile); */
  void UnregisterFactoryLocation(nsCID * aClass, nsIFileD aFile){
    nsresult __result = inner.UnregisterFactoryLocation(aClass, aFile ? cast(nsIFile)aFile : null);
    CheckException(__result);
  }

  /**
     * isCIDRegistered
     *
     * Returns true if a factory is registered for the CID.
     *
     * @param aClass : CID queried for registeration
     * @return       : true if a factory is registered for CID 
     *                 false otherwise.
     */
  /* boolean isCIDRegistered (in nsCIDRef aClass); */
  PRBool IsCIDRegistered(nsCID * aClass){
    PRBool _retval;
    nsresult __result = inner.IsCIDRegistered(aClass, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * isContractIDRegistered
     *
     * Returns true if a factory is registered for the contract id.
     *
     * @param aClass : contract id queried for registeration
     * @return       : true if a factory is registered for contract id 
     *                 false otherwise.
     */
  /* boolean isContractIDRegistered (in string aContractID); */
  PRBool IsContractIDRegistered(char*aContractID){
    PRBool _retval;
    nsresult __result = inner.IsContractIDRegistered(aContractID, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * enumerateCIDs
     *
     * Enumerate the list of all registered CIDs.
     *
     * @return : enumerator for CIDs.  Elements of the enumeration can be QI'ed
     *           for the nsISupportsID interface.  From the nsISupportsID, you 
     *           can obtain the actual CID.
     */
  /* nsISimpleEnumerator enumerateCIDs (); */
  nsISimpleEnumeratorD  EnumerateCIDs(){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.EnumerateCIDs(&_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

  /**
     * enumerateContractIDs
     *
     * Enumerate the list of all registered ContractIDs.
     *
     * @return : enumerator for ContractIDs. Elements of the enumeration can be 
     *           QI'ed for the nsISupportsCString interface.  From  the
     *           nsISupportsCString interface, you can obtain the actual 
     *           Contract ID string.
     */
  /* nsISimpleEnumerator enumerateContractIDs (); */
  nsISimpleEnumeratorD  EnumerateContractIDs(){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.EnumerateContractIDs(&_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

  /**
     * CIDToContractID
     *
     * Returns the Contract ID for a given CID, if one exists and is registered.
     *
     * @return : Contract ID.
     */
  /* string CIDToContractID (in nsCIDRef aClass); */
  char* CIDToContractID(nsCID * aClass){
    char* _retval;
    nsresult __result = inner.CIDToContractID(aClass, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * contractIDToCID
     *
     * Returns the CID for a given Contract ID, if one exists and is registered.
     *
     * @return : Contract ID.
     */
  /* nsCIDPtr contractIDToCID (in string aContractID); */
  nsCID * ContractIDToCID(char*aContractID){
nsCID * _retval;
    nsresult __result = inner.ContractIDToCID(aContractID, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIComponentRegistrar inner;

}

