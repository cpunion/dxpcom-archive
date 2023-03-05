/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIInterfaceRequestor.idl
 */

module mozilla.dxpcom.nsIInterfaceRequestorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIInterfaceRequestor;


public import mozilla.dxpcom.nsIInterfaceRequestorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIInterfaceRequestor */
/**
 * The nsIInterfaceRequestor interface defines a generic interface for 
 * requesting interfaces that a given object might provide access to.
 * This is very similar to QueryInterface found in nsISupports.  
 * The main difference is that interfaces returned from GetInterface()
 * are not required to provide a way back to the object implementing this 
 * interface.  The semantics of QI() dictate that given an interface A that 
 * you QI() on to get to interface B, you must be able to QI on B to get back 
 * to A.  This interface however allows you to obtain an interface C from A 
 * that may or most likely will not have the ability to get back to A. 
 *
 * @status FROZEN
 */
class nsIInterfaceRequestorD : public nsISupportsD {

  static const nsIID IID = NS_IINTERFACEREQUESTOR_IID;


  alias nsIInterfaceRequestor InnerType;

  this(nsIInterfaceRequestor intr){
    super(intr);
    this.inner = intr;
  }

  nsIInterfaceRequestor opCast() {
    return inner;
  }

  void opAssign(nsIInterfaceRequestor value) {
    inner = value;
  }

  /**
    * Retrieves the specified interface pointer.
    *
    * @param uuid The IID of the interface being requested.
    * @param result [out] The interface pointer to be filled in if
    *               the interface is accessible.
    * @return NS_OK - interface was successfully returned.
    *         NS_NOINTERFACE - interface not accessible.
    *         NS_ERROR* - method failure.
    */
  /* void getInterface (in nsIIDRef uuid, [iid_is (uuid), retval] out nsQIResult result); */
  void GetInterface(nsIID * uuid, out void * result){
    nsresult __result = inner.GetInterface(uuid, &result);
    CheckException(__result);
  }

private:
  nsIInterfaceRequestor inner;

}

