/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFormFillController.idl
 */

module mozilla.dxpcom.nsIFormFillControllerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFormFillController;


public import mozilla.dxpcom.nsIFormFillControllerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDocShell;

public import mozilla.dxpcom.nsIDocShellD;

public import mozilla.xpcom.nsIAutoCompletePopup;

public import mozilla.dxpcom.nsIAutoCompletePopupD;


/* starting wrapper class:    nsIFormFillController */
class nsIFormFillControllerD : public nsISupportsD {

  static const nsIID IID = NS_IFORMFILLCONTROLLER_IID;


  alias nsIFormFillController InnerType;

  this(nsIFormFillController intr){
    super(intr);
    this.inner = intr;
  }

  nsIFormFillController opCast() {
    return inner;
  }

  void opAssign(nsIFormFillController value) {
    inner = value;
  }

  /* void attachToBrowser (in nsIDocShell docShell, in nsIAutoCompletePopup popup); */
  void AttachToBrowser(nsIDocShellD docShell, nsIAutoCompletePopupD popup){
    nsresult __result = inner.AttachToBrowser(docShell ? cast(nsIDocShell)docShell : null, popup ? cast(nsIAutoCompletePopup)popup : null);
    CheckException(__result);
  }

  /* void detachFromBrowser (in nsIDocShell docShell); */
  void DetachFromBrowser(nsIDocShellD docShell){
    nsresult __result = inner.DetachFromBrowser(docShell ? cast(nsIDocShell)docShell : null);
    CheckException(__result);
  }

private:
  nsIFormFillController inner;

}

