/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFormSigningDialog.idl
 */

module mozilla.xpcom.nsIFormSigningDialog;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIInterfaceRequestor; /* forward declaration */


/* starting interface:    nsIFormSigningDialog */
const char[] NS_IFORMSIGNINGDIALOG_IID_STR = "4fe04d6d-4b66-4023-a0bc-b43ce68b3e15";

const nsIID NS_IFORMSIGNINGDIALOG_IID= 
  {0x4fe04d6d, 0x4b66, 0x4023, 
    [ 0xa0, 0xbc, 0xb4, 0x3c, 0xe6, 0x8b, 0x3e, 0x15 ]};

/**
 * nsIFormSigningDialog
 * Provides UI for form signing.
 */
extern(Windows)
interface nsIFormSigningDialog : nsISupports {
  static const char[] IID_STR = NS_IFORMSIGNINGDIALOG_IID_STR;
  static const nsIID IID = NS_IFORMSIGNINGDIALOG_IID;

  /**
   *  confirmSignText
   *    UI shown when a web site calls crypto.signText,
   *    asking the user to confirm the confirm the signing request.
   *
   *  returns true if the user confirmed, false on cancel
   */
  /* boolean confirmSignText (in nsIInterfaceRequestor ctxt, in AString host, in AString signText, [array, size_is (count)] in wstring certNickList, [array, size_is (count)] in wstring certDetailsList, in PRUint32 count, out PRInt32 selectedIndex, out AString password); */
  nsresult ConfirmSignText(nsIInterfaceRequestor ctxt, nsAString * host, nsAString * signText, PRUnichar **certNickList, PRUnichar **certDetailsList, PRUint32 count, PRInt32 *selectedIndex, nsAString * password, PRBool *_retval);

}

