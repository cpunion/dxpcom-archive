/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrefetchService.idl
 */

module mozilla.dxpcom.nsIPrefetchServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPrefetchService;


public import mozilla.dxpcom.nsIPrefetchServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIPrefetchService */
class nsIPrefetchServiceD : public nsISupportsD {

  static const nsIID IID = NS_IPREFETCHSERVICE_IID;


  alias nsIPrefetchService InnerType;

  this(nsIPrefetchService intr){
    super(intr);
    this.inner = intr;
  }

  nsIPrefetchService opCast() {
    return inner;
  }

  void opAssign(nsIPrefetchService value) {
    inner = value;
  }

  /**
     * Enqueue a request to prefetch the specified URI.
     *
     * @param aURI the URI of the document to prefetch
     * @param aReferrerURI the URI of the referring page
     * @param aExplicit the link element has an explicit prefetch link type
     */
  /* void prefetchURI (in nsIURI aURI, in nsIURI aReferrerURI, in boolean aExplicit); */
  void PrefetchURI(nsIURID aURI, nsIURID aReferrerURI, PRBool aExplicit){
    nsresult __result = inner.PrefetchURI(aURI ? cast(nsIURI)aURI : null, aReferrerURI ? cast(nsIURI)aReferrerURI : null, aExplicit);
    CheckException(__result);
  }

private:
  nsIPrefetchService inner;

}

