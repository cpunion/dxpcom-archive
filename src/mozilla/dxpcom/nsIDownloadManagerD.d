/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDownloadManager.idl
 */

module mozilla.dxpcom.nsIDownloadManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDownloadManager;


public import mozilla.dxpcom.nsIDownloadManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.dxpcom.nsIDOMWindowD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsILocalFile;

public import mozilla.dxpcom.nsILocalFileD;

public import mozilla.xpcom.nsIDownload;

public import mozilla.dxpcom.nsIDownloadD;

public import mozilla.xpcom.nsICancelable;

public import mozilla.dxpcom.nsICancelableD;

public import mozilla.xpcom.nsIMIMEInfo;

public import mozilla.dxpcom.nsIMIMEInfoD;


/* starting wrapper class:    nsIDownloadManager */
class nsIDownloadManagerD : public nsISupportsD {

  static const nsIID IID = NS_IDOWNLOADMANAGER_IID;


  alias nsIDownloadManager InnerType;

  this(nsIDownloadManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIDownloadManager opCast() {
    return inner;
  }

  void opAssign(nsIDownloadManager value) {
    inner = value;
  }

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
  nsIDownloadD  AddDownload(nsIURID aSource, nsIURID aTarget, wchar[] aDisplayName, nsIMIMEInfoD aMIMEInfo, PRTime startTime, nsILocalFileD aTempFile, nsICancelableD aCancelable){
    scope auto _aDisplayName = new AString(aDisplayName);
    nsIDownload _retval;
    nsresult __result = inner.AddDownload(aSource ? cast(nsIURI)aSource : null, aTarget ? cast(nsIURI)aTarget : null, cast(nsAString*)_aDisplayName, aMIMEInfo ? cast(nsIMIMEInfo)aMIMEInfo : null, startTime, aTempFile ? cast(nsILocalFile)aTempFile : null, aCancelable ? cast(nsICancelable)aCancelable : null, &_retval);
    CheckException(__result);
    return new nsIDownloadD(_retval);
  }

  /**
  *  Retrieves an in-progress download managed by the download manager.
  *
  *  @param aTargetPath           A UTF8-encoded path to the target file.
  *
  *  @return The download with the specified path.
  */
  /* nsIDownload getDownload (in AUTF8String aTargetPath); */
  nsIDownloadD  GetDownload(char[] aTargetPath){
    scope auto _aTargetPath = new ACString(aTargetPath);
    nsIDownload _retval;
    nsresult __result = inner.GetDownload(cast(nsACString*)_aTargetPath, &_retval);
    CheckException(__result);
    return new nsIDownloadD(_retval);
  }

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
  void CancelDownload(char[] aTargetPath){
    scope auto _aTargetPath = new ACString(aTargetPath);
    nsresult __result = inner.CancelDownload(cast(nsACString*)_aTargetPath);
    CheckException(__result);
  }

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
  void PauseDownload(nsIDownloadD aDownload){
    nsresult __result = inner.PauseDownload(aDownload ? cast(nsIDownload)aDownload : null);
    CheckException(__result);
  }

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
  void ResumeDownload(char[] aTargetPath){
    scope auto _aTargetPath = new ACString(aTargetPath);
    nsresult __result = inner.ResumeDownload(cast(nsACString*)_aTargetPath);
    CheckException(__result);
  }

  /**
  * Removes the download with the specified target path if it's not
  * currently in progress.  Whereas cancelDownload simply cancels the transfer
  * but retains information about it, removeDownload removes all knowledge of it.
  *
  * @param aTargetPath           The target path of the download to
  *                              be removed.
  */
  /* void removeDownload (in AUTF8String aTargetPath); */
  void RemoveDownload(char[] aTargetPath){
    scope auto _aTargetPath = new ACString(aTargetPath);
    nsresult __result = inner.RemoveDownload(cast(nsACString*)_aTargetPath);
    CheckException(__result);
  }

  /**
  * Opens the Download Manager front end.
  *
  * @param aParent The parent, or opener, of the front end (optional).
  * @param aDownload A download to pass to the manager window.  Useful
  *                  if, for example, you want the window to select a
  *                  certain download (optional).
  */
  /* void open (in nsIDOMWindow aParent, in nsIDownload aDownload); */
  void Open(nsIDOMWindowD aParent, nsIDownloadD aDownload){
    nsresult __result = inner.Open(aParent ? cast(nsIDOMWindow)aParent : null, aDownload ? cast(nsIDownload)aDownload : null);
    CheckException(__result);
  }

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
  void OpenProgressDialogFor(nsIDownloadD aDownload, nsIDOMWindowD aParent, PRBool aCancelDownloadOnClose){
    nsresult __result = inner.OpenProgressDialogFor(aDownload ? cast(nsIDownload)aDownload : null, aParent ? cast(nsIDOMWindow)aParent : null, aCancelDownloadOnClose);
    CheckException(__result);
  }

  /**
  * Called when the download manager front end is closed.  Useful for
  * third party managers to let us know when they've closed.
  */
  /* void onClose (); */
  void OnClose(){
    nsresult __result = inner.OnClose();
    CheckException(__result);
  }

  /**
  * Indicate that a batch update (e.g. mass removal) is about to start.
  */
  /* void startBatchUpdate (); */
  void StartBatchUpdate(){
    nsresult __result = inner.StartBatchUpdate();
    CheckException(__result);
  }

  /**
  * Indicate that a batch update is ending.
  */
  /* void endBatchUpdate (); */
  void EndBatchUpdate(){
    nsresult __result = inner.EndBatchUpdate();
    CheckException(__result);
  }

private:
  nsIDownloadManager inner;

}

