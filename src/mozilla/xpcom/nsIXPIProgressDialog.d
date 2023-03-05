/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXPIProgressDialog.idl
 */

module mozilla.xpcom.nsIXPIProgressDialog;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIXPIProgressDialog */
const char[] NS_IXPIPROGRESSDIALOG_IID_STR = "ce8f744e-d5a5-41b3-911f-0fee3008b64e";

const nsIID NS_IXPIPROGRESSDIALOG_IID= 
  {0xce8f744e, 0xd5a5, 0x41b3, 
    [ 0x91, 0x1f, 0x0f, 0xee, 0x30, 0x08, 0xb6, 0x4e ]};

/**
 * Interface to display XPInstall download and install status.
 *
 * @status UNDER_REVIEW
 */
extern(Windows)
interface nsIXPIProgressDialog : nsISupports {
  static const char[] IID_STR = NS_IXPIPROGRESSDIALOG_IID_STR;
  static const nsIID IID = NS_IXPIPROGRESSDIALOG_IID;

  /**
     * state values for onStateChange
     */
  enum { DOWNLOAD_START = 0 };

  enum { DOWNLOAD_DONE = 1 };

  enum { INSTALL_START = 2 };

  enum { INSTALL_DONE = 3 };

  enum { DIALOG_CLOSE = 4 };

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
  nsresult OnStateChange(PRUint32 index, PRInt16 state, PRInt32 value);

  /**
     * download progress
     *
     * @param index     the package to which this refers
     * @param value     number of bytes downloaded
     * @param maxValue  the total size
     */
  /* void onProgress (in unsigned long index, in unsigned long long value, in unsigned long long maxValue); */
  nsresult OnProgress(PRUint32 index, PRUint64 value, PRUint64 maxValue);

}

