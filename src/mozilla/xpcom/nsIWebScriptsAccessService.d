/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebScriptsAccessService.idl
 */

module mozilla.xpcom.nsIWebScriptsAccessService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsIWebScriptsAccessService */
const char[] NS_IWEBSCRIPTSACCESSSERVICE_IID_STR = "57e2860b-4266-4a85-bfde-ae39d945b014";

const nsIID NS_IWEBSCRIPTSACCESSSERVICE_IID= 
  {0x57e2860b, 0x4266, 0x4a85, 
    [ 0xbf, 0xde, 0xae, 0x39, 0xd9, 0x45, 0xb0, 0x14 ]};

extern(Windows)
interface nsIWebScriptsAccessService : nsISupports {
  static const char[] IID_STR = NS_IWEBSCRIPTSACCESSSERVICE_IID_STR;
  static const nsIID IID = NS_IWEBSCRIPTSACCESSSERVICE_IID;

  /**
   * Call this method to check script access...
   * aTransportURI - The web service URI.
   * aType - Type requested by the script.
   * return TRUE if access granted else FALSE
   */
  /* boolean canAccess (in nsIURI aTransportURI, in AString aType); */
  nsresult CanAccess(nsIURI aTransportURI, nsAString * aType, PRBool *_retval);

  /**
   * This method will invalidate the cached entry for the transport uri.
   * Also one can clear the _entire_ cache by passing in a null string.
   */
  /* void invalidateCache (in string aTransportURI); */
  nsresult InvalidateCache(char *aTransportURI);

}

