/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIIncomingServerListener.idl
 */

module mozilla.xpcom.nsIIncomingServerListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIMsgIncomingServer;


/* starting interface:    nsIIncomingServerListener */
const char[] NS_IINCOMINGSERVERLISTENER_IID_STR = "e6b64b86-90cb-11d3-8b02-0060b0fc04d2";

const nsIID NS_IINCOMINGSERVERLISTENER_IID= 
  {0xe6b64b86, 0x90cb, 0x11d3, 
    [ 0x8b, 0x02, 0x00, 0x60, 0xb0, 0xfc, 0x04, 0xd2 ]};

extern(Windows)
interface nsIIncomingServerListener : nsISupports {
  static const char[] IID_STR = NS_IINCOMINGSERVERLISTENER_IID_STR;
  static const nsIID IID = NS_IINCOMINGSERVERLISTENER_IID;

  /* void onServerLoaded (in nsIMsgIncomingServer server); */
  nsresult OnServerLoaded(nsIMsgIncomingServer server);

  /* void onServerUnloaded (in nsIMsgIncomingServer server); */
  nsresult OnServerUnloaded(nsIMsgIncomingServer server);

  /* void onServerChanged (in nsIMsgIncomingServer server); */
  nsresult OnServerChanged(nsIMsgIncomingServer server);

}

