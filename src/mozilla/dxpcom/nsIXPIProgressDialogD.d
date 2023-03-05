/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXPIProgressDialog.idl
 */

module mozilla.dxpcom.nsIXPIProgressDialogD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXPIProgressDialog;


public import mozilla.dxpcom.nsIXPIProgressDialogD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIXPIProgressDialog */
/**
 * Interface to display XPInstall download and install status.
 *
 * @status UNDER_REVIEW
 */
class nsIXPIProgressDialogD : public nsISupportsD {

  static const nsIID IID = NS_IXPIPROGRESSDIALOG_IID;


  alias nsIXPIProgressDialog InnerType;

  this(nsIXPIProgressDialog intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPIProgressDialog opCast() {
    return inner;
  }

  void opAssign(nsIXPIProgressDialog value) {
    inner = value;
  }

  /**
     * state values for onStateChange
     */
  enum { DOWNLOAD_START = 0 }

  enum { DOWNLOAD_DONE = 1 }

  enum { INSTALL_START = 2 }

  enum { INSTALL_DONE = 3 }

  enum { DIALOG_CLOSE = 4 }

  /**
     * basic info to control the install progress dialog. The dialog can
     * go away any time after it has received the DIALOG_CLOSE state message
     * but needs to accept messages until that time even if it is not visible.
     *
     * Normally for each install package the dialog will receive the download
     * and install messages in START/DONE pairs, but in the case of a download
     * error the dialog will be sent only the DOWNLOAD_START followed by an
     * INSTALL_DONE message with the value nsInstall::DOWNLOAD_ERROR
     *
     * @param index     the package this message is about of those passed into
     *                  openProgressDialog. ignored when state==DIALOG_CLOSE
     * @param state     the kind of message
     * @param value     final result when state==INSTALL_DONE, otherwise ignored
     */
  /* void onStateChange (in unsigned long index, in short state, in long value); */
  void OnStateChange(PRUint32 index, PRInt16 state, PRInt32 value){
    nsresult __result = inner.OnStateChange(index, state, value);
    CheckException(__result);
  }

  /**
     * download progress
     *
     * @param index     the package to which this refers
     * @param value     number of bytes downloaded
     * @param maxValue  the total size
     */
  /* void onProgress (in unsigned long index, in unsigned long long value, in unsigned long long maxValue); */
  void OnProgress(PRUint32 index, PRUint64 value, PRUint64 maxValue){
    nsresult __result = inner.OnProgress(index, value, maxValue);
    CheckException(__result);
  }

private:
  nsIXPIProgressDialog inner;

}

