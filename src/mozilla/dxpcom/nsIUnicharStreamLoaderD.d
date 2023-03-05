/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUnicharStreamLoader.idl
 */

module mozilla.dxpcom.nsIUnicharStreamLoaderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIUnicharStreamLoader;


public import mozilla.dxpcom.nsIUnicharStreamLoaderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIUnicharInputStream;

public import mozilla.dxpcom.nsIUnicharInputStreamD;

public import mozilla.xpcom.nsIUnicharStreamLoader;

public import mozilla.dxpcom.nsIUnicharStreamLoaderD;

public import mozilla.xpcom.nsIChannel;

public import mozilla.dxpcom.nsIChannelD;


/* starting wrapper class:    nsIUnicharStreamLoaderObserver */
class nsIUnicharStreamLoaderObserverD : public nsISupportsD {

  static const nsIID IID = NS_IUNICHARSTREAMLOADEROBSERVER_IID;


  alias nsIUnicharStreamLoaderObserver InnerType;

  this(nsIUnicharStreamLoaderObserver intr){
    super(intr);
    this.inner = intr;
  }

  nsIUnicharStreamLoaderObserver opCast() {
    return inner;
  }

  void opAssign(nsIUnicharStreamLoaderObserver value) {
    inner = value;
  }

  /**
   * Called when the first full segment of data if available.
   *
   * @param aLoader the unichar stream loader
   * @param aContext the aContext parameter passed to the loader's init method
   * @param aFirstSegment the raw bytes of the first full data segment
   * @param aLength the length of aFirstSegment
   *
   * @return charset corresponding to this stream
   */
  /* ACString onDetermineCharset (in nsIUnicharStreamLoader aLoader, in nsISupports aContext, [size_is (aLength)] in string aFirstSegment, in unsigned long aLength); */
  char[] OnDetermineCharset(nsIUnicharStreamLoaderD aLoader, nsISupportsD aContext, char*aFirstSegment, PRUint32 aLength){
    scope auto _retval = new ACString;
    nsresult __result = inner.OnDetermineCharset(aLoader ? cast(nsIUnicharStreamLoader)aLoader : null, aContext ? cast(nsISupports)aContext : null, aFirstSegment, aLength, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Called when the entire stream has been loaded.
   *
   * @param aLoader the unichar stream loader
   * @param aContext the aContext parameter passed to the loader's init method
   * @param aStatus the status of the underlying channel
   * @param aUnicharData the unichar input stream containing the data.  This
   *        can be null in some failure conditions.
   */
  /* void onStreamComplete (in nsIUnicharStreamLoader aLoader, in nsISupports aContext, in nsresult aStatus, in nsIUnicharInputStream aUnicharData); */
  void OnStreamComplete(nsIUnicharStreamLoaderD aLoader, nsISupportsD aContext, nsresult aStatus, nsIUnicharInputStreamD aUnicharData){
    nsresult __result = inner.OnStreamComplete(aLoader ? cast(nsIUnicharStreamLoader)aLoader : null, aContext ? cast(nsISupports)aContext : null, aStatus, aUnicharData ? cast(nsIUnicharInputStream)aUnicharData : null);
    CheckException(__result);
  }

private:
  nsIUnicharStreamLoaderObserver inner;

}


/* starting wrapper class:    nsIUnicharStreamLoader */
class nsIUnicharStreamLoaderD : public nsISupportsD {

  static const nsIID IID = NS_IUNICHARSTREAMLOADER_IID;


  alias nsIUnicharStreamLoader InnerType;

  this(nsIUnicharStreamLoader intr){
    super(intr);
    this.inner = intr;
  }

  nsIUnicharStreamLoader opCast() {
    return inner;
  }

  void opAssign(nsIUnicharStreamLoader value) {
    inner = value;
  }

  enum { DEFAULT_SEGMENT_SIZE = 4096U }

  /**
   * Initializes the unichar stream loader
   *
   * @param aChannel the channel to read data from.  This should _not_ be
   *        opened; the loader will open the channel itself.
   * @param aObserver the observer to notify when a charset is needed and when
   *        the load is complete
   * @param aContext an opaque context pointer
   * @param aSegmentSize the size of the segments to use for the data, in bytes
   */
  /* void init (in nsIChannel aChannel, in nsIUnicharStreamLoaderObserver aObserver, in nsISupports aContext, in unsigned long aSegmentSize); */
  void Init(nsIChannelD aChannel, nsIUnicharStreamLoaderObserverD aObserver, nsISupportsD aContext, PRUint32 aSegmentSize){
    nsresult __result = inner.Init(aChannel ? cast(nsIChannel)aChannel : null, aObserver ? cast(nsIUnicharStreamLoaderObserver)aObserver : null, aContext ? cast(nsISupports)aContext : null, aSegmentSize);
    CheckException(__result);
  }

  /**
   * The channel attribute is only valid inside the onDetermineCharset
   * and onStreamComplete callbacks.  Otherwise it will be null.
   */
  /* readonly attribute nsIChannel channel; */
  nsIChannelD  Channel(){
    nsIChannel value;
    nsresult __result = inner.GetChannel(&value);
    CheckException(__result);
    return new nsIChannelD(value);
  }

  /**
   * The charset that onDetermineCharset returned, if that's been
   * called.
   */
  /* readonly attribute ACString charset; */
  char[] Charset(){
    scope auto value = new ACString();
    nsresult __result = inner.GetCharset(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

private:
  nsIUnicharStreamLoader inner;

}

