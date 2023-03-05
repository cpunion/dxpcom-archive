/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINonBlockingAlertService.idl
 */

module mozilla.dxpcom.nsINonBlockingAlertServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsINonBlockingAlertService;


public import mozilla.dxpcom.nsINonBlockingAlertServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.dxpcom.nsIDOMWindowD;


/* starting wrapper class:    nsINonBlockingAlertService */
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
class nsINonBlockingAlertServiceD : public nsISupportsD {

  static const nsIID IID = NS_INONBLOCKINGALERTSERVICE_IID;


  alias nsINonBlockingAlertService InnerType;

  this(nsINonBlockingAlertService intr){
    super(intr);
    this.inner = intr;
  }

  nsINonBlockingAlertService opCast() {
    return inner;
  }

  void opAssign(nsINonBlockingAlertService value) {
    inner = value;
  }

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
  void ShowNonBlockingAlert(nsIDOMWindowD aParent, PRUnichar*aDialogTitle, PRUnichar*aText){
    nsresult __result = inner.ShowNonBlockingAlert(aParent ? cast(nsIDOMWindow)aParent : null, aDialogTitle, aText);
    CheckException(__result);
  }

private:
  nsINonBlockingAlertService inner;

}

