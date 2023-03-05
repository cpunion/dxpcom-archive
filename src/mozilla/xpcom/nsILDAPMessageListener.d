/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILDAPMessageListener.idl
 */

module mozilla.xpcom.nsILDAPMessageListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsILDAPMessage; /* forward declaration */

public import mozilla.xpcom.nsILDAPConnection; /* forward declaration */


/* starting interface:    nsILDAPMessageListener */
const char[] NS_ILDAPMESSAGELISTENER_IID_STR = "dc721d4b-3ff2-4387-a80c-5e29545f774a";

const nsIID NS_ILDAPMESSAGELISTENER_IID= 
  {0xdc721d4b, 0x3ff2, 0x4387, 
    [ 0xa8, 0x0c, 0x5e, 0x29, 0x54, 0x5f, 0x77, 0x4a ]};

/** 
 * A callback interface to be implemented by any objects that want to 
 * receive results from an nsILDAPOperation (ie nsILDAPMessages) as they
 * come in.
 */
extern(Windows)
interface nsILDAPMessageListener : nsISupports {
  static const char[] IID_STR = NS_ILDAPMESSAGELISTENER_IID_STR;
  static const nsIID IID = NS_ILDAPMESSAGELISTENER_IID;

  /**
     * Messages received are passed back via this function.
     *
     * @arg aMessage  The message that was returned, NULL if none was.
     *
     * XXX semantics of NULL?
     */
  /* void onLDAPMessage (in nsILDAPMessage aMessage); */
  nsresult OnLDAPMessage(nsILDAPMessage aMessage);

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
  nsresult OnLDAPInit(nsILDAPConnection aConn, nsresult aStatus);

}

