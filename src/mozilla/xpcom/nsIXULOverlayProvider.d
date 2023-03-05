/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXULOverlayProvider.idl
 */

module mozilla.xpcom.nsIXULOverlayProvider;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsIXULOverlayProvider */
const char[] NS_IXULOVERLAYPROVIDER_IID_STR = "1d5b5b94-dc47-4050-93b7-ac092e383cad";

const nsIID NS_IXULOVERLAYPROVIDER_IID= 
  {0x1d5b5b94, 0xdc47, 0x4050, 
    [ 0x93, 0xb7, 0xac, 0x09, 0x2e, 0x38, 0x3c, 0xad ]};

/**
 * The chrome registry implements this interface to give overlays
 * to the gecko XUL engine.
 */
extern(Windows)
interface nsIXULOverlayProvider : nsISupports {
  static const char[] IID_STR = NS_IXULOVERLAYPROVIDER_IID_STR;
  static const nsIID IID = NS_IXULOVERLAYPROVIDER_IID;

  /**
     * Get the XUL overlays for a particular chrome URI.
     *
     * @param aURI  The URI being loaded
     * @return      An enumerator of nsIURI for the overlays of this URI 
     */
  /* nsISimpleEnumerator getXULOverlays (in nsIURI aURI); */
  nsresult GetXULOverlays(nsIURI aURI, nsISimpleEnumerator *_retval);

  /**
     * Get the style overlays for a particular chrome URI.
     *
     * @param aURI  The URI being loaded
     * @return      An enumerator of nsIURI for the overlays of this URI 
     */
  /* nsISimpleEnumerator getStyleOverlays (in nsIURI aURI); */
  nsresult GetStyleOverlays(nsIURI aURI, nsISimpleEnumerator *_retval);

}

