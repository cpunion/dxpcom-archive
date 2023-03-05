/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILocalMailIncomingServer.idl
 */

module mozilla.xpcom.nsILocalMailIncomingServer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */

public import mozilla.xpcom.nsIUrlListener; /* forward declaration */

public import mozilla.xpcom.nsIMsgFolder; /* forward declaration */

public import mozilla.xpcom.nsIFileSpec; /* forward declaration */


/* starting interface:    nsILocalMailIncomingServer */
const char[] NS_ILOCALMAILINCOMINGSERVER_IID_STR = "ee87cc60-1dd1-11b2-b25a-ff87320f212d";

const nsIID NS_ILOCALMAILINCOMINGSERVER_IID= 
  {0xee87cc60, 0x1dd1, 0x11b2, 
    [ 0xb2, 0x5a, 0xff, 0x87, 0x32, 0x0f, 0x21, 0x2d ]};

extern(Windows)
interface nsILocalMailIncomingServer : nsISupports {
  static const char[] IID_STR = NS_ILOCALMAILINCOMINGSERVER_IID_STR;
  static const nsIID IID = NS_ILOCALMAILINCOMINGSERVER_IID;

  /* void createDefaultMailboxes (in nsIFileSpec path); */
  nsresult CreateDefaultMailboxes(nsIFileSpec path);

  /* void setFlagsOnDefaultMailboxes (); */
  nsresult SetFlagsOnDefaultMailboxes();

  /* nsIURI getNewMail (in nsIMsgWindow aMsgWindow, in nsIUrlListener aUrlListener, in nsIMsgFolder aInbox); */
  nsresult GetNewMail(nsIMsgWindow aMsgWindow, nsIUrlListener aUrlListener, nsIMsgFolder aInbox, nsIURI *_retval);

}

