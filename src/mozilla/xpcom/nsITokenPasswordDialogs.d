/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITokenPasswordDialogs.idl
 */

module mozilla.xpcom.nsITokenPasswordDialogs;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIInterfaceRequestor; /* forward declaration */


/* starting interface:    nsITokenPasswordDialogs */
const char[] NS_ITOKENPASSWORDDIALOGS_IID_STR = "be26b580-1dd1-11b2-9946-c598d0d07727";

const nsIID NS_ITOKENPASSWORDDIALOGS_IID= 
  {0xbe26b580, 0x1dd1, 0x11b2, 
    [ 0x99, 0x46, 0xc5, 0x98, 0xd0, 0xd0, 0x77, 0x27 ]};

/**
 * nsITokenPasswordDialogs
 *  This is the interface for setting and changing password
 *  on a PKCS11 token.
 */
extern(Windows)
interface nsITokenPasswordDialogs : nsISupports {
  static const char[] IID_STR = NS_ITOKENPASSWORDDIALOGS_IID_STR;
  static const nsIID IID = NS_ITOKENPASSWORDDIALOGS_IID;

  /**
   * setPassword - sets the password/PIN on the named token.
   *   The canceled output value should be set to TRUE when
   *   the user (or implementation) cancels the operation.
   */
  /* void setPassword (in nsIInterfaceRequestor ctx, in wstring tokenName, out boolean canceled); */
  nsresult SetPassword(nsIInterfaceRequestor ctx, PRUnichar *tokenName, PRBool *canceled);

  /* void getPassword (in nsIInterfaceRequestor ctx, in wstring tokenName, out wstring password, out boolean canceled); */
  nsresult GetPassword(nsIInterfaceRequestor ctx, PRUnichar *tokenName, PRUnichar **password, PRBool *canceled);

}

