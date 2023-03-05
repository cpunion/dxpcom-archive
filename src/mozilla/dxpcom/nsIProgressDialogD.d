/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProgressDialog.idl
 */

module mozilla.dxpcom.nsIProgressDialogD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIProgressDialog;


public import mozilla.dxpcom.nsIProgressDialogD;

public import mozilla.xpcom.nsIDownload;
public import mozilla.dxpcom.nsIDownloadD;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.dxpcom.nsIDOMWindowD;

public import mozilla.xpcom.nsIObserver;

public import mozilla.dxpcom.nsIObserverD;


/* starting wrapper class:    nsIProgressDialog */
class nsIProgressDialogD : public nsIDownloadD {

  static const nsIID IID = NS_IPROGRESSDIALOG_IID;


  alias nsIProgressDialog InnerType;

  this(nsIProgressDialog intr){
    super(intr);
    this.inner = intr;
  }

  nsIProgressDialog opCast() {
    return inner;
  }

  void opAssign(nsIProgressDialog value) {
    inner = value;
  }

  /**
    * Open the dialog
    *
    * @param aParent  Parent window; optional (if null, then
    *                 a top-level window is created)
    */
  /* void open (in nsIDOMWindow aParent); */
  void Open(nsIDOMWindowD aParent){
    nsresult __result = inner.Open(aParent ? cast(nsIDOMWindow)aParent : null);
    CheckException(__result);
  }

  /**
    * Whether the download should be cancelled when the progress
    * dialog is closed using the standard OS close box.  This is
    * useful for showing the progress dialog as an information
    * window, which is what download manager does.
    */
  /* attribute PRBool cancelDownloadOnClose; */
  PRBool CancelDownloadOnClose(){
    PRBool value;
    nsresult __result = inner.GetCancelDownloadOnClose(&value);
    CheckException(__result);
    return value;
  }
  void CancelDownloadOnClose(PRBool aCancelDownloadOnClose){
    PRBool value;
    nsresult __result = inner.SetCancelDownloadOnClose(value);
    CheckException(__result);
  }

  /**
    * Observer for this dialog. If set, receives the following topics:
    *   oncancel - observer should cancel the transfer
    *   onpause  - observer should suspend the transfer
    *   onresume - observer should resume the suspended transfer
    * For each of those, the subject will be the nsIProgressDialog.
    */
  /* attribute nsIObserver observer; */
  nsIObserverD  Observer(){
    nsIObserver value;
    nsresult __result = inner.GetObserver(&value);
    CheckException(__result);
    return new nsIObserverD(value);
  }
  void Observer(nsIObserverD  aObserver){
    nsIObserver value;
    nsresult __result = inner.SetObserver(value);
    CheckException(__result);
  }

  /**
   * The dialog object itself.  This might be null if the dialog isn't
   * open yet, or has been closed.
   */
  /* attribute nsIDOMWindow dialog; */
  nsIDOMWindowD  Dialog(){
    nsIDOMWindow value;
    nsresult __result = inner.GetDialog(&value);
    CheckException(__result);
    return new nsIDOMWindowD(value);
  }
  void Dialog(nsIDOMWindowD  aDialog){
    nsIDOMWindow value;
    nsresult __result = inner.SetDialog(value);
    CheckException(__result);
  }

private:
  nsIProgressDialog inner;

}

