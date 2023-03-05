/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIComponentRegistrar.idl
 */

module mozilla.xpcom.nsIComponentRegistrar;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIFile; /* forward declaration */

public import mozilla.xpcom.nsIFactory; /* forward declaration */

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */


/* starting interface:    nsIComponentRegistrar */
const char[] NS_ICOMPONENTREGISTRAR_IID_STR = "2417cbfe-65ad-48a6-b4b6-eb84db174392";

const nsIID NS_ICOMPONENTREGISTRAR_IID= 
  {0x2417cbfe, 0x65ad, 0x48a6, 
    [ 0xb4, 0xb6, 0xeb, 0x84, 0xdb, 0x17, 0x43, 0x92 ]};

extern(Windows)
interface nsIComponentRegistrar : nsISupports {
  static const char[] IID_STR = NS_ICOMPONENTREGISTRAR_IID_STR;
  static const nsIID IID = NS_ICOMPONENTREGISTRAR_IID;

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
  nsresult AutoRegister(nsIFile aSpec);

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
  nsresult AutoUnregister(nsIFile aSpec);

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
  nsresult RegisterFactory(nsCID * aClass, char *aClassName, char *aContractID, nsIFactory aFactory);

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
  nsresult UnregisterFactory(nsCID * aClass, nsIFactory aFactory);

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
  nsresult RegisterFactoryLocation(nsCID * aClass, char *aClassName, char *aContractID, nsIFile aFile, char *aLoaderStr, char *aType);

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
  nsresult UnregisterFactoryLocation(nsCID * aClass, nsIFile aFile);

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
  nsresult IsCIDRegistered(nsCID * aClass, PRBool *_retval);

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
  nsresult IsContractIDRegistered(char *aContractID, PRBool *_retval);

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
  nsresult EnumerateCIDs(nsISimpleEnumerator *_retval);

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
  nsresult EnumerateContractIDs(nsISimpleEnumerator *_retval);

  /**
     * CIDToContractID
     *
     * Returns the Contract ID for a given CID, if one exists and is registered.
     *
     * @return : Contract ID.
     */
  /* string CIDToContractID (in nsCIDRef aClass); */
  nsresult CIDToContractID(nsCID * aClass, char **_retval);

  /**
     * contractIDToCID
     *
     * Returns the CID for a given Contract ID, if one exists and is registered.
     *
     * @return : Contract ID.
     */
  /* nsCIDPtr contractIDToCID (in string aContractID); */
  nsresult ContractIDToCID(char *aContractID, nsCID * *_retval);

}

