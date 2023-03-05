/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIExternalProtocolHandler.idl
 */

module mozilla.xpcom.nsIExternalProtocolHandler;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIProtocolHandler;


/* starting interface:    nsIExternalProtocolHandler */
const char[] NS_IEXTERNALPROTOCOLHANDLER_IID_STR = "0e61f3b2-34d7-4c79-bfdc-4860bc7341b7";

const nsIID NS_IEXTERNALPROTOCOLHANDLER_IID= 
  {0x0e61f3b2, 0x34d7, 0x4c79, 
    [ 0xbf, 0xdc, 0x48, 0x60, 0xbc, 0x73, 0x41, 0xb7 ]};

extern(Windows)
interface nsIExternalProtocolHandler : nsIProtocolHandler {
  static const char[] IID_STR = NS_IEXTERNALPROTOCOLHANDLER_IID_STR;
  static const nsIID IID = NS_IEXTERNALPROTOCOLHANDLER_IID;

  /**
     * This method checks if the external handler exists for a given scheme.
     *
     * @param scheme external scheme.
     * @return TRUE if the external handler exists for the input scheme, FALSE otherwise.
     */
  /* boolean externalAppExistsForScheme (in ACString scheme); */
  nsresult ExternalAppExistsForScheme(nsACString * scheme, PRBool *_retval);

}

