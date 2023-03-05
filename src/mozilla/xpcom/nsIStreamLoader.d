/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIStreamLoader.idl
 */

module mozilla.xpcom.nsIStreamLoader;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIChannel;

public import mozilla.xpcom.nsIRequest; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsILoadGroup; /* forward declaration */

public import mozilla.xpcom.nsIStreamLoader; /* forward declaration */

public import mozilla.xpcom.nsIInterfaceRequestor; /* forward declaration */


/* starting interface:    nsIStreamLoaderObserver */
const char[] NS_ISTREAMLOADEROBSERVER_IID_STR = "359f7990-d4e9-11d3-a1a5-0050041caf44";

const nsIID NS_ISTREAMLOADEROBSERVER_IID= 
  {0x359f7990, 0xd4e9, 0x11d3, 
    [ 0xa1, 0xa5, 0x00, 0x50, 0x04, 0x1c, 0xaf, 0x44 ]};

extern(Windows)
interface nsIStreamLoaderObserver : nsISupports {
  static const char[] IID_STR = NS_ISTREAMLOADEROBSERVER_IID_STR;
  static const nsIID IID = NS_ISTREAMLOADEROBSERVER_IID;

  /* void onStreamComplete (in nsIStreamLoader loader, in nsISupports ctxt, in nsresult status, in unsigned long resultLength, [array, size_is (resultLength), const] in octet result); */
  nsresult OnStreamComplete(nsIStreamLoader loader, nsISupports ctxt, nsresult status, PRUint32 resultLength, PRUint8 *result);

}


/* starting interface:    nsIStreamLoader */
const char[] NS_ISTREAMLOADER_IID_STR = "31d37360-8e5a-11d3-93ad-00104ba0fd40";

const nsIID NS_ISTREAMLOADER_IID= 
  {0x31d37360, 0x8e5a, 0x11d3, 
    [ 0x93, 0xad, 0x00, 0x10, 0x4b, 0xa0, 0xfd, 0x40 ]};

extern(Windows)
interface nsIStreamLoader : nsISupports {
  static const char[] IID_STR = NS_ISTREAMLOADER_IID_STR;
  static const nsIID IID = NS_ISTREAMLOADER_IID;

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
  nsresult Init(nsIChannel aChannel, nsIStreamLoaderObserver aObserver, nsISupports aContext);

  /**
     * Gets the number of bytes read so far.
     */
  /* readonly attribute unsigned long numBytesRead; */
  nsresult GetNumBytesRead(PRUint32 *aNumBytesRead);

  /**
     * Gets the request that loaded this file.
     * null after the request has finished loading.
     */
  /* readonly attribute nsIRequest request; */
  nsresult GetRequest(nsIRequest  *aRequest);

}

