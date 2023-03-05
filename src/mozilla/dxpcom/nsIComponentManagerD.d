/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIComponentManager.idl
 */

module mozilla.dxpcom.nsIComponentManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIComponentManager;


public import mozilla.dxpcom.nsIComponentManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIFactory;

public import mozilla.dxpcom.nsIFactoryD;


/* starting wrapper class:    nsIComponentManager */
class nsIComponentManagerD : public nsISupportsD {

  static const nsIID IID = NS_ICOMPONENTMANAGER_IID;


  alias nsIComponentManager InnerType;

  this(nsIComponentManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIComponentManager opCast() {
    return inner;
  }

  void opAssign(nsIComponentManager value) {
    inner = value;
  }

  /**
     * getClassObject
     *
     * Returns the factory object that can be used to create instances of
     * CID aClass
     *
     * @param aClass The classid of the factory that is being requested
     */
  /* void getClassObject (in nsCIDRef aClass, in nsIIDRef aIID, [iid_is (aIID), retval] out nsQIResult result); */
  void GetClassObject(nsCID * aClass, nsIID * aIID, out void * result){
    nsresult __result = inner.GetClassObject(aClass, aIID, &result);
    CheckException(__result);
  }

  /**
     * getClassObjectByContractID
     *
     * Returns the factory object that can be used to create instances of
     * CID aClass
     *
     * @param aClass The classid of the factory that is being requested
     */
  /* void getClassObjectByContractID (in string aContractID, in nsIIDRef aIID, [iid_is (aIID), retval] out nsQIResult result); */
  void GetClassObjectByContractID(char*aContractID, nsIID * aIID, out void * result){
    nsresult __result = inner.GetClassObjectByContractID(aContractID, aIID, &result);
    CheckException(__result);
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
  /* void createInstance (in nsCIDRef aClass, in nsISupports aDelegate, in nsIIDRef aIID, [iid_is (aIID), retval] out nsQIResult result); */
  void CreateInstance(nsCID * aClass, nsISupportsD aDelegate, nsIID * aIID, out void * result){
    nsresult __result = inner.CreateInstance(aClass, aDelegate ? cast(nsISupports)aDelegate : null, aIID, &result);
    CheckException(__result);
  }

  /**
     * createInstanceByContractID
     *
     * Create an instance of the CID that implements aContractID and return the
     * interface aIID. 
     *
     * @param aContractID : aContractID of object instance requested
     * @param aDelegate : Used for aggregation
     * @param aIID : IID of interface requested
     */
  /* void createInstanceByContractID (in string aContractID, in nsISupports aDelegate, in nsIIDRef aIID, [iid_is (aIID), retval] out nsQIResult result); */
  void CreateInstanceByContractID(char*aContractID, nsISupportsD aDelegate, nsIID * aIID, out void * result){
    nsresult __result = inner.CreateInstanceByContractID(aContractID, aDelegate ? cast(nsISupports)aDelegate : null, aIID, &result);
    CheckException(__result);
  }

  T CreateInstanceByContractId(T)(char[] aContractID, nsISupportsD aDelegate) {
    void* outresult;
    nsresult result = inner.CreateInstanceByContractID(std.string.toStringz(aContractID), aDelegate ? cast(nsISupports)aDelegate : null, &T.IID, &outresult);
    CheckException(result);
    return new T(cast(T.InnerType)outresult);
  }
private:
  nsIComponentManager inner;

}

