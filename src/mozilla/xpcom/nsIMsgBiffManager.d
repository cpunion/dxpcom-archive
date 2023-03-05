/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgBiffManager.idl
 */

module mozilla.xpcom.nsIMsgBiffManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIMsgIncomingServer;


/* starting interface:    nsIMsgBiffManager */
const char[] NS_IMSGBIFFMANAGER_IID_STR = "17275d52-1622-11d3-8a84-0060b0fc04d2";

const nsIID NS_IMSGBIFFMANAGER_IID= 
  {0x17275d52, 0x1622, 0x11d3, 
    [ 0x8a, 0x84, 0x00, 0x60, 0xb0, 0xfc, 0x04, 0xd2 ]};

extern(Windows)
interface nsIMsgBiffManager : nsISupports {
  static const char[] IID_STR = NS_IMSGBIFFMANAGER_IID_STR;
  static const nsIID IID = NS_IMSGBIFFMANAGER_IID;

  /* void init (); */
  nsresult Init();

  /* void addServerBiff (in nsIMsgIncomingServer server); */
  nsresult AddServerBiff(nsIMsgIncomingServer server);

  /* void removeServerBiff (in nsIMsgIncomingServer server); */
  nsresult RemoveServerBiff(nsIMsgIncomingServer server);

  /* void forceBiff (in nsIMsgIncomingServer server); */
  nsresult ForceBiff(nsIMsgIncomingServer server);

  /* void forceBiffAll (); */
  nsresult ForceBiffAll();

  /* void shutdown (); */
  nsresult Shutdown();

}

