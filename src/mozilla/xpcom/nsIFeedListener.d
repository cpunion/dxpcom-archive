/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFeedListener.idl
 */

module mozilla.xpcom.nsIFeedListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIFeedResult; /* forward declaration */

public import mozilla.xpcom.nsIFeedEntry; /* forward declaration */


/* starting interface:    nsIFeedResultListener */
const char[] NS_IFEEDRESULTLISTENER_IID_STR = "4d2ebe88-36eb-4e20-bcd1-997b3c1f24ce";

const nsIID NS_IFEEDRESULTLISTENER_IID= 
  {0x4d2ebe88, 0x36eb, 0x4e20, 
    [ 0xbc, 0xd1, 0x99, 0x7b, 0x3c, 0x1f, 0x24, 0xce ]};

/**
 * nsIFeedResultListener defines a callback used when feed processing
 * completes.
 */
extern(Windows)
interface nsIFeedResultListener : nsISupports {
  static const char[] IID_STR = NS_IFEEDRESULTLISTENER_IID_STR;
  static const nsIID IID = NS_IFEEDRESULTLISTENER_IID;

  /** 
   * Always called, even after an error. There could be new feed-level
   * data available at this point, if it followed or was interspersed
   * with the items. Fire-and-Forget implementations only need this.
   * 
   * @param result
   *        An object implementing nsIFeedResult representing the feed 
   *        and its metadata. 
   */
  /* void handleResult (in nsIFeedResult result); */
  nsresult HandleResult(nsIFeedResult result);

}


/* starting interface:    nsIFeedProgressListener */
const char[] NS_IFEEDPROGRESSLISTENER_IID_STR = "ebfd5de5-713c-40c0-ad7c-f095117fa580";

const nsIID NS_IFEEDPROGRESSLISTENER_IID= 
  {0xebfd5de5, 0x713c, 0x40c0, 
    [ 0xad, 0x7c, 0xf0, 0x95, 0x11, 0x7f, 0xa5, 0x80 ]};

/**
 * nsIFeedProgressListener defines callbacks used during feed
 * processing.
 */
extern(Windows)
interface nsIFeedProgressListener : nsIFeedResultListener {
  static const char[] IID_STR = NS_IFEEDPROGRESSLISTENER_IID_STR;
  static const nsIID IID = NS_IFEEDPROGRESSLISTENER_IID;

  /**
   * ReportError will be called in the event of fatal
   * XML errors, or if the document is not a feed. The bozo 
   * bit will be set if the error was due to a fatal error. 
   * 
   * @param errorText
   *        A short description of the error.
   * @param lineNumber
   *        The line on which the error occured.
   */
  /* void reportError (in AString errorText, in long lineNumber, in boolean bozo); */
  nsresult ReportError(nsAString * errorText, PRInt32 lineNumber, PRBool bozo);

  /**
   * StartFeed will be called as soon as a reasonable start to
   * a feed is detected. 
   *  
   * @param result
   *        An object implementing nsIFeedResult representing the feed 
   *        and its metadata. At this point, the result has version 
   *        information.
   */
  /* void handleStartFeed (in nsIFeedResult result); */
  nsresult HandleStartFeed(nsIFeedResult result);

  /**
   * Called when the first entry/item is encountered. In Atom, all
   * feed data is required to preceed the entries. In RSS, the data
   * usually does. If the type is one of the entry/item-only types,
   * this event will not be called.
   *
   * @param result
   *        An object implementing nsIFeedResult representing the feed 
   *        and its metadata. At this point, the result will likely have
   *        most of its feed-level metadata.
   */
  /* void handleFeedAtFirstEntry (in nsIFeedResult result); */
  nsresult HandleFeedAtFirstEntry(nsIFeedResult result);

  /**
   * Called after each entry/item. If the document is a standalone
   * item or entry, this HandleFeedAtFirstEntry will not have been
   * called. Also, this entry's parent field will be null.
   * 
   * @param entry
   *        An object implementing nsIFeedEntry that represents the latest
   *        entry encountered.
   * @param result
   *        An object implementing nsIFeedResult representing the feed 
   *        and its metadata. 
   */
  /* void handleEntry (in nsIFeedEntry entry, in nsIFeedResult result); */
  nsresult HandleEntry(nsIFeedEntry entry, nsIFeedResult result);

}

