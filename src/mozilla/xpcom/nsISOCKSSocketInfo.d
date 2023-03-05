/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOCKSSocketInfo.idl
 */

module mozilla.xpcom.nsISOCKSSocketInfo;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsISOCKSSocketInfo */
const char[] NS_ISOCKSSOCKETINFO_IID_STR = "8f755c44-1dd2-11b2-a613-91117453fa95";

const nsIID NS_ISOCKSSOCKETINFO_IID= 
  {0x8f755c44, 0x1dd2, 0x11b2, 
    [ 0xa6, 0x13, 0x91, 0x11, 0x74, 0x53, 0xfa, 0x95 ]};

extern(Windows)
interface nsISOCKSSocketInfo : nsISupports {
  static const char[] IID_STR = NS_ISOCKSSOCKETINFO_IID_STR;
  static const nsIID IID = NS_ISOCKSSOCKETINFO_IID;

  /* [noscript] attribute PRNetAddrPtr destinationAddr; */
  nsresult GetDestinationAddr(PRNetAddr * *aDestinationAddr);
  nsresult SetDestinationAddr(PRNetAddr * aDestinationAddr);

  /* [noscript] attribute PRNetAddrPtr externalProxyAddr; */
  nsresult GetExternalProxyAddr(PRNetAddr * *aExternalProxyAddr);
  nsresult SetExternalProxyAddr(PRNetAddr * aExternalProxyAddr);

  /* [noscript] attribute PRNetAddrPtr internalProxyAddr; */
  nsresult GetInternalProxyAddr(PRNetAddr * *aInternalProxyAddr);
  nsresult SetInternalProxyAddr(PRNetAddr * aInternalProxyAddr);

}

