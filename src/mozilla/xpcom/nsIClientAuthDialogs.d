/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIClientAuthDialogs.idl
 */

module mozilla.xpcom.nsIClientAuthDialogs;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIInterfaceRequestor; /* forward declaration */


/* starting interface:    nsIClientAuthDialogs */
const char[] NS_ICLIENTAUTHDIALOGS_IID_STR = "fa4c7520-1433-11d5-ba24-00108303b117";

const nsIID NS_ICLIENTAUTHDIALOGS_IID= 
  {0xfa4c7520, 0x1433, 0x11d5, 
    [ 0xba, 0x24, 0x00, 0x10, 0x83, 0x03, 0xb1, 0x17 ]};

/**
 * nsIClientAuthDialog
 * Provides UI for SSL client-auth dialogs.
 */
extern(Windows)
interface nsIClientAuthDialogs : nsISupports {
  static const char[] IID_STR = NS_ICLIENTAUTHDIALOGS_IID_STR;
  static const nsIID IID = NS_ICLIENTAUTHDIALOGS_IID;

  /**
   * display
   *   UI shown when a user is asked to do SSL client auth.
   */
  /* void ChooseCertificate (in nsIInterfaceRequestor ctx, in wstring cn, in wstring organization, in wstring issuer, [array, size_is (count)] in wstring certNickList, [array, size_is (count)] in wstring certDetailsList, in unsigned long count, out long selectedIndex, out boolean canceled); */
  nsresult ChooseCertificate(nsIInterfaceRequestor ctx, PRUnichar *cn, PRUnichar *organization, PRUnichar *issuer, PRUnichar **certNickList, PRUnichar **certDetailsList, PRUint32 count, PRInt32 *selectedIndex, PRBool *canceled);

}

