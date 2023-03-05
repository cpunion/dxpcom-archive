/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIInterfaceRequestor.idl
 */

module mozilla.xpcom.nsIInterfaceRequestor;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIInterfaceRequestor */
const char[] NS_IINTERFACEREQUESTOR_IID_STR = "033a1470-8b2a-11d3-af88-00a024ffc08c";

const nsIID NS_IINTERFACEREQUESTOR_IID= 
  {0x033a1470, 0x8b2a, 0x11d3, 
    [ 0xaf, 0x88, 0x00, 0xa0, 0x24, 0xff, 0xc0, 0x8c ]};

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
extern(Windows)
interface nsIInterfaceRequestor : nsISupports {
  static const char[] IID_STR = NS_IINTERFACEREQUESTOR_IID_STR;
  static const nsIID IID = NS_IINTERFACEREQUESTOR_IID;

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
  nsresult GetInterface(nsIID * uuid, void * *result);

}

