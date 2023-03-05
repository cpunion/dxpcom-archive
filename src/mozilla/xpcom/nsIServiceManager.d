/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIServiceManager.idl
 */

module mozilla.xpcom.nsIServiceManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIServiceManager */
const char[] NS_ISERVICEMANAGER_IID_STR = "8bb35ed9-e332-462d-9155-4a002ab5c958";

const nsIID NS_ISERVICEMANAGER_IID= 
  {0x8bb35ed9, 0xe332, 0x462d, 
    [ 0x91, 0x55, 0x4a, 0x00, 0x2a, 0xb5, 0xc9, 0x58 ]};

/**
 * The nsIServiceManager manager interface provides a means to obtain
 * global services in an application. The service manager depends on the 
 * repository to find and instantiate factories to obtain services.
 *
 * Users of the service manager must first obtain a pointer to the global
 * service manager by calling NS_GetServiceManager. After that, 
 * they can request specific services by calling GetService. When they are
 * finished they can NS_RELEASE() the service as usual.
 *
 * A user of a service may keep references to particular services indefinitely
 * and only must call Release when it shuts down.
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIServiceManager : nsISupports {
  static const char[] IID_STR = NS_ISERVICEMANAGER_IID_STR;
  static const nsIID IID = NS_ISERVICEMANAGER_IID;

  /**
     * getServiceByContractID
     *
     * Returns the instance that implements aClass or aContractID and the
     * interface aIID.  This may result in the instance being created.
     *
     * @param aClass or aContractID : aClass or aContractID of object 
     *                                instance requested
     * @param aIID : IID of interface requested
     * @param result : resulting service 
     */
  /* void getService (in nsCIDRef aClass, in nsIIDRef aIID, [iid_is (aIID), retval] out nsQIResult result); */
  nsresult GetService(nsCID * aClass, nsIID * aIID, void * *result);

  /* void getServiceByContractID (in string aContractID, in nsIIDRef aIID, [iid_is (aIID), retval] out nsQIResult result); */
  nsresult GetServiceByContractID(char *aContractID, nsIID * aIID, void * *result);

  /**
     * isServiceInstantiated
     *
     * isServiceInstantiated will return a true if the service has already
     * been created, otherwise false
     *
     * @param aClass or aContractID : aClass or aContractID of object 
     *                                instance requested
     * @param aIID : IID of interface requested
     * @param aIID : IID of interface requested
     */
  /* boolean isServiceInstantiated (in nsCIDRef aClass, in nsIIDRef aIID); */
  nsresult IsServiceInstantiated(nsCID * aClass, nsIID * aIID, PRBool *_retval);

  /* boolean isServiceInstantiatedByContractID (in string aContractID, in nsIIDRef aIID); */
  nsresult IsServiceInstantiatedByContractID(char *aContractID, nsIID * aIID, PRBool *_retval);

}

