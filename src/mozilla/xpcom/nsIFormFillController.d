/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFormFillController.idl
 */

module mozilla.xpcom.nsIFormFillController;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDocShell; /* forward declaration */

public import mozilla.xpcom.nsIAutoCompletePopup; /* forward declaration */


/* starting interface:    nsIFormFillController */
const char[] NS_IFORMFILLCONTROLLER_IID_STR = "872f07f3-ed11-47c6-b7cf-246db53379fb";

const nsIID NS_IFORMFILLCONTROLLER_IID= 
  {0x872f07f3, 0xed11, 0x47c6, 
    [ 0xb7, 0xcf, 0x24, 0x6d, 0xb5, 0x33, 0x79, 0xfb ]};

extern(Windows)
interface nsIFormFillController : nsISupports {
  static const char[] IID_STR = NS_IFORMFILLCONTROLLER_IID_STR;
  static const nsIID IID = NS_IFORMFILLCONTROLLER_IID;

  /* void attachToBrowser (in nsIDocShell docShell, in nsIAutoCompletePopup popup); */
  nsresult AttachToBrowser(nsIDocShell docShell, nsIAutoCompletePopup popup);

  /* void detachFromBrowser (in nsIDocShell docShell); */
  nsresult DetachFromBrowser(nsIDocShell docShell);

}

