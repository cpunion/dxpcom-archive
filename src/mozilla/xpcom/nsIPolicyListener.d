/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPolicyListener.idl
 */

module mozilla.xpcom.nsIPolicyListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIPolicyListener */
const char[] NS_IPOLICYLISTENER_IID_STR = "05d74f35-5081-4c01-b814-34f44dd8eb50";

const nsIID NS_IPOLICYLISTENER_IID= 
  {0x05d74f35, 0x5081, 0x4c01, 
    [ 0xb8, 0x14, 0x34, 0xf4, 0x4d, 0xd8, 0xeb, 0x50 ]};

extern(Windows)
interface nsIPolicyListener : nsISupports {
  static const char[] IID_STR = NS_IPOLICYLISTENER_IID_STR;
  static const nsIID IID = NS_IPOLICYLISTENER_IID;

  /**
   * Notify listeners about the availabiltiy of a policy
   *
   * @param aPolicyLocation -> Points to the sites full p3p policy
   * @param aError          -> POLICY_LOAD_SUCCESS | POLICY_LOAD_FAILURE | POLICY_LIFE_EXPIRED | POLICY_SYNTAX_ERROR
   *
   */
  /* void notifyPolicyLocation (in string aPolicyLocation, in long aError); */
  nsresult NotifyPolicyLocation(char *aPolicyLocation, PRInt32 aError);

  /**
   * Notify an error to the listener
   *
   * @param aError          -> POLICY_LOAD_FAILURE | POLICY_LIFE_EXPIRED | POLICY_SYNTAX_ERROR
   *
   */
  /* void notifyPolicyError (in long aError); */
  nsresult NotifyPolicyError(PRInt32 aError);

}

