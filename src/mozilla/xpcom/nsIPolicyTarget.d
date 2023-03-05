/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPolicyTarget.idl
 */

module mozilla.xpcom.nsIPolicyTarget;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIPolicyListener; /* forward declaration */


/* starting interface:    nsIPolicyTarget */
const char[] NS_IPOLICYTARGET_IID_STR = "b15e7f1b-38f5-45e8-9d71-f4c47ec3b8c6";

const nsIID NS_IPOLICYTARGET_IID= 
  {0xb15e7f1b, 0x38f5, 0x45e8, 
    [ 0x9d, 0x71, 0xf4, 0xc4, 0x7e, 0xc3, 0xb8, 0xc6 ]};

extern(Windows)
interface nsIPolicyTarget : nsISupports {
  static const char[] IID_STR = NS_IPOLICYTARGET_IID_STR;
  static const nsIID IID = NS_IPOLICYTARGET_IID;

  /**
   * Setup a listener that is to be notified when the policy location 
   * becomes available
   *
   * @param aListener ->
   */
  /* void setupPolicyListener (in nsIPolicyListener aListener); */
  nsresult SetupPolicyListener(nsIPolicyListener aListener);

}

