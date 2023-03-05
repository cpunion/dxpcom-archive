/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXULOverlayProvider.idl
 */

module mozilla.dxpcom.nsIXULOverlayProviderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXULOverlayProvider;


public import mozilla.dxpcom.nsIXULOverlayProviderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIXULOverlayProvider */
/**
 * The chrome registry implements this interface to give overlays
 * to the gecko XUL engine.
 */
class nsIXULOverlayProviderD : public nsISupportsD {

  static const nsIID IID = NS_IXULOVERLAYPROVIDER_IID;


  alias nsIXULOverlayProvider InnerType;

  this(nsIXULOverlayProvider intr){
    super(intr);
    this.inner = intr;
  }

  nsIXULOverlayProvider opCast() {
    return inner;
  }

  void opAssign(nsIXULOverlayProvider value) {
    inner = value;
  }

  /**
     * Get the XUL overlays for a particular chrome URI.
     *
     * @param aURI  The URI being loaded
     * @return      An enumerator of nsIURI for the overlays of this URI 
     */
  /* nsISimpleEnumerator getXULOverlays (in nsIURI aURI); */
  nsISimpleEnumeratorD  GetXULOverlays(nsIURID aURI){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.GetXULOverlays(aURI ? cast(nsIURI)aURI : null, &_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

  /**
     * Get the style overlays for a particular chrome URI.
     *
     * @param aURI  The URI being loaded
     * @return      An enumerator of nsIURI for the overlays of this URI 
     */
  /* nsISimpleEnumerator getStyleOverlays (in nsIURI aURI); */
  nsISimpleEnumeratorD  GetStyleOverlays(nsIURID aURI){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.GetStyleOverlays(aURI ? cast(nsIURI)aURI : null, &_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

private:
  nsIXULOverlayProvider inner;

}

