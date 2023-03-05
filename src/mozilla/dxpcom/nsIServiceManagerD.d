/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIServiceManager.idl
 */

module mozilla.dxpcom.nsIServiceManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIServiceManager;


public import mozilla.dxpcom.nsIServiceManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIServiceManager */
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
class nsIServiceManagerD : public nsISupportsD {

  static const nsIID IID = NS_ISERVICEMANAGER_IID;


  alias nsIServiceManager InnerType;

  this(nsIServiceManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIServiceManager opCast() {
    return inner;
  }

  void opAssign(nsIServiceManager value) {
    inner = value;
  }

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
  void GetService(nsCID * aClass, nsIID * aIID, out void * result){
    nsresult __result = inner.GetService(aClass, aIID, &result);
    CheckException(__result);
  }

  /* void getServiceByContractID (in string aContractID, in nsIIDRef aIID, [iid_is (aIID), retval] out nsQIResult result); */
  void GetServiceByContractID(char*aContractID, nsIID * aIID, out void * result){
    nsresult __result = inner.GetServiceByContractID(aContractID, aIID, &result);
    CheckException(__result);
  }

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
  PRBool IsServiceInstantiated(nsCID * aClass, nsIID * aIID){
    PRBool _retval;
    nsresult __result = inner.IsServiceInstantiated(aClass, aIID, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean isServiceInstantiatedByContractID (in string aContractID, in nsIIDRef aIID); */
  PRBool IsServiceInstantiatedByContractID(char*aContractID, nsIID * aIID){
    PRBool _retval;
    nsresult __result = inner.IsServiceInstantiatedByContractID(aContractID, aIID, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIServiceManager inner;

}

