/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINonBlockingAlertService.idl
 */

module mozilla.xpcom.nsINonBlockingAlertService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */


/* starting interface:    nsINonBlockingAlertService */
const char[] NS_INONBLOCKINGALERTSERVICE_IID_STR = "e800ef97-ae37-46b7-a46c-31fbe79657ea";

const nsIID NS_INONBLOCKINGALERTSERVICE_IID= 
  {0xe800ef97, 0xae37, 0x46b7, 
    [ 0xa4, 0x6c, 0x31, 0xfb, 0xe7, 0x96, 0x57, 0xea ]};

/**
 * This is the interface to the embeddable non-blocking alert
 * service.  A non-blocking alert is a less serious informative alert
 * that does not need to block the program's execution to get the
 * user's response.
 *
 * The way to present the alert is left to the implementations.  It
 * may be a dialog separate from the parent window, or a window-modal
 * sheet (as the ones in Mac OS X) attached to the parent.
 */
extern(Windows)
interface nsINonBlockingAlertService : nsISupports {
  static const char[] IID_STR = NS_INONBLOCKINGALERTSERVICE_IID_STR;
  static const nsIID IID = NS_INONBLOCKINGALERTSERVICE_IID;

  /**
   * This shows a non-blocking alert with the specified title and
   * message text. This function requires a valid parent window with
   * which the alert is associated.
   *
   * @param aParent
   *        The parent window. This must not be null.
   * @param aDialogTitle
   *        Text to appear in the title of the alert.
   * @param aText
   *        Text to appear in the body of the alert.
   */
  /* void showNonBlockingAlert (in nsIDOMWindow aParent, in wstring aDialogTitle, in wstring aText); */
  nsresult ShowNonBlockingAlert(nsIDOMWindow aParent, PRUnichar *aDialogTitle, PRUnichar *aText);

}

