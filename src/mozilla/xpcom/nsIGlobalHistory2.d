/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIGlobalHistory2.idl
 */

module mozilla.xpcom.nsIGlobalHistory2;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsIGlobalHistory2 */
const char[] NS_IGLOBALHISTORY2_IID_STR = "cf777d42-1270-4b34-be7b-2931c93feda5";

const nsIID NS_IGLOBALHISTORY2_IID= 
  {0xcf777d42, 0x1270, 0x4b34, 
    [ 0xbe, 0x7b, 0x29, 0x31, 0xc9, 0x3f, 0xed, 0xa5 ]};

extern(Windows)
interface nsIGlobalHistory2 : nsISupports {
  static const char[] IID_STR = NS_IGLOBALHISTORY2_IID_STR;
  static const nsIID IID = NS_IGLOBALHISTORY2_IID;

  /**
     * Add a URI to global history
     *
     * @param aURI      the URI of the page
     * @param aRedirect whether the URI was redirected to another location;
     *                  this is 'true' for the original URI which is
     *                  redirected.
     * @param aToplevel whether the URI is loaded in a top-level window
     * @param aReferrer the URI of the referring page
     *
     * @note  Docshell will not filter out URI schemes like chrome: data:
     *        about: and view-source:.  Embedders should consider filtering out
     *        these schemes and others, e.g. mailbox: for the main URI and the
     *        referrer.
     */
  /* void addURI (in nsIURI aURI, in boolean aRedirect, in boolean aToplevel, in nsIURI aReferrer); */
  nsresult AddURI(nsIURI aURI, PRBool aRedirect, PRBool aToplevel, nsIURI aReferrer);

  /**
     * Checks to see whether the given URI is in history.
     *
     * @param aURI the uri to the page
     * @return true if a URI has been visited
     */
  /* boolean isVisited (in nsIURI aURI); */
  nsresult IsVisited(nsIURI aURI, PRBool *_retval);

  /**
     * Set the page title for the given uri. URIs that are not already in
     * global history will not be added.
     *
     * @param aURI    the URI for which to set to the title
     * @param aTitle  the page title
     */
  /* void setPageTitle (in nsIURI aURI, in AString aTitle); */
  nsresult SetPageTitle(nsIURI aURI, nsAString * aTitle);

}

