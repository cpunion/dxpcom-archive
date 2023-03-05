/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIComponentManager.idl
 */

module mozilla.xpcom.nsIComponentManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIFactory; /* forward declaration */


/* starting interface:    nsIComponentManager */
const char[] NS_ICOMPONENTMANAGER_IID_STR = "a88e5a60-205a-4bb1-94e1-2628daf51eae";

const nsIID NS_ICOMPONENTMANAGER_IID= 
  {0xa88e5a60, 0x205a, 0x4bb1, 
    [ 0x94, 0xe1, 0x26, 0x28, 0xda, 0xf5, 0x1e, 0xae ]};

extern(Windows)
interface nsIComponentManager : nsISupports {
  static const char[] IID_STR = NS_ICOMPONENTMANAGER_IID_STR;
  static const nsIID IID = NS_ICOMPONENTMANAGER_IID;

  /**
     * getClassObject
     *
     * Returns the factory object that can be used to create instances of
     * CID aClass
     *
     * @param aClass The classid of the factory that is being requested
     */
  /* void getClassObject (in nsCIDRef aClass, in nsIIDRef aIID, [iid_is (aIID), retval] out nsQIResult result); */
  nsresult GetClassObject(nsCID * aClass, nsIID * aIID, void * *result);

  /**
     * getClassObjectByContractID
     *
     * Returns the factory object that can be used to create instances of
     * CID aClass
     *
     * @param aClass The classid of the factory that is being requested
     */
  /* void getClassObjectByContractID (in string aContractID, in nsIIDRef aIID, [iid_is (aIID), retval] out nsQIResult result); */
  nsresult GetClassObjectByContractID(char *aContractID, nsIID * aIID, void * *result);

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
  nsresult CreateInstance(nsCID * aClass, nsISupports aDelegate, nsIID * aIID, void * *result);

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
  nsresult CreateInstanceByContractID(char *aContractID, nsISupports aDelegate, nsIID * aIID, void * *result);

}

