/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFactory.idl
 */

module mozilla.xpcom.nsIFactory;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIFactory */
const char[] NS_IFACTORY_IID_STR = "00000001-0000-0000-c000-000000000046";

const nsIID NS_IFACTORY_IID= 
  {0x00000001, 0x0000, 0x0000, 
    [ 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46 ]};

/**
 * A class factory allows the creation of nsISupports derived
 * components without specifying a concrete base class.  
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIFactory : nsISupports {
  static const char[] IID_STR = NS_IFACTORY_IID_STR;
  static const nsIID IID = NS_IFACTORY_IID;

  /**
    * Creates an instance of a component.
    *
    * @param aOuter Pointer to a component that wishes to be aggregated
    *               in the resulting instance. This will be nsnull if no
    *               aggregation is requested.
    * @param iid    The IID of the interface being requested in
    *               the component which is being currently created.
    * @param result [out] Pointer to the newly created instance, if successful.
    * @return NS_OK - Component successfully created and the interface 
    *                 being requested was successfully returned in result.
    *         NS_NOINTERFACE - Interface not accessible.
    *         NS_ERROR_NO_AGGREGATION - if an 'outer' object is supplied, but the
    *                                   component is not aggregatable.
    *         NS_ERROR* - Method failure.
    */
  /* void createInstance (in nsISupports aOuter, in nsIIDRef iid, [iid_is (iid), retval] out nsQIResult result); */
  nsresult CreateInstance(nsISupports aOuter, nsIID * iid, void * *result);

  /**
    * LockFactory provides the client a way to keep the component
    * in memory until it is finished with it. The client can call
    * LockFactory(PR_TRUE) to lock the factory and LockFactory(PR_FALSE)
    * to release the factory.	 
    *
    * @param lock - Must be PR_TRUE or PR_FALSE
    * @return NS_OK - If the lock operation was successful.
    *         NS_ERROR* - Method failure.
    */
  /* void lockFactory (in PRBool lock); */
  nsresult LockFactory(PRBool lock);

}

