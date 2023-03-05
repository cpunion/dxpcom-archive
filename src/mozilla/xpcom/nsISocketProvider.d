/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISocketProvider.idl
 */

module mozilla.xpcom.nsISocketProvider;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsISocketProvider */
const char[] NS_ISOCKETPROVIDER_IID_STR = "00b3df92-e830-11d8-d48e-0004e22243f8";

const nsIID NS_ISOCKETPROVIDER_IID= 
  {0x00b3df92, 0xe830, 0x11d8, 
    [ 0xd4, 0x8e, 0x00, 0x04, 0xe2, 0x22, 0x43, 0xf8 ]};

/**
 * nsISocketProvider
 */
extern(Windows)
interface nsISocketProvider : nsISupports {
  static const char[] IID_STR = NS_ISOCKETPROVIDER_IID_STR;
  static const nsIID IID = NS_ISOCKETPROVIDER_IID;

  /**
     * newSocket
     *
     * @param aFamily
     *        The address family for this socket (PR_AF_INET or PR_AF_INET6).
     * @param aHost
     *        The hostname for this connection.
     * @param aPort
     *        The port for this connection.
     * @param aProxyHost
     *        If non-null, the proxy hostname for this connection.
     * @param aProxyPort
     *        The proxy port for this connection.
     * @param aFlags
     *        Control flags that govern this connection (see below.)
     * @param aFileDesc
     *        The resulting PRFileDesc.
     * @param aSecurityInfo
     *        Any security info that should be associated with aFileDesc.  This
     *        object typically implements nsITransportSecurityInfo.
     */
  /* [noscript] void newSocket (in long aFamily, in string aHost, in long aPort, in string aProxyHost, in long aProxyPort, in unsigned long aFlags, out PRFileDescStar aFileDesc, out nsISupports aSecurityInfo); */
  nsresult NewSocket(PRInt32 aFamily, char *aHost, PRInt32 aPort, char *aProxyHost, PRInt32 aProxyPort, PRUint32 aFlags, PRFileDesc * *aFileDesc, nsISupports *aSecurityInfo);

  /**
     * addToSocket
     *
     * This function is called to allow the socket provider to layer a
     * PRFileDesc on top of another PRFileDesc.  For example, SSL via a SOCKS
     * proxy.
     *
     * Parameters are the same as newSocket with the exception of aFileDesc,
     * which is an in-param instead.
     */
  /* [noscript] void addToSocket (in long aFamily, in string aHost, in long aPort, in string aProxyHost, in long aProxyPort, in unsigned long aFlags, in PRFileDescStar aFileDesc, out nsISupports aSecurityInfo); */
  nsresult AddToSocket(PRInt32 aFamily, char *aHost, PRInt32 aPort, char *aProxyHost, PRInt32 aProxyPort, PRUint32 aFlags, PRFileDesc * aFileDesc, nsISupports *aSecurityInfo);

  /**
     * PROXY_RESOLVES_HOST
     *
     * This flag is set if the proxy is to perform hostname resolution instead
     * of the client.  When set, the hostname parameter passed when in this
     * interface will be used instead of the address structure passed for a
     * later connect et al. request.
     */
  enum { PROXY_RESOLVES_HOST = 1 };

}

