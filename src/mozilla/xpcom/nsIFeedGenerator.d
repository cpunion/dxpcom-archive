/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFeedGenerator.idl
 */

module mozilla.xpcom.nsIFeedGenerator;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIFeedElementBase;

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsIFeedGenerator */
const char[] NS_IFEEDGENERATOR_IID_STR = "0fecd56b-bd92-481b-a486-b8d489cdd385";

const nsIID NS_IFEEDGENERATOR_IID= 
  {0x0fecd56b, 0xbd92, 0x481b, 
    [ 0xa4, 0x86, 0xb8, 0xd4, 0x89, 0xcd, 0xd3, 0x85 ]};

/**
 *  An nsIFeedGenerator represents the software used to create a feed.
 */
extern(Windows)
interface nsIFeedGenerator : nsIFeedElementBase {
  static const char[] IID_STR = NS_IFEEDGENERATOR_IID_STR;
  static const nsIID IID = NS_IFEEDGENERATOR_IID;

  /**
   * The name of the software.
   */
  /* attribute AString agent; */
  nsresult GetAgent(nsAString * aAgent);
  nsresult SetAgent(nsAString * aAgent);

  /**
   * The version of the software.
   */
  /* attribute AString version; */
  nsresult GetVersion(nsAString * aVersion);
  nsresult SetVersion(nsAString * aVersion);

  /**
   * A URI associated with the software.
   */
  /* attribute nsIURI uri; */
  nsresult GetUri(nsIURI  *aUri);
  nsresult SetUri(nsIURI  aUri);

}

