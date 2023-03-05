/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIGlobalHistory2.idl
 */

module mozilla.dxpcom.nsIGlobalHistory2D;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIGlobalHistory2;


public import mozilla.dxpcom.nsIGlobalHistory2D;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIGlobalHistory2 */
class nsIGlobalHistory2D : public nsISupportsD {

  static const nsIID IID = NS_IGLOBALHISTORY2_IID;


  alias nsIGlobalHistory2 InnerType;

  this(nsIGlobalHistory2 intr){
    super(intr);
    this.inner = intr;
  }

  nsIGlobalHistory2 opCast() {
    return inner;
  }

  void opAssign(nsIGlobalHistory2 value) {
    inner = value;
  }

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
  void AddURI(nsIURID aURI, PRBool aRedirect, PRBool aToplevel, nsIURID aReferrer){
    nsresult __result = inner.AddURI(aURI ? cast(nsIURI)aURI : null, aRedirect, aToplevel, aReferrer ? cast(nsIURI)aReferrer : null);
    CheckException(__result);
  }

  /**
     * Checks to see whether the given URI is in history.
     *
     * @param aURI the uri to the page
     * @return true if a URI has been visited
     */
  /* boolean isVisited (in nsIURI aURI); */
  PRBool IsVisited(nsIURID aURI){
    PRBool _retval;
    nsresult __result = inner.IsVisited(aURI ? cast(nsIURI)aURI : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Set the page title for the given uri. URIs that are not already in
     * global history will not be added.
     *
     * @param aURI    the URI for which to set to the title
     * @param aTitle  the page title
     */
  /* void setPageTitle (in nsIURI aURI, in AString aTitle); */
  void SetPageTitle(nsIURID aURI, wchar[] aTitle){
    scope auto _aTitle = new AString(aTitle);
    nsresult __result = inner.SetPageTitle(aURI ? cast(nsIURI)aURI : null, cast(nsAString*)_aTitle);
    CheckException(__result);
  }

private:
  nsIGlobalHistory2 inner;

}

