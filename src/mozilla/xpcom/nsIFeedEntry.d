/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFeedEntry.idl
 */

module mozilla.xpcom.nsIFeedEntry;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIFeedContainer;

public import mozilla.xpcom.nsIArray; /* forward declaration */


/* starting interface:    nsIFeedEntry */
const char[] NS_IFEEDENTRY_IID_STR = "31bfd5b4-8ff5-4bfd-a8cb-b3dfbd4f0a5b";

const nsIID NS_IFEEDENTRY_IID= 
  {0x31bfd5b4, 0x8ff5, 0x4bfd, 
    [ 0xa8, 0xcb, 0xb3, 0xdf, 0xbd, 0x4f, 0x0a, 0x5b ]};

/**
 * An nsIFeedEntry represents an Atom or RSS entry/item. Summary
 * and/or full-text content may be available, but callers will have to
 * check both.
 */
extern(Windows)
interface nsIFeedEntry : nsIFeedContainer {
  static const char[] IID_STR = NS_IFEEDENTRY_IID_STR;
  static const nsIID IID = NS_IFEEDENTRY_IID;

  /**
  * Uses description, subtitle, summary, content and extensions
  * to generate a summary. 
  * 
  */
  /* attribute nsIFeedTextConstruct summary; */
  nsresult GetSummary(nsIFeedTextConstruct  *aSummary);
  nsresult SetSummary(nsIFeedTextConstruct  aSummary);

  /**
   * The date the entry was published, in RFC822 form. Parsable by JS
   * and mail code.
   */
  /* attribute AString published; */
  nsresult GetPublished(nsAString * aPublished);
  nsresult SetPublished(nsAString * aPublished);

  /**
  * Uses atom:content and content:encoded to provide
  * a 'full text' view of an entry.
  *
  */
  /* attribute nsIFeedTextConstruct content; */
  nsresult GetContent(nsIFeedTextConstruct  *aContent);
  nsresult SetContent(nsIFeedTextConstruct  aContent);

  /**
  * Enclosures are podcasts, photocasts, etc.
  */
  /* attribute nsIArray enclosures; */
  nsresult GetEnclosures(nsIArray  *aEnclosures);
  nsresult SetEnclosures(nsIArray  aEnclosures);

  /**
  * Enclosures, etc. that might be displayed inline.
  */
  /* attribute nsIArray mediaContent; */
  nsresult GetMediaContent(nsIArray  *aMediaContent);
  nsresult SetMediaContent(nsIArray  aMediaContent);

}

