/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFeedProcessor.idl
 */

module mozilla.xpcom.nsIFeedProcessor;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIStreamListener;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIFeedListener;

public import mozilla.xpcom.nsIInputStream; /* forward declaration */


/* starting interface:    nsIFeedProcessor */
const char[] NS_IFEEDPROCESSOR_IID_STR = "8a0b2908-21b0-45d7-b14d-30df0f92afc7";

const nsIID NS_IFEEDPROCESSOR_IID= 
  {0x8a0b2908, 0x21b0, 0x45d7, 
    [ 0xb1, 0x4d, 0x30, 0xdf, 0x0f, 0x92, 0xaf, 0xc7 ]};

/**
 * An nsIFeedProcessor parses feeds, triggering callbacks based on
 * their contents.
 */
extern(Windows)
interface nsIFeedProcessor : nsIStreamListener {
  static const char[] IID_STR = NS_IFEEDPROCESSOR_IID_STR;
  static const nsIID IID = NS_IFEEDPROCESSOR_IID;

  /**
   * The listener that will respond to feed events. 
   */
  /* attribute nsIFeedResultListener listener; */
  nsresult GetListener(nsIFeedResultListener  *aListener);
  nsresult SetListener(nsIFeedResultListener  aListener);

  /**
   * Parse a feed from an nsIInputStream.
   *
   * @param stream The input stream.
   * @param uri The base URI.
   */
  /* void parseFromStream (in nsIInputStream stream, in nsIURI uri); */
  nsresult ParseFromStream(nsIInputStream stream, nsIURI uri);

  /**
   * Parse a feed from a string.
   *
   * @param str The string to parse.
   * @param uri The base URI.
   */
  /* void parseFromString (in AString str, in nsIURI uri); */
  nsresult ParseFromString(nsAString * str, nsIURI uri);

  /**
   * Parse a feed asynchronously. The caller must then call the
   * nsIFeedProcessor's nsIStreamListener methods to drive the
   * parse. Do not call the other parse methods during an asynchronous
   * parse.
   *
   * @param requestObserver The observer to notify on start/stop. This
   *                        argument can be null.
   * @param uri The base URI.
   */
  /* void parseAsync (in nsIRequestObserver requestObserver, in nsIURI uri); */
  nsresult ParseAsync(nsIRequestObserver requestObserver, nsIURI uri);

}

