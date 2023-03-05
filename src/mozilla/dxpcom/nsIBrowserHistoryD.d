/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBrowserHistory.idl
 */

module mozilla.dxpcom.nsIBrowserHistoryD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIBrowserHistory;


public import mozilla.dxpcom.nsIBrowserHistoryD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIGlobalHistory2;
public import mozilla.dxpcom.nsIGlobalHistory2D;


/* starting wrapper class:    nsIBrowserHistory */
class nsIBrowserHistoryD : public nsIGlobalHistory2D {

  static const nsIID IID = NS_IBROWSERHISTORY_IID;


  alias nsIBrowserHistory InnerType;

  this(nsIBrowserHistory intr){
    super(intr);
    this.inner = intr;
  }

  nsIBrowserHistory opCast() {
    return inner;
  }

  void opAssign(nsIBrowserHistory value) {
    inner = value;
  }

  /**
     * lastPageVisited
     * The last page that was visited in a top-level window.
     */
  /* readonly attribute AUTF8String lastPageVisited; */
  char[] LastPageVisited(){
    scope auto value = new ACString();
    nsresult __result = inner.GetLastPageVisited(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
     * remove a page from history
     */
  /* void removePage (in nsIURI aURI); */
  void RemovePage(nsIURID aURI){
    nsresult __result = inner.RemovePage(aURI ? cast(nsIURI)aURI : null);
    CheckException(__result);
  }

  /**
     * count
     * The number of entries in global history
     */
  /* readonly attribute unsigned long count; */
  PRUint32 Count(){
    PRUint32 value;
    nsresult __result = inner.GetCount(&value);
    CheckException(__result);
    return value;
  }

  /**
     * removePagesFromHost
     * Remove all pages from the given host.
     * If aEntireDomain is true, will assume aHost is a domain,
     * and remove all pages from the entire domain.
     */
  /* void removePagesFromHost (in AUTF8String aHost, in boolean aEntireDomain); */
  void RemovePagesFromHost(char[] aHost, PRBool aEntireDomain){
    scope auto _aHost = new ACString(aHost);
    nsresult __result = inner.RemovePagesFromHost(cast(nsACString*)_aHost, aEntireDomain);
    CheckException(__result);
  }

  /**
     * removeAllPages
     * Remove all pages from global history
     */
  /* void removeAllPages (); */
  void RemoveAllPages(){
    nsresult __result = inner.RemoveAllPages();
    CheckException(__result);
  }

  /**
     * hidePage
     * Hide the specified URL from being enumerated (and thus
     * displayed in the UI)
     *
     * if the page hasn't been visited yet, then it will be added
     * as if it was visited, and then marked as hidden
     */
  /* void hidePage (in nsIURI aURI); */
  void HidePage(nsIURID aURI){
    nsresult __result = inner.HidePage(aURI ? cast(nsIURI)aURI : null);
    CheckException(__result);
  }

  /**
     * markPageAsTyped
     * Designate the url as having been explicitly typed in by
     * the user, so it's okay to be an autocomplete result.
     */
  /* void markPageAsTyped (in nsIURI aURI); */
  void MarkPageAsTyped(nsIURID aURI){
    nsresult __result = inner.MarkPageAsTyped(aURI ? cast(nsIURI)aURI : null);
    CheckException(__result);
  }

private:
  nsIBrowserHistory inner;

}

