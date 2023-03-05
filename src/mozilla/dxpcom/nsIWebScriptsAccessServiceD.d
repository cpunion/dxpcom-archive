/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebScriptsAccessService.idl
 */

module mozilla.dxpcom.nsIWebScriptsAccessServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWebScriptsAccessService;


public import mozilla.dxpcom.nsIWebScriptsAccessServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIWebScriptsAccessService */
class nsIWebScriptsAccessServiceD : public nsISupportsD {

  static const nsIID IID = NS_IWEBSCRIPTSACCESSSERVICE_IID;


  alias nsIWebScriptsAccessService InnerType;

  this(nsIWebScriptsAccessService intr){
    super(intr);
    this.inner = intr;
  }

  nsIWebScriptsAccessService opCast() {
    return inner;
  }

  void opAssign(nsIWebScriptsAccessService value) {
    inner = value;
  }

  /**
   * Call this method to check script access...
   * aTransportURI - The web service URI.
   * aType - Type requested by the script.
   * return TRUE if access granted else FALSE
   */
  /* boolean canAccess (in nsIURI aTransportURI, in AString aType); */
  PRBool CanAccess(nsIURID aTransportURI, wchar[] aType){
    scope auto _aType = new AString(aType);
    PRBool _retval;
    nsresult __result = inner.CanAccess(aTransportURI ? cast(nsIURI)aTransportURI : null, cast(nsAString*)_aType, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * This method will invalidate the cached entry for the transport uri.
   * Also one can clear the _entire_ cache by passing in a null string.
   */
  /* void invalidateCache (in string aTransportURI); */
  void InvalidateCache(char*aTransportURI){
    nsresult __result = inner.InvalidateCache(aTransportURI);
    CheckException(__result);
  }

private:
  nsIWebScriptsAccessService inner;

}

