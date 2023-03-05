/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFeedPerson.idl
 */

module mozilla.xpcom.nsIFeedPerson;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIFeedElementBase;

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsIFeedPerson */
const char[] NS_IFEEDPERSON_IID_STR = "29cbd45f-f2d3-4b28-b557-3ab7a61ecde4";

const nsIID NS_IFEEDPERSON_IID= 
  {0x29cbd45f, 0xf2d3, 0x4b28, 
    [ 0xb5, 0x57, 0x3a, 0xb7, 0xa6, 0x1e, 0xcd, 0xe4 ]};

/**
 *  An nsIFeedPerson represents an author or contributor of a feed.
 */
extern(Windows)
interface nsIFeedPerson : nsIFeedElementBase {
  static const char[] IID_STR = NS_IFEEDPERSON_IID_STR;
  static const nsIID IID = NS_IFEEDPERSON_IID;

  /**
   * The name of the person.
   */
  /* attribute AString name; */
  nsresult GetName(nsAString * aName);
  nsresult SetName(nsAString * aName);

  /**
   * An email address associated with the person.
   */
  /* attribute AString email; */
  nsresult GetEmail(nsAString * aEmail);
  nsresult SetEmail(nsAString * aEmail);

  /**
   * A URI associated with the person (e.g. a homepage).
   */
  /* attribute nsIURI uri; */
  nsresult GetUri(nsIURI  *aUri);
  nsresult SetUri(nsIURI  aUri);

}

