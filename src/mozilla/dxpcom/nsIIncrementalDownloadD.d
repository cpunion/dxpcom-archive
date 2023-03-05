/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIIncrementalDownload.idl
 */

module mozilla.dxpcom.nsIIncrementalDownloadD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIIncrementalDownload;


public import mozilla.dxpcom.nsIIncrementalDownloadD;

public import mozilla.xpcom.nsIRequest;
public import mozilla.dxpcom.nsIRequestD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;

public import mozilla.xpcom.nsIRequestObserver;

public import mozilla.dxpcom.nsIRequestObserverD;


/* starting wrapper class:    nsIIncrementalDownload */
/**
 * An incremental download object attempts to fetch a file piecemeal over time
 * in an effort to minimize network bandwidth usage.
 *
 * Canceling a background download does not cause the file on disk to be
 * deleted.
 */
class nsIIncrementalDownloadD : public nsIRequestD {

  static const nsIID IID = NS_IINCREMENTALDOWNLOAD_IID;


  alias nsIIncrementalDownload InnerType;

  this(nsIIncrementalDownload intr){
    super(intr);
    this.inner = intr;
  }

  nsIIncrementalDownload opCast() {
    return inner;
  }

  void opAssign(nsIIncrementalDownload value) {
    inner = value;
  }

  /**
   * Initialize the incremental download object.  If the destination file
   * already exists, then only the remaining portion of the file will be
   * fetched.
   *
   * NOTE: The downloader will create the destination file if it does not
   * already exist.  It will create the file with the permissions 0600 if
   * needed.  To affect the permissions of the file, consumers of this
   * interface may create an empty file at the specified destination prior to
   * starting the incremental download.
   *
   * NOTE: Since this class may create a temporary file at the specified
   * destination, it is advisable for the consumer of this interface to specify
   * a file name for the destination that would not tempt the user into
   * double-clicking it.  For example, it might be wise to append a file
   * extension like ".part" to the end of the destination to protect users from
   * accidentally running "blah.exe" before it is a complete file.
   *
   * @param uri
   *        The URI to fetch.
   * @param destination
   *        The location where the file is to be stored.
   * @param chunkSize
   *        The size of the chunks to fetch.  A non-positive value results in
   *        the default chunk size being used.
   * @param intervalInSeconds
   *        The amount of time to wait between fetching chunks.  Pass a
   *        negative to use the default interval, or 0 to fetch the remaining
   *        part of the file in one chunk.
   */
  /* void init (in nsIURI uri, in nsIFile destination, in long chunkSize, in long intervalInSeconds); */
  void Init(nsIURID uri, nsIFileD destination, PRInt32 chunkSize, PRInt32 intervalInSeconds){
    nsresult __result = inner.Init(uri ? cast(nsIURI)uri : null, destination ? cast(nsIFile)destination : null, chunkSize, intervalInSeconds);
    CheckException(__result);
  }

  /**
   * The URI being fetched.
   */
  /* readonly attribute nsIURI URI; */
  nsIURID  URI(){
    nsIURI value;
    nsresult __result = inner.GetURI(&value);
    CheckException(__result);
    return new nsIURID(value);
  }

  /**
   * The URI being fetched after any redirects have been followed.  This
   * attribute is set just prior to calling OnStartRequest on the observer
   * passed to the start method.
   */
  /* readonly attribute nsIURI finalURI; */
  nsIURID  FinalURI(){
    nsIURI value;
    nsresult __result = inner.GetFinalURI(&value);
    CheckException(__result);
    return new nsIURID(value);
  }

  /**
   * The file where the download is being written.
   */
  /* readonly attribute nsIFile destination; */
  nsIFileD  Destination(){
    nsIFile value;
    nsresult __result = inner.GetDestination(&value);
    CheckException(__result);
    return new nsIFileD(value);
  }

  /**
   * The total number of bytes for the requested file.  This attribute is set
   * just prior to calling OnStartRequest on the observer passed to the start
   * method.
   *
   * This attribute has a value of -1 if the total size is unknown.
   */
  /* readonly attribute long long totalSize; */
  PRInt64 TotalSize(){
    PRInt64 value;
    nsresult __result = inner.GetTotalSize(&value);
    CheckException(__result);
    return value;
  }

  /**
   * The current number of bytes downloaded so far.  This attribute is set just
   * prior to calling OnStartRequest on the observer passed to the start
   * method.
   *
   * This attribute has a value of -1 if the current size is unknown.
   */
  /* readonly attribute long long currentSize; */
  PRInt64 CurrentSize(){
    PRInt64 value;
    nsresult __result = inner.GetCurrentSize(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Start the incremental download.
   *
   * @param observer
   *        An observer to be notified of various events.  OnStartRequest is
   *        called when finalURI and totalSize have been determined or when an
   *        error occurs.  OnStopRequest is called when the file is completely
   *        downloaded or when an error occurs.  If this object implements
   *        nsIProgressEventSink, then its OnProgress method will be called as
   *        data is written to the destination file.  If this object implements
   *        nsIInterfaceRequestor, then it will be assigned as the underlying
   *        channel's notification callbacks, which allows it to provide a
   *        nsIAuthPrompt implementation if needed by the channel, for example.
   * @param ctxt
   *        User defined object forwarded to the observer's methods.
   */
  /* void start (in nsIRequestObserver observer, in nsISupports ctxt); */
  void Start(nsIRequestObserverD observer, nsISupportsD ctxt){
    nsresult __result = inner.Start(observer ? cast(nsIRequestObserver)observer : null, ctxt ? cast(nsISupports)ctxt : null);
    CheckException(__result);
  }

private:
  nsIIncrementalDownload inner;

}

