/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM ipcIDConnectService.idl
 */

module mozilla.dxpcom.ipcIDConnectServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.ipcIDConnectService;


public import mozilla.dxpcom.ipcIDConnectServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    ipcIDConnectService */
/**
 * This service provides methods similar to nsIComponentManager and
 * nsIServiceManager.  A ClientID parameter specifies the remote process
 * in which the object should live.
 *
 * ipcIService can be used to determine the ClientID of a remote process.
 *
 * It is assumed that both processes have access to the same typelibs.
 */
class ipcIDConnectServiceD : public nsISupportsD {

  static const nsIID IID = IPCIDCONNECTSERVICE_IID;


  alias ipcIDConnectService InnerType;

  this(ipcIDConnectService intr){
    super(intr);
    this.inner = intr;
  }

  ipcIDConnectService opCast() {
    return inner;
  }

  void opAssign(ipcIDConnectService value) {
    inner = value;
  }

  /* void createInstance (in unsigned long aClientID, in nsCIDRef aClass, in nsIIDRef aIID, [iid_is (aIID), retval] out nsQIResult result); */
  void CreateInstance(PRUint32 aClientID, nsCID * aClass, nsIID * aIID, out void * result){
    nsresult __result = inner.CreateInstance(aClientID, aClass, aIID, &result);
    CheckException(__result);
  }

  /* void createInstanceByContractID (in unsigned long aClientID, in string aContractID, in nsIIDRef aIID, [iid_is (aIID), retval] out nsQIResult result); */
  void CreateInstanceByContractID(PRUint32 aClientID, char*aContractID, nsIID * aIID, out void * result){
    nsresult __result = inner.CreateInstanceByContractID(aClientID, aContractID, aIID, &result);
    CheckException(__result);
  }

  /* void getService (in unsigned long aClientID, in nsCIDRef aClass, in nsIIDRef aIID, [iid_is (aIID), retval] out nsQIResult result); */
  void GetService(PRUint32 aClientID, nsCID * aClass, nsIID * aIID, out void * result){
    nsresult __result = inner.GetService(aClientID, aClass, aIID, &result);
    CheckException(__result);
  }

  /* void getServiceByContractID (in unsigned long aClientID, in string aContractID, in nsIIDRef aIID, [iid_is (aIID), retval] out nsQIResult result); */
  void GetServiceByContractID(PRUint32 aClientID, char*aContractID, nsIID * aIID, out void * result){
    nsresult __result = inner.GetServiceByContractID(aClientID, aContractID, aIID, &result);
    CheckException(__result);
  }

private:
  ipcIDConnectService inner;

}

