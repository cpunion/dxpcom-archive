/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsPIProtocolProxyService.idl
 */

module mozilla.xpcom.nsPIProtocolProxyService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIProtocolProxyService;


/* starting interface:    nsPIProtocolProxyService */
const char[] NS_PIPROTOCOLPROXYSERVICE_IID_STR = "d2c7b3eb-7778-468b-ae9b-c106c2afb5d1";

const nsIID NS_PIPROTOCOLPROXYSERVICE_IID= 
  {0xd2c7b3eb, 0x7778, 0x468b, 
    [ 0xae, 0x9b, 0xc1, 0x06, 0xc2, 0xaf, 0xb5, 0xd1 ]};

/**
 * THIS IS A PRIVATE INTERFACE
 *
 * It exists purely as a hack to support the configureFromPAC method used by
 * the preference panels in the various apps.  Those apps need to be taught to
 * just use the preferences API to "reload" the PAC file.  Then, at that point,
 * we can eliminate this interface completely.
 */
extern(Windows)
interface nsPIProtocolProxyService : nsIProtocolProxyService {
  static const char[] IID_STR = NS_PIPROTOCOLPROXYSERVICE_IID_STR;
  static const nsIID IID = NS_PIPROTOCOLPROXYSERVICE_IID;

  /**
     * This method may be called to re-configure proxy settings given a URI
     * to a new proxy auto config file.  This method may return before the
     * configuration actually takes affect (i.e., the URI may be loaded
     * asynchronously).
     *
     * WARNING: This method is considered harmful since it may cause the PAC
     * preferences to be out of sync with the state of the Protocol Proxy
     * Service.  This method is going to be eliminated in the near future.
     *
     * @param aURI
     *        The location of the PAC file to load.  If this value is empty,
     *        then the PAC configuration will be removed.
     */
  /* void configureFromPAC (in AUTF8String aURI); */
  nsresult ConfigureFromPAC(nsACString * aURI);

}

