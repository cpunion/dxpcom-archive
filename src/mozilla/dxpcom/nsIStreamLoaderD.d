/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIStreamLoader.idl
 */

module mozilla.dxpcom.nsIStreamLoaderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIStreamLoader;


public import mozilla.dxpcom.nsIStreamLoaderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIChannel;
public import mozilla.dxpcom.nsIChannelD;

public import mozilla.xpcom.nsIRequest;

public import mozilla.dxpcom.nsIRequestD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsILoadGroup;

public import mozilla.dxpcom.nsILoadGroupD;

public import mozilla.xpcom.nsIStreamLoader;

public import mozilla.dxpcom.nsIStreamLoaderD;

public import mozilla.xpcom.nsIInterfaceRequestor;

public import mozilla.dxpcom.nsIInterfaceRequestorD;


/* starting wrapper class:    nsIStreamLoaderObserver */
class nsIStreamLoaderObserverD : public nsISupportsD {

  static const nsIID IID = NS_ISTREAMLOADEROBSERVER_IID;


  alias nsIStreamLoaderObserver InnerType;

  this(nsIStreamLoaderObserver intr){
    super(intr);
    this.inner = intr;
  }

  nsIStreamLoaderObserver opCast() {
    return inner;
  }

  void opAssign(nsIStreamLoaderObserver value) {
    inner = value;
  }

  /* void onStreamComplete (in nsIStreamLoader loader, in nsISupports ctxt, in nsresult status, in unsigned long resultLength, [array, size_is (resultLength), const] in octet result); */
  void OnStreamComplete(nsIStreamLoaderD loader, nsISupportsD ctxt, nsresult status, PRUint32 resultLength, PRUint8 *result){
    nsresult __result = inner.OnStreamComplete(loader ? cast(nsIStreamLoader)loader : null, ctxt ? cast(nsISupports)ctxt : null, status, resultLength, result);
    CheckException(__result);
  }

private:
  nsIStreamLoaderObserver inner;

}


/* starting wrapper class:    nsIStreamLoader */
class nsIStreamLoaderD : public nsISupportsD {

  static const nsIID IID = NS_ISTREAMLOADER_IID;


  alias nsIStreamLoader InnerType;

  this(nsIStreamLoader intr){
    super(intr);
    this.inner = intr;
  }

  nsIStreamLoader opCast() {
    return inner;
  }

  void opAssign(nsIStreamLoader value) {
    inner = value;
  }

  /**
 * Asynchronously loads a channel into a memory buffer.
 *
 * XXX define behaviour for sizes >4 GB
 */
/**
     * Initialize this stream loader, and start loading the data.
     *
     * @param aChannel
     *        A Channel to load data from. This must not be asyncOpen'd yet!
     * @param aObserver
     *        An observer that will be notified when the data is complete.
     * @param aContext
     *        May be null. Will be passed to the observer.
     *
     * @note Failure to open the channel will be indicated by an async callback
     *       to the observer.
     */
  /* void init (in nsIChannel aChannel, in nsIStreamLoaderObserver aObserver, in nsISupports aContext); */
  void Init(nsIChannelD aChannel, nsIStreamLoaderObserverD aObserver, nsISupportsD aContext){
    nsresult __result = inner.Init(aChannel ? cast(nsIChannel)aChannel : null, aObserver ? cast(nsIStreamLoaderObserver)aObserver : null, aContext ? cast(nsISupports)aContext : null);
    CheckException(__result);
  }

  /**
     * Gets the number of bytes read so far.
     */
  /* readonly attribute unsigned long numBytesRead; */
  PRUint32 NumBytesRead(){
    PRUint32 value;
    nsresult __result = inner.GetNumBytesRead(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Gets the request that loaded this file.
     * null after the request has finished loading.
     */
  /* readonly attribute nsIRequest request; */
  nsIRequestD  Request(){
    nsIRequest value;
    nsresult __result = inner.GetRequest(&value);
    CheckException(__result);
    return new nsIRequestD(value);
  }

private:
  nsIStreamLoader inner;

}

