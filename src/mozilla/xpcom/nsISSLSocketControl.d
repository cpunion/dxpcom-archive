/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISSLSocketControl.idl
 */

module mozilla.xpcom.nsISSLSocketControl;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIInterfaceRequestor; /* forward declaration */


/* starting interface:    nsISSLSocketControl */
const char[] NS_ISSLSOCKETCONTROL_IID_STR = "8b3e8488-1dd2-11b2-b547-956290be347c";

const nsIID NS_ISSLSOCKETCONTROL_IID= 
  {0x8b3e8488, 0x1dd2, 0x11b2, 
    [ 0xb5, 0x47, 0x95, 0x62, 0x90, 0xbe, 0x34, 0x7c ]};

extern(Windows)
interface nsISSLSocketControl : nsISupports {
  static const char[] IID_STR = NS_ISSLSOCKETCONTROL_IID_STR;
  static const nsIID IID = NS_ISSLSOCKETCONTROL_IID;

  /* attribute nsIInterfaceRequestor notificationCallbacks; */
  nsresult GetNotificationCallbacks(nsIInterfaceRequestor  *aNotificationCallbacks);
  nsresult SetNotificationCallbacks(nsIInterfaceRequestor  aNotificationCallbacks);

  /* attribute boolean forceHandshake; */
  nsresult GetForceHandshake(PRBool *aForceHandshake);
  nsresult SetForceHandshake(PRBool aForceHandshake);

  /* void proxyStartSSL (); */
  nsresult ProxyStartSSL();

  /* void StartTLS (); */
  nsresult StartTLS();

}

