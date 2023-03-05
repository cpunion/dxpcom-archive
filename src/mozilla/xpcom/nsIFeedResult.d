/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFeedResult.idl
 */

module mozilla.xpcom.nsIFeedResult;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIFeedContainer; /* forward declaration */

public import mozilla.xpcom.nsIProperties; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsIFeedResult */
const char[] NS_IFEEDRESULT_IID_STR = "7a180b78-0f46-4569-8c22-f3d720ea1c57";

const nsIID NS_IFEEDRESULT_IID= 
  {0x7a180b78, 0x0f46, 0x4569, 
    [ 0x8c, 0x22, 0xf3, 0xd7, 0x20, 0xea, 0x1c, 0x57 ]};

/**
 * The nsIFeedResult interface provides access to HTTP and parsing
 * metadata for a feed or entry.
 */
extern(Windows)
interface nsIFeedResult : nsISupports {
  static const char[] IID_STR = NS_IFEEDRESULT_IID_STR;
  static const nsIID IID = NS_IFEEDRESULT_IID;

  /** 
  * The Feed parser will set the bozo bit when a feed triggers a fatal
  * error during XML parsing. There may be entries and feed metadata
  * that were parsed before the error.  Thanks to Tim Bray for
  * suggesting this terminology.
  * <http://www.tbray.org/ongoing/When/200x/2004/01/11/PostelPilgrim>
  */
  /* attribute boolean bozo; */
  nsresult GetBozo(PRBool *aBozo);
  nsresult SetBozo(PRBool aBozo);

  /**
  * The parsed feed or entry. 
  *
  * Will be null if a non-feed is processed.
  */
  /* attribute nsIFeedContainer doc; */
  nsresult GetDoc(nsIFeedContainer  *aDoc);
  nsresult SetDoc(nsIFeedContainer  aDoc);

  /** 
  * The address from which the feed was fetched. 
  */
  /* attribute nsIURI uri; */
  nsresult GetUri(nsIURI  *aUri);
  nsresult SetUri(nsIURI  aUri);

  /** 
  * Feed Version: 
  * atom, rss2, rss09, rss091, rss091userland, rss092, rss1, atom03, 
  * atomEntry, rssItem
  *
  * Will be null if a non-feed is processed.
  */
  /* attribute AString version; */
  nsresult GetVersion(nsAString * aVersion);
  nsresult SetVersion(nsAString * aVersion);

  /**
  * An XSLT stylesheet available to transform the source of the
  * feed. Some feeds include this information in a processing
  * instruction. It's generally intended for clients with specific
  * feed capabilities.
  */
  /* attribute nsIURI stylesheet; */
  nsresult GetStylesheet(nsIURI  *aStylesheet);
  nsresult SetStylesheet(nsIURI  aStylesheet);

  /**
  * HTTP response headers that accompanied the feed. 
  */
  /* attribute nsIProperties headers; */
  nsresult GetHeaders(nsIProperties  *aHeaders);
  nsresult SetHeaders(nsIProperties  aHeaders);

  /**
  * Registers a prefix used to access an extension in the feed/entry 
  */
  /* void registerExtensionPrefix (in AString namespace, in AString prefix); */
  nsresult RegisterExtensionPrefix(nsAString * namespace, nsAString * prefix);

}

