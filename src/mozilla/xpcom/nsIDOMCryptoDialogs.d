/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCryptoDialogs.idl
 */

module mozilla.xpcom.nsIDOMCryptoDialogs;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIX509Cert; /* forward declaration */


/* starting interface:    nsIDOMCryptoDialogs */
const char[] NS_IDOMCRYPTODIALOGS_IID_STR = "1f8fe77e-1dd2-11b2-8dd2-e55f8d3465b8";

const nsIID NS_IDOMCRYPTODIALOGS_IID= 
  {0x1f8fe77e, 0x1dd2, 0x11b2, 
    [ 0x8d, 0xd2, 0xe5, 0x5f, 0x8d, 0x34, 0x65, 0xb8 ]};

extern(Windows)
interface nsIDOMCryptoDialogs : nsISupports {
  static const char[] IID_STR = NS_IDOMCRYPTODIALOGS_IID_STR;
  static const nsIID IID = NS_IDOMCRYPTODIALOGS_IID;

  /**
   * This method is used to warn the user the web site is
   * trying to escrow the generated private key.  This 
   * method should return true if the user wants to proceed
   * and false if the user cancels the action.
   */
  /* boolean ConfirmKeyEscrow (in nsIX509Cert escrowAuthority); */
  nsresult ConfirmKeyEscrow(nsIX509Cert escrowAuthority, PRBool *_retval);

}

