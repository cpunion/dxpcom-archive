/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBrowserHistory.idl
 */

module mozilla.xpcom.nsIBrowserHistory;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIGlobalHistory2;


/* starting interface:    nsIBrowserHistory */
const char[] NS_IBROWSERHISTORY_IID_STR = "cf937d0d-befa-4105-8a55-ba8cf1bae427";

const nsIID NS_IBROWSERHISTORY_IID= 
  {0xcf937d0d, 0xbefa, 0x4105, 
    [ 0x8a, 0x55, 0xba, 0x8c, 0xf1, 0xba, 0xe4, 0x27 ]};

extern(Windows)
interface nsIBrowserHistory : nsIGlobalHistory2 {
  static const char[] IID_STR = NS_IBROWSERHISTORY_IID_STR;
  static const nsIID IID = NS_IBROWSERHISTORY_IID;

  /**
     * lastPageVisited
     * The last page that was visited in a top-level window.
     */
  /* readonly attribute AUTF8String lastPageVisited; */
  nsresult GetLastPageVisited(nsACString * aLastPageVisited);

  /**
     * remove a page from history
     */
  /* void removePage (in nsIURI aURI); */
  nsresult RemovePage(nsIURI aURI);

  /**
     * count
     * The number of entries in global history
     */
  /* readonly attribute unsigned long count; */
  nsresult GetCount(PRUint32 *aCount);

  /**
     * removePagesFromHost
     * Remove all pages from the given host.
     * If aEntireDomain is true, will assume aHost is a domain,
     * and remove all pages from the entire domain.
     */
  /* void removePagesFromHost (in AUTF8String aHost, in boolean aEntireDomain); */
  nsresult RemovePagesFromHost(nsACString * aHost, PRBool aEntireDomain);

  /**
     * removeAllPages
     * Remove all pages from global history
     */
  /* void removeAllPages (); */
  nsresult RemoveAllPages();

  /**
     * hidePage
     * Hide the specified URL from being enumerated (and thus
     * displayed in the UI)
     *
     * if the page hasn't been visited yet, then it will be added
     * as if it was visited, and then marked as hidden
     */
  /* void hidePage (in nsIURI aURI); */
  nsresult HidePage(nsIURI aURI);

  /**
     * markPageAsTyped
     * Designate the url as having been explicitly typed in by
     * the user, so it's okay to be an autocomplete result.
     */
  /* void markPageAsTyped (in nsIURI aURI); */
  nsresult MarkPageAsTyped(nsIURI aURI);

}

