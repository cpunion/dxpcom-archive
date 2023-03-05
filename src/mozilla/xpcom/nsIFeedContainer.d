/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFeedContainer.idl
 */

module mozilla.xpcom.nsIFeedContainer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIFeedElementBase;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIWritablePropertyBag2; /* forward declaration */

public import mozilla.xpcom.nsIArray; /* forward declaration */

public import mozilla.xpcom.nsIFeedTextConstruct; /* forward declaration */


/* starting interface:    nsIFeedContainer */
const char[] NS_IFEEDCONTAINER_IID_STR = "577a1b4c-b3d4-4c76-9cf8-753e6606114f";

const nsIID NS_IFEEDCONTAINER_IID= 
  {0x577a1b4c, 0xb3d4, 0x4c76, 
    [ 0x9c, 0xf8, 0x75, 0x3e, 0x66, 0x06, 0x11, 0x4f ]};

/**
* A shared base for feeds and items, which are pretty similar,
* but they have some divergent attributes and require
* different convenience methods.
*/
extern(Windows)
interface nsIFeedContainer : nsIFeedElementBase {
  static const char[] IID_STR = NS_IFEEDCONTAINER_IID_STR;
  static const nsIID IID = NS_IFEEDCONTAINER_IID;

  /**
  * Many feeds contain an ID distinct from their URI, and
  * entries have standard fields for this in all major formats.
  */
  /* attribute AString id; */
  nsresult GetId(nsAString * aId);
  nsresult SetId(nsAString * aId);

  /**
  * The fields found in the document. Common Atom
  * and RSS fields are normalized. This includes some namespaced
  * extensions such as dc:subject and content:encoded. 
  * Consumers can avoid normalization by checking the feed type
  * and accessing specific fields.
  *
  * Common namespaces are accessed using prefixes, like get("dc:subject");.
  * See nsIFeedResult::registerExtensionPrefix.
  */
  /* attribute nsIWritablePropertyBag2 fields; */
  nsresult GetFields(nsIWritablePropertyBag2  *aFields);
  nsresult SetFields(nsIWritablePropertyBag2  aFields);

  /**
   * Sometimes there's no title, or the title contains markup, so take
   * care in decoding the attribute.
   */
  /* attribute nsIFeedTextConstruct title; */
  nsresult GetTitle(nsIFeedTextConstruct  *aTitle);
  nsresult SetTitle(nsIFeedTextConstruct  aTitle);

  /**
  * Returns the primary link for the feed or entry.
  */
  /* attribute nsIURI link; */
  nsresult GetLink(nsIURI  *aLink);
  nsresult SetLink(nsIURI  aLink);

  /**
  * Returns all links for a feed or entry.
  */
  /* attribute nsIArray links; */
  nsresult GetLinks(nsIArray  *aLinks);
  nsresult SetLinks(nsIArray  aLinks);

  /**
  * Returns the categories found in a feed or entry.
  */
  /* attribute nsIArray categories; */
  nsresult GetCategories(nsIArray  *aCategories);
  nsresult SetCategories(nsIArray  aCategories);

  /**
   * The rights or license associated with a feed or entry.
   */
  /* attribute nsIFeedTextConstruct rights; */
  nsresult GetRights(nsIFeedTextConstruct  *aRights);
  nsresult SetRights(nsIFeedTextConstruct  aRights);

  /**
   * A list of nsIFeedPersons that authored the feed.
   */
  /* attribute nsIArray authors; */
  nsresult GetAuthors(nsIArray  *aAuthors);
  nsresult SetAuthors(nsIArray  aAuthors);

  /**
   * A list of nsIFeedPersons that contributed to the feed.
   */
  /* attribute nsIArray contributors; */
  nsresult GetContributors(nsIArray  *aContributors);
  nsresult SetContributors(nsIArray  aContributors);

  /**
   * The date the feed was updated, in RFC822 form. Parsable by JS
   * and mail code.
   */
  /* attribute AString updated; */
  nsresult GetUpdated(nsAString * aUpdated);
  nsresult SetUpdated(nsAString * aUpdated);

  /**
  * Syncs a container's fields with its convenience attributes.
  */
  /* void normalize (); */
  nsresult Normalize();

}

