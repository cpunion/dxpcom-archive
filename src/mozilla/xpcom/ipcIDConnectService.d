/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM ipcIDConnectService.idl
 */

module mozilla.xpcom.ipcIDConnectService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    ipcIDConnectService */
const char[] IPCIDCONNECTSERVICE_IID_STR = "fe07ed16-2710-4a1e-a4e2-81302b62bf0e";

const nsIID IPCIDCONNECTSERVICE_IID= 
  {0xfe07ed16, 0x2710, 0x4a1e, 
    [ 0xa4, 0xe2, 0x81, 0x30, 0x2b, 0x62, 0xbf, 0x0e ]};

/**
 * This service provides methods similar to nsIComponentManager and
 * nsIServiceManager.  A ClientID parameter specifies the remote process
 * in which the object should live.
 *
 * ipcIService can be used to determine the ClientID of a remote process.
 *
 * It is assumed that both processes have access to the same typelibs.
 */
extern(Windows)
interface ipcIDConnectService : nsISupports {
  static const char[] IID_STR = IPCIDCONNECTSERVICE_IID_STR;
  static const nsIID IID = IPCIDCONNECTSERVICE_IID;

  /* void createInstance (in unsigned long aClientID, in nsCIDRef aClass, in nsIIDRef aIID, [iid_is (aIID), retval] out nsQIResult result); */
  nsresult CreateInstance(PRUint32 aClientID, nsCID * aClass, nsIID * aIID, void * *result);

  /* void createInstanceByContractID (in unsigned long aClientID, in string aContractID, in nsIIDRef aIID, [iid_is (aIID), retval] out nsQIResult result); */
  nsresult CreateInstanceByContractID(PRUint32 aClientID, char *aContractID, nsIID * aIID, void * *result);

  /* void getService (in unsigned long aClientID, in nsCIDRef aClass, in nsIIDRef aIID, [iid_is (aIID), retval] out nsQIResult result); */
  nsresult GetService(PRUint32 aClientID, nsCID * aClass, nsIID * aIID, void * *result);

  /* void getServiceByContractID (in unsigned long aClientID, in string aContractID, in nsIIDRef aIID, [iid_is (aIID), retval] out nsQIResult result); */
  nsresult GetServiceByContractID(PRUint32 aClientID, char *aContractID, nsIID * aIID, void * *result);

}

