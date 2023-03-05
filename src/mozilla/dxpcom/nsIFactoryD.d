/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFactory.idl
 */

module mozilla.dxpcom.nsIFactoryD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFactory;


public import mozilla.dxpcom.nsIFactoryD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIFactory */
/**
 * A class factory allows the creation of nsISupports derived
 * components without specifying a concrete base class.  
 *
 * @status FROZEN
 */
class nsIFactoryD : public nsISupportsD {

  static const nsIID IID = NS_IFACTORY_IID;


  alias nsIFactory InnerType;

  this(nsIFactory intr){
    super(intr);
    this.inner = intr;
  }

  nsIFactory opCast() {
    return inner;
  }

  void opAssign(nsIFactory value) {
    inner = value;
  }

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
  void CreateInstance(nsISupportsD aOuter, nsIID * iid, out void * result){
    nsresult __result = inner.CreateInstance(aOuter ? cast(nsISupports)aOuter : null, iid, &result);
    CheckException(__result);
  }

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
  void LockFactory(PRBool lock){
    nsresult __result = inner.LockFactory(lock);
    CheckException(__result);
  }

private:
  nsIFactory inner;

}

