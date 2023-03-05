/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIURLFetcher.idl
 */

module mozilla.dxpcom.nsIURLFetcherD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIURLFetcher;


public import mozilla.dxpcom.nsIURLFetcherD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIURI;
public import mozilla.dxpcom.nsIURID;
public import mozilla.xpcom.nsIFileStreams;
public import mozilla.dxpcom.nsIFileStreamsD;
public import mozilla.xpcom.nsILocalFile;
public import mozilla.dxpcom.nsILocalFileD;


/* starting wrapper class:    nsIURLFetcher */
class nsIURLFetcherD : public nsISupportsD {

  static const nsIID IID = NS_IURLFETCHER_IID;


  alias nsIURLFetcher InnerType;

  this(nsIURLFetcher intr){
    super(intr);
    this.inner = intr;
  }

  nsIURLFetcher opCast() {
    return inner;
  }

  void opAssign(nsIURLFetcher value) {
    inner = value;
  }

  /* boolean stillRunning (); */
  PRBool StillRunning(){
    PRBool _retval;
    nsresult __result = inner.StillRunning(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void fireURLRequest (in nsIURI aURL, in nsILocalFile localFile, in nsIFileOutputStream fileStream, in nsAttachSaveCompletionCallback cb, in voidPtr tagData); */
  void FireURLRequest(nsIURID aURL, nsILocalFileD localFile, nsIFileOutputStreamD fileStream, nsAttachSaveCompletionCallback cb, void * tagData){
    nsresult __result = inner.FireURLRequest(aURL ? cast(nsIURI)aURL : null, localFile ? cast(nsILocalFile)localFile : null, fileStream ? cast(nsIFileOutputStream)fileStream : null, cb, tagData);
    CheckException(__result);
  }

  /* void initialize (in nsILocalFile localFile, in nsIFileOutputStream fileStream, in nsAttachSaveCompletionCallback cb, in voidPtr tagData); */
  void Initialize(nsILocalFileD localFile, nsIFileOutputStreamD fileStream, nsAttachSaveCompletionCallback cb, void * tagData){
    nsresult __result = inner.Initialize(localFile ? cast(nsILocalFile)localFile : null, fileStream ? cast(nsIFileOutputStream)fileStream : null, cb, tagData);
    CheckException(__result);
  }

private:
  nsIURLFetcher inner;

}

