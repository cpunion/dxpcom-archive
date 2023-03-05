/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISocketTransportService.idl
 */

module mozilla.xpcom.nsISocketTransportService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsISocketTransport; /* forward declaration */

public import mozilla.xpcom.nsIProxyInfo; /* forward declaration */


/* starting interface:    nsISocketTransportService */
const char[] NS_ISOCKETTRANSPORTSERVICE_IID_STR = "7b19ac06-a5fb-11d9-9f82-0011246ecd24";

const nsIID NS_ISOCKETTRANSPORTSERVICE_IID= 
  {0x7b19ac06, 0xa5fb, 0x11d9, 
    [ 0x9f, 0x82, 0x00, 0x11, 0x24, 0x6e, 0xcd, 0x24 ]};

extern(Windows)
interface nsISocketTransportService : nsISupports {
  static const char[] IID_STR = NS_ISOCKETTRANSPORTSERVICE_IID_STR;
  static const nsIID IID = NS_ISOCKETTRANSPORTSERVICE_IID;

  /**
     * Creates a transport for a specified host and port.
     *
     * @param aSocketTypes
     *        array of socket type strings.  null if using default socket type.
     * @param aTypeCount
     *        specifies length of aSocketTypes.
     * @param aHost
     *        specifies the target hostname or IP address literal of the peer
     *        for this socket.
     * @param aPort
     *        specifies the target port of the peer for this socket.
     * @param aProxyInfo
     *        specifies the transport-layer proxy type to use.  null if no
     *        proxy.  used for communicating information about proxies like
     *        SOCKS (which are transparent to upper protocols).
     * 
     * @see nsIProxiedProtocolHandler
     * @see nsIProtocolProxyService::GetProxyInfo
     */
  /* nsISocketTransport createTransport ([array, size_is (aTypeCount)] in string aSocketTypes, in unsigned long aTypeCount, in AUTF8String aHost, in long aPort, in nsIProxyInfo aProxyInfo); */
  nsresult CreateTransport(char **aSocketTypes, PRUint32 aTypeCount, nsACString * aHost, PRInt32 aPort, nsIProxyInfo aProxyInfo, nsISocketTransport *_retval);

}

