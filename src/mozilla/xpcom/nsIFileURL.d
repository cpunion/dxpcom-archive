/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFileURL.idl
 */

module mozilla.xpcom.nsIFileURL;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIURL;

public import mozilla.xpcom.nsIFile; /* forward declaration */


/* starting interface:    nsIFileURL */
const char[] NS_IFILEURL_IID_STR = "d26b2e2e-1dd1-11b2-88f3-8545a7ba7949";

const nsIID NS_IFILEURL_IID= 
  {0xd26b2e2e, 0x1dd1, 0x11b2, 
    [ 0x88, 0xf3, 0x85, 0x45, 0xa7, 0xba, 0x79, 0x49 ]};

/**
 * nsIFileURL provides access to the underlying nsIFile object corresponding to
 * an URL.  The URL scheme need not be file:, since other local protocols may
 * map URLs to files (e.g., resource:).
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIFileURL : nsIURL {
  static const char[] IID_STR = NS_IFILEURL_IID_STR;
  static const nsIID IID = NS_IFILEURL_IID;

  /**
     * Get/Set nsIFile corresponding to this URL.
     *
     *  - Getter returns a reference to an immutable object.  Callers must clone
     *    before attempting to modify the returned nsIFile object.  NOTE: this
     *    constraint might not be enforced at runtime, so beware!!
     *
     *  - Setter clones the nsIFile object (allowing the caller to safely modify
     *    the nsIFile object after setting it on this interface).
     */
  /* attribute nsIFile file; */
  nsresult GetFile(nsIFile  *aFile);
  nsresult SetFile(nsIFile  aFile);

}

