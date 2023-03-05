/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProgressDialog.idl
 */

module mozilla.xpcom.nsIProgressDialog;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDownload;

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */

public import mozilla.xpcom.nsIObserver; /* forward declaration */


/* starting interface:    nsIProgressDialog */
const char[] NS_IPROGRESSDIALOG_IID_STR = "20e790a2-76c6-462d-851a-22ab6cbbe48b";

const nsIID NS_IPROGRESSDIALOG_IID= 
  {0x20e790a2, 0x76c6, 0x462d, 
    [ 0x85, 0x1a, 0x22, 0xab, 0x6c, 0xbb, 0xe4, 0x8b ]};

extern(Windows)
interface nsIProgressDialog : nsIDownload {
  static const char[] IID_STR = NS_IPROGRESSDIALOG_IID_STR;
  static const nsIID IID = NS_IPROGRESSDIALOG_IID;

  /**
    * Open the dialog
    *
    * @param aParent  Parent window; optional (if null, then
    *                 a top-level window is created)
    */
  /* void open (in nsIDOMWindow aParent); */
  nsresult Open(nsIDOMWindow aParent);

  /**
    * Whether the download should be cancelled when the progress
    * dialog is closed using the standard OS close box.  This is
    * useful for showing the progress dialog as an information
    * window, which is what download manager does.
    */
  /* attribute PRBool cancelDownloadOnClose; */
  nsresult GetCancelDownloadOnClose(PRBool *aCancelDownloadOnClose);
  nsresult SetCancelDownloadOnClose(PRBool aCancelDownloadOnClose);

  /**
    * Observer for this dialog. If set, receives the following topics:
    *   oncancel - observer should cancel the transfer
    *   onpause  - observer should suspend the transfer
    *   onresume - observer should resume the suspended transfer
    * For each of those, the subject will be the nsIProgressDialog.
    */
  /* attribute nsIObserver observer; */
  nsresult GetObserver(nsIObserver  *aObserver);
  nsresult SetObserver(nsIObserver  aObserver);

  /**
   * The dialog object itself.  This might be null if the dialog isn't
   * open yet, or has been closed.
   */
  /* attribute nsIDOMWindow dialog; */
  nsresult GetDialog(nsIDOMWindow  *aDialog);
  nsresult SetDialog(nsIDOMWindow  aDialog);

}

