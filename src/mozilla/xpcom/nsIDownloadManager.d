/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDownloadManager.idl
 */

module mozilla.xpcom.nsIDownloadManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsILocalFile; /* forward declaration */

public import mozilla.xpcom.nsIDownload; /* forward declaration */

public import mozilla.xpcom.nsICancelable; /* forward declaration */

public import mozilla.xpcom.nsIMIMEInfo; /* forward declaration */


/* starting interface:    nsIDownloadManager */
const char[] NS_IDOWNLOADMANAGER_IID_STR = "9cdfcea3-fbe4-4ba1-a0fd-fe273097ddfa";

const nsIID NS_IDOWNLOADMANAGER_IID= 
  {0x9cdfcea3, 0xfbe4, 0x4ba1, 
    [ 0xa0, 0xfd, 0xfe, 0x27, 0x30, 0x97, 0xdd, 0xfa ]};

extern(Windows)
interface nsIDownloadManager : nsISupports {
  static const char[] IID_STR = NS_IDOWNLOADMANAGER_IID_STR;
  static const nsIID IID = NS_IDOWNLOADMANAGER_IID;

  /**
  * Creates an nsIDownload and adds it to be managed by the download manager.
  *
  * @param aSource The source URI of the transfer. Must not be null.
  *
  * @param aTarget The target URI of the transfer. Must not be null.
  *
  * @param aDisplayName The user-readable description of the transfer.
  *                     Can be empty.
  *
  * @param aMIMEInfo The MIME info associated with the target,
  *                  including MIME type and helper app when appropriate.
  *                  This parameter is optional.
  *
  * @param startTime Time when the download started (ie, when the first
  *                  response from the server was received)
  * @param aTempFile The location of a temporary file; i.e. a file in which
  *                  the received data will be stored, but which is not
  *                  equal to the target file. (will be moved to the real
  *                  target by the caller, when the download is finished)
  *                  May be null.
  *
  * @param aCancelable An object that can be used to abort the download.
  *                    Must not be null.

  * @return The newly created download item with the passed-in properties.
  */
  /* nsIDownload addDownload (in nsIURI aSource, in nsIURI aTarget, in AString aDisplayName, in nsIMIMEInfo aMIMEInfo, in PRTime startTime, in nsILocalFile aTempFile, in nsICancelable aCancelable); */
  nsresult AddDownload(nsIURI aSource, nsIURI aTarget, nsAString * aDisplayName, nsIMIMEInfo aMIMEInfo, PRTime startTime, nsILocalFile aTempFile, nsICancelable aCancelable, nsIDownload *_retval);

  /**
  *  Retrieves an in-progress download managed by the download manager.
  *
  *  @param aTargetPath           A UTF8-encoded path to the target file.
  *
  *  @return The download with the specified path.
  */
  /* nsIDownload getDownload (in AUTF8String aTargetPath); */
  nsresult GetDownload(nsACString * aTargetPath, nsIDownload *_retval);

  /**
  * Cancels the download with the specified target path if it's
  * currently in progress.  If a "persist" was specified for the download,
  * nsIWebBrowserPersist::CancelSave will be called.  If an observer was set
  * on the nsIDownload, it will be notified with the "oncancel" topic.  Clients
  * that don't provide a "persist" must listen for this topic and cancel the
  * download.
  *
  * @param aTargetPath           The target path of the download to
  *                              be cancelled.
  */
  /* void cancelDownload (in AUTF8String aTargetPath); */
  nsresult CancelDownload(nsACString * aTargetPath);

  /**
   * Pause a download to allow later resumal. This may or may not close
   * the network connection. In either case, new data won't be received.
   *
   * @param aDownload Download to pause, as returned by getDownload or
   *                  addDownload.
   *
   * Trying to pause a download that is already paused will throw
   * NS_ERROR_NOT_AVAILABLE.
   * NS_ERROR_UNEXPECTED may be thrown to indicate an internal error.
   * Any exception defined by nsIRequest::Suspend may be thrown.
   * No other exceptions will be thrown.
   */
  /* void pauseDownload (in nsIDownload aDownload); */
  nsresult PauseDownload(nsIDownload aDownload);

  /**
   * Resume a previously paused download.
   * @param aTargetPath Target path of the download to be resumed.
   *
   * @throws NS_ERROR_NOT_RESUMABLE If resuming is not supported for this
   *                                entity, or if the entity has changed since
   *                                the download was paused
   * @throws NS_ERROR_NOT_AVAILABLE If no such download exists, or if the
   *                                download was not paused, or if the
   *                                download is finished already.
   * In addition, this may throw NS_ERROR_OUT_OF_MEMORY, or any error defined by
   * nsIResumableChannel::setEntityID, nsIResumableChannel::asyncOpenAt,
   * nsIRequest::Resume, or nsIIOService::newChannel.
   * Also, NS_ERROR_UNEXPECTED may be thrown to indicate an internal error.
   */
  /* void resumeDownload (in AUTF8String aTargetPath); */
  nsresult ResumeDownload(nsACString * aTargetPath);

  /**
  * Removes the download with the specified target path if it's not
  * currently in progress.  Whereas cancelDownload simply cancels the transfer
  * but retains information about it, removeDownload removes all knowledge of it.
  *
  * @param aTargetPath           The target path of the download to
  *                              be removed.
  */
  /* void removeDownload (in AUTF8String aTargetPath); */
  nsresult RemoveDownload(nsACString * aTargetPath);

  /**
  * Opens the Download Manager front end.
  *
  * @param aParent The parent, or opener, of the front end (optional).
  * @param aDownload A download to pass to the manager window.  Useful
  *                  if, for example, you want the window to select a
  *                  certain download (optional).
  */
  /* void open (in nsIDOMWindow aParent, in nsIDownload aDownload); */
  nsresult Open(nsIDOMWindow aParent, nsIDownload aDownload);

  /**
  * Opens an individual progress dialog displaying progress for the download.
  *
  * @param aDownload The download object to display progress for, as returned
  *                  by getDownload or addDownload.
  *
  * @param aParent The parent, or opener, of the front end (optional).
  *
  * @param aCancelDownloadOnClose       Whether closing the dialog
  *                                     should cancel the download.
  */
  /* void openProgressDialogFor (in nsIDownload aDownload, in nsIDOMWindow aParent, in boolean aCancelDownloadOnClose); */
  nsresult OpenProgressDialogFor(nsIDownload aDownload, nsIDOMWindow aParent, PRBool aCancelDownloadOnClose);

  /**
  * Called when the download manager front end is closed.  Useful for
  * third party managers to let us know when they've closed.
  */
  /* void onClose (); */
  nsresult OnClose();

  /**
  * Indicate that a batch update (e.g. mass removal) is about to start.
  */
  /* void startBatchUpdate (); */
  nsresult StartBatchUpdate();

  /**
  * Indicate that a batch update is ending.
  */
  /* void endBatchUpdate (); */
  nsresult EndBatchUpdate();

}

