/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFeed.idl
 */

module mozilla.xpcom.nsIFeed;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIFeedContainer;

public import mozilla.xpcom.nsIArray; /* forward declaration */

public import mozilla.xpcom.nsIFeedGenerator; /* forward declaration */


/* starting interface:    nsIFeed */
const char[] NS_IFEED_IID_STR = "3b8aae33-80e2-4efa-99c8-a6c5b99f76ea";

const nsIID NS_IFEED_IID= 
  {0x3b8aae33, 0x80e2, 0x4efa, 
    [ 0x99, 0xc8, 0xa6, 0xc5, 0xb9, 0x9f, 0x76, 0xea ]};

/**
 * An nsIFeed represents a single Atom or RSS feed.
 */
extern(Windows)
interface nsIFeed : nsIFeedContainer {
  static const char[] IID_STR = NS_IFEED_IID_STR;
  static const nsIID IID = NS_IFEED_IID;

  /** 
  * Uses description, subtitle, and extensions
  * to generate a summary. 
  */
  /* attribute nsIFeedTextConstruct subtitle; */
  nsresult GetSubtitle(nsIFeedTextConstruct  *aSubtitle);
  nsresult SetSubtitle(nsIFeedTextConstruct  aSubtitle);

  enum { TYPE_FEED = 0U };

  enum { TYPE_AUDIO = 1U };

  enum { TYPE_IMAGE = 2U };

  enum { TYPE_VIDEO = 4U };

  /**
  * The type of feed. For example, a podcast would be TYPE_AUDIO.
  */
  /* readonly attribute unsigned long type; */
  nsresult GetType(PRUint32 *aType);

  /**
  * The total number of enclosures found in the feed.
  */
  /* attribute long enclosureCount; */
  nsresult GetEnclosureCount(PRInt32 *aEnclosureCount);
  nsresult SetEnclosureCount(PRInt32 aEnclosureCount);

  /**
  * The items or entries in feed.
  */
  /* attribute nsIArray items; */
  nsresult GetItems(nsIArray  *aItems);
  nsresult SetItems(nsIArray  aItems);

  /**
  * No one really knows what cloud is for.
  *
  * It supposedly enables some sort of interaction with an XML-RPC or
  * SOAP service.
  */
  /* attribute nsIWritablePropertyBag2 cloud; */
  nsresult GetCloud(nsIWritablePropertyBag2  *aCloud);
  nsresult SetCloud(nsIWritablePropertyBag2  aCloud);

  /**
  * Information about the software that produced the feed.
  */
  /* attribute nsIFeedGenerator generator; */
  nsresult GetGenerator(nsIFeedGenerator  *aGenerator);
  nsresult SetGenerator(nsIFeedGenerator  aGenerator);

  /**
  * An image url and some metadata (as defined by RSS2).
  *
  */
  /* attribute nsIWritablePropertyBag2 image; */
  nsresult GetImage(nsIWritablePropertyBag2  *aImage);
  nsresult SetImage(nsIWritablePropertyBag2  aImage);

  /**
  * No one really knows what textInput is for.
  *
  * See
  * <http://www.cadenhead.org/workbench/news/2894/rss-joy-textinput>
  * for more details.
  */
  /* attribute nsIWritablePropertyBag2 textInput; */
  nsresult GetTextInput(nsIWritablePropertyBag2  *aTextInput);
  nsresult SetTextInput(nsIWritablePropertyBag2  aTextInput);

  /**
  * Days to skip fetching. This field was supposed to designate
  * intervals for feed fetching. It's not generally implemented. For
  * example, if this array contained "Monday", aggregators should not
  * fetch the feed on Mondays.
  */
  /* attribute nsIArray skipDays; */
  nsresult GetSkipDays(nsIArray  *aSkipDays);
  nsresult SetSkipDays(nsIArray  aSkipDays);

  /**
  * Hours to skip fetching. This field was supposed to designate
  * intervals for feed fetching. It's not generally implemented. See
  * <http://blogs.law.harvard.edu/tech/rss> for more information.
  */
  /* attribute nsIArray skipHours; */
  nsresult GetSkipHours(nsIArray  *aSkipHours);
  nsresult SetSkipHours(nsIArray  aSkipHours);

}

