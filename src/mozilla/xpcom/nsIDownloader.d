/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDownloader.idl
 */

module mozilla.xpcom.nsIDownloader;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIStreamListener;

public import mozilla.xpcom.nsIFile; /* forward declaration */

public import mozilla.xpcom.nsIDownloader;


/* starting interface:    nsIDownloader */
const char[] NS_IDOWNLOADER_IID_STR = "fafe41a9-a531-4d6d-89bc-588a6522fb4e";

const nsIID NS_IDOWNLOADER_IID= 
  {0xfafe41a9, 0xa531, 0x4d6d, 
    [ 0x89, 0xbc, 0x58, 0x8a, 0x65, 0x22, 0xfb, 0x4e ]};

/**
 * nsIDownloader
 *
 * A downloader is a special implementation of a nsIStreamListener that will
 * make the contents of the stream available as a file.  This may utilize the
 * disk cache as an optimization to avoid an extra copy of the data on disk.
 * The resulting file is valid from the time the downloader completes until
 * the last reference to the downloader is released.
 */
extern(Windows)
interface nsIDownloader : nsIStreamListener {
  static const char[] IID_STR = NS_IDOWNLOADER_IID_STR;
  static const nsIID IID = NS_IDOWNLOADER_IID;

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
  nsresult Init(nsIDownloadObserver observer, nsIFile downloadLocation);

}


/* starting interface:    nsIDownloadObserver */
const char[] NS_IDOWNLOADOBSERVER_IID_STR = "44b3153e-a54e-4077-a527-b0325e40924e";

const nsIID NS_IDOWNLOADOBSERVER_IID= 
  {0x44b3153e, 0xa54e, 0x4077, 
    [ 0xa5, 0x27, 0xb0, 0x32, 0x5e, 0x40, 0x92, 0x4e ]};

extern(Windows)
interface nsIDownloadObserver : nsISupports {
  static const char[] IID_STR = NS_IDOWNLOADOBSERVER_IID_STR;
  static const nsIID IID = NS_IDOWNLOADOBSERVER_IID;

  /**
     * Called to signal a download that has completed.
     */
  /* void onDownloadComplete (in nsIDownloader downloader, in nsIRequest request, in nsISupports ctxt, in nsresult status, in nsIFile result); */
  nsresult OnDownloadComplete(nsIDownloader downloader, nsIRequest request, nsISupports ctxt, nsresult status, nsIFile result);

}

