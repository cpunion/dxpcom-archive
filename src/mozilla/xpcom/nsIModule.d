/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIModule.idl
 */

module mozilla.xpcom.nsIModule;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIFile; /* forward declaration */

public import mozilla.xpcom.nsIComponentManager; /* forward declaration */


/* starting interface:    nsIModule */
const char[] NS_IMODULE_IID_STR = "7392d032-5371-11d3-994e-00805fd26fee";

const nsIID NS_IMODULE_IID= 
  {0x7392d032, 0x5371, 0x11d3, 
    [ 0x99, 0x4e, 0x00, 0x80, 0x5f, 0xd2, 0x6f, 0xee ]};

/**
 * The nsIModule interface.
 * @status FROZEN
 */
extern(Windows)
interface nsIModule : nsISupports {
  static const char[] IID_STR = NS_IMODULE_IID_STR;
  static const nsIID IID = NS_IMODULE_IID;

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
  nsresult GetClassObject(nsIComponentManager aCompMgr, nsCID * aClass, nsIID * aIID, void * *aResult);

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
  nsresult RegisterSelf(nsIComponentManager aCompMgr, nsIFile aLocation, char *aLoaderStr, char *aType);

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
  nsresult UnregisterSelf(nsIComponentManager aCompMgr, nsIFile aLocation, char *aLoaderStr);

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
  nsresult CanUnload(nsIComponentManager aCompMgr, PRBool *_retval);

}

