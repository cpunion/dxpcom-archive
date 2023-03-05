/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFeedElementBase.idl
 */

module mozilla.xpcom.nsIFeedElementBase;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsISAXAttributes; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsIFeedElementBase */
const char[] NS_IFEEDELEMENTBASE_IID_STR = "5215291e-fa0a-40c2-8ce7-e86cd1a1d3fa";

const nsIID NS_IFEEDELEMENTBASE_IID= 
  {0x5215291e, 0xfa0a, 0x40c2, 
    [ 0x8c, 0xe7, 0xe8, 0x6c, 0xd1, 0xa1, 0xd3, 0xfa ]};

/**
 *  An nsIFeedGenerator represents the software used to create a feed.
 */
extern(Windows)
interface nsIFeedElementBase : nsISupports {
  static const char[] IID_STR = NS_IFEEDELEMENTBASE_IID_STR;
  static const nsIID IID = NS_IFEEDELEMENTBASE_IID;

  /**
   * The attributes found on the element. Most interfaces provide convenience
   * accessors for their standard fields, so this useful only when looking for
   * an extension.
   */
  /* attribute nsISAXAttributes attributes; */
  nsresult GetAttributes(nsISAXAttributes  *aAttributes);
  nsresult SetAttributes(nsISAXAttributes  aAttributes);

  /**
   * The baseURI for the Entry or Feed.
   */
  /* attribute nsIURI baseURI; */
  nsresult GetBaseURI(nsIURI  *aBaseURI);
  nsresult SetBaseURI(nsIURI  aBaseURI);

}

