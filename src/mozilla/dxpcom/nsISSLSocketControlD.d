/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISSLSocketControl.idl
 */

module mozilla.dxpcom.nsISSLSocketControlD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISSLSocketControl;


public import mozilla.dxpcom.nsISSLSocketControlD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIInterfaceRequestor;

public import mozilla.dxpcom.nsIInterfaceRequestorD;


/* starting wrapper class:    nsISSLSocketControl */
class nsISSLSocketControlD : public nsISupportsD {

  static const nsIID IID = NS_ISSLSOCKETCONTROL_IID;


  alias nsISSLSocketControl InnerType;

  this(nsISSLSocketControl intr){
    super(intr);
    this.inner = intr;
  }

  nsISSLSocketControl opCast() {
    return inner;
  }

  void opAssign(nsISSLSocketControl value) {
    inner = value;
  }

  /* attribute nsIInterfaceRequestor notificationCallbacks; */
  nsIInterfaceRequestorD  NotificationCallbacks(){
    nsIInterfaceRequestor value;
    nsresult __result = inner.GetNotificationCallbacks(&value);
    CheckException(__result);
    return new nsIInterfaceRequestorD(value);
  }
  void NotificationCallbacks(nsIInterfaceRequestorD  aNotificationCallbacks){
    nsIInterfaceRequestor value;
    nsresult __result = inner.SetNotificationCallbacks(value);
    CheckException(__result);
  }

  /* attribute boolean forceHandshake; */
  PRBool ForceHandshake(){
    PRBool value;
    nsresult __result = inner.GetForceHandshake(&value);
    CheckException(__result);
    return value;
  }
  void ForceHandshake(PRBool aForceHandshake){
    nsresult __result = inner.SetForceHandshake(aForceHandshake);
    CheckException(__result);
  }

  /* void proxyStartSSL (); */
  void ProxyStartSSL(){
    nsresult __result = inner.ProxyStartSSL();
    CheckException(__result);
  }

  /* void StartTLS (); */
  void StartTLS(){
    nsresult __result = inner.StartTLS();
    CheckException(__result);
  }

private:
  nsISSLSocketControl inner;

}

