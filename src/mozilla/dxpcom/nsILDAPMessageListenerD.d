/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILDAPMessageListener.idl
 */

module mozilla.dxpcom.nsILDAPMessageListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsILDAPMessageListener;


public import mozilla.dxpcom.nsILDAPMessageListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsILDAPMessage;

public import mozilla.dxpcom.nsILDAPMessageD;

public import mozilla.xpcom.nsILDAPConnection;

public import mozilla.dxpcom.nsILDAPConnectionD;


/* starting wrapper class:    nsILDAPMessageListener */
/** 
 * A callback interface to be implemented by any objects that want to 
 * receive results from an nsILDAPOperation (ie nsILDAPMessages) as they
 * come in.
 */
class nsILDAPMessageListenerD : public nsISupportsD {

  static const nsIID IID = NS_ILDAPMESSAGELISTENER_IID;


  alias nsILDAPMessageListener InnerType;

  this(nsILDAPMessageListener intr){
    super(intr);
    this.inner = intr;
  }

  nsILDAPMessageListener opCast() {
    return inner;
  }

  void opAssign(nsILDAPMessageListener value) {
    inner = value;
  }

  /**
     * Messages received are passed back via this function.
     *
     * @arg aMessage  The message that was returned, NULL if none was.
     *
     * XXX semantics of NULL?
     */
  /* void onLDAPMessage (in nsILDAPMessage aMessage); */
  void OnLDAPMessage(nsILDAPMessageD aMessage){
    nsresult __result = inner.OnLDAPMessage(aMessage ? cast(nsILDAPMessage)aMessage : null);
    CheckException(__result);
  }

  /**
     * Notify the listener that the Init has completed, passing
     * in the results from the connection initialization. The
     * Reason for this is to allow us to do asynchronous DNS
     * lookups, preresolving hostnames.
     *
     * @arg aConn     The LDAP connection in question
     * @arg aStatus   The result from the LDAP connection init
     */
  /* void onLDAPInit (in nsILDAPConnection aConn, in nsresult aStatus); */
  void OnLDAPInit(nsILDAPConnectionD aConn, nsresult aStatus){
    nsresult __result = inner.OnLDAPInit(aConn ? cast(nsILDAPConnection)aConn : null, aStatus);
    CheckException(__result);
  }

private:
  nsILDAPMessageListener inner;

}

