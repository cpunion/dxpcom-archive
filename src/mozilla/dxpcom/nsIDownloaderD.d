/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDownloader.idl
 */

module mozilla.dxpcom.nsIDownloaderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDownloader;


public import mozilla.dxpcom.nsIDownloaderD;

public import mozilla.xpcom.nsIStreamListener;
public import mozilla.dxpcom.nsIStreamListenerD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;

public import mozilla.xpcom.nsIDownloader;

import mozilla.dxpcom.nsIDownloaderD;


/* starting wrapper class:    nsIDownloader */
/**
 * nsIDownloader
 *
 * A downloader is a special implementation of a nsIStreamListener that will
 * make the contents of the stream available as a file.  This may utilize the
 * disk cache as an optimization to avoid an extra copy of the data on disk.
 * The resulting file is valid from the time the downloader completes until
 * the last reference to the downloader is released.
 */
class nsIDownloaderD : public nsIStreamListenerD {

  static const nsIID IID = NS_IDOWNLOADER_IID;


  alias nsIDownloader InnerType;

  this(nsIDownloader intr){
    super(intr);
    this.inner = intr;
  }

  nsIDownloader opCast() {
    return inner;
  }

  void opAssign(nsIDownloader value) {
    inner = value;
  }

  /**
     * Initialize this downloader
     *
     * @param observer
     *        the observer to be notified when the download completes.
     * @param downloadLocation
     *        the location where the stream contents should be written.
     *        if null, the downloader will select a location and the
     *        resulting file will be deleted (or otherwise made invalid)
     *        when the downloader object is destroyed.  if an explicit
     *        download location is specified then the resulting file will
     *        not be deleted, and it will be the callers responsibility
     *        to keep track of the file, etc.
     */
  /* void init (in nsIDownloadObserver observer, in nsIFile downloadLocation); */
  void Init(nsIDownloadObserverD observer, nsIFileD downloadLocation){
    nsresult __result = inner.Init(observer ? cast(nsIDownloadObserver)observer : null, downloadLocation ? cast(nsIFile)downloadLocation : null);
    CheckException(__result);
  }

private:
  nsIDownloader inner;

}


/* starting wrapper class:    nsIDownloadObserver */
class nsIDownloadObserverD : public nsISupportsD {

  static const nsIID IID = NS_IDOWNLOADOBSERVER_IID;


  alias nsIDownloadObserver InnerType;

  this(nsIDownloadObserver intr){
    super(intr);
    this.inner = intr;
  }

  nsIDownloadObserver opCast() {
    return inner;
  }

  void opAssign(nsIDownloadObserver value) {
    inner = value;
  }

  /**
     * Called to signal a download that has completed.
     */
  /* void onDownloadComplete (in nsIDownloader downloader, in nsIRequest request, in nsISupports ctxt, in nsresult status, in nsIFile result); */
  void OnDownloadComplete(nsIDownloaderD downloader, nsIRequestD request, nsISupportsD ctxt, nsresult status, nsIFileD result){
    nsresult __result = inner.OnDownloadComplete(downloader ? cast(nsIDownloader)downloader : null, request ? cast(nsIRequest)request : null, ctxt ? cast(nsISupports)ctxt : null, status, result ? cast(nsIFile)result : null);
    CheckException(__result);
  }

private:
  nsIDownloadObserver inner;

}

