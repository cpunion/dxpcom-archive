/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUnicharStreamLoader.idl
 */

module mozilla.xpcom.nsIUnicharStreamLoader;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIUnicharInputStream; /* forward declaration */

public import mozilla.xpcom.nsIUnicharStreamLoader; /* forward declaration */

public import mozilla.xpcom.nsIChannel; /* forward declaration */


/* starting interface:    nsIUnicharStreamLoaderObserver */
const char[] NS_IUNICHARSTREAMLOADEROBSERVER_IID_STR = "e06e8b08-8cdd-4503-a0a0-6f3b943602af";

const nsIID NS_IUNICHARSTREAMLOADEROBSERVER_IID= 
  {0xe06e8b08, 0x8cdd, 0x4503, 
    [ 0xa0, 0xa0, 0x6f, 0x3b, 0x94, 0x36, 0x02, 0xaf ]};

extern(Windows)
interface nsIUnicharStreamLoaderObserver : nsISupports {
  static const char[] IID_STR = NS_IUNICHARSTREAMLOADEROBSERVER_IID_STR;
  static const nsIID IID = NS_IUNICHARSTREAMLOADEROBSERVER_IID;

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
  nsresult OnDetermineCharset(nsIUnicharStreamLoader aLoader, nsISupports aContext, char *aFirstSegment, PRUint32 aLength, nsACString * _retval);

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
  nsresult OnStreamComplete(nsIUnicharStreamLoader aLoader, nsISupports aContext, nsresult aStatus, nsIUnicharInputStream aUnicharData);

}


/* starting interface:    nsIUnicharStreamLoader */
const char[] NS_IUNICHARSTREAMLOADER_IID_STR = "8a3eca16-167e-443d-9485-7e84ed822e95";

const nsIID NS_IUNICHARSTREAMLOADER_IID= 
  {0x8a3eca16, 0x167e, 0x443d, 
    [ 0x94, 0x85, 0x7e, 0x84, 0xed, 0x82, 0x2e, 0x95 ]};

extern(Windows)
interface nsIUnicharStreamLoader : nsISupports {
  static const char[] IID_STR = NS_IUNICHARSTREAMLOADER_IID_STR;
  static const nsIID IID = NS_IUNICHARSTREAMLOADER_IID;

  enum { DEFAULT_SEGMENT_SIZE = 4096U };

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
  nsresult Init(nsIChannel aChannel, nsIUnicharStreamLoaderObserver aObserver, nsISupports aContext, PRUint32 aSegmentSize);

  /**
   * The channel attribute is only valid inside the onDetermineCharset
   * and onStreamComplete callbacks.  Otherwise it will be null.
   */
  /* readonly attribute nsIChannel channel; */
  nsresult GetChannel(nsIChannel  *aChannel);

  /**
   * The charset that onDetermineCharset returned, if that's been
   * called.
   */
  /* readonly attribute ACString charset; */
  nsresult GetCharset(nsACString * aCharset);

}

