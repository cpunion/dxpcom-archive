/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrefetchService.idl
 */

module mozilla.xpcom.nsIPrefetchService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsIPrefetchService */
const char[] NS_IPREFETCHSERVICE_IID_STR = "933cb52a-2864-4a40-8678-a2d0851b0ef4";

const nsIID NS_IPREFETCHSERVICE_IID= 
  {0x933cb52a, 0x2864, 0x4a40, 
    [ 0x86, 0x78, 0xa2, 0xd0, 0x85, 0x1b, 0x0e, 0xf4 ]};

extern(Windows)
interface nsIPrefetchService : nsISupports {
  static const char[] IID_STR = NS_IPREFETCHSERVICE_IID_STR;
  static const nsIID IID = NS_IPREFETCHSERVICE_IID;

  /**
     * Enqueue a request to prefetch the specified URI.
     *
     * @param aURI the URI of the document to prefetch
     * @param aReferrerURI the URI of the referring page
     * @param aExplicit the link element has an explicit prefetch link type
     */
  /* void prefetchURI (in nsIURI aURI, in nsIURI aReferrerURI, in boolean aExplicit); */
  nsresult PrefetchURI(nsIURI aURI, nsIURI aReferrerURI, PRBool aExplicit);

}

