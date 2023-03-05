/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPop3Service.idl
 */

module mozilla.xpcom.nsIPop3Service;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIUrlListener;
public import mozilla.xpcom.nsIPop3IncomingServer;
public import mozilla.xpcom.nsIMsgFolder;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIStreamListener; /* forward declaration */

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */

public import mozilla.xpcom.nsIMsgFolder; /* forward declaration */


/* starting interface:    nsIPop3Service */
const char[] NS_IPOP3SERVICE_IID_STR = "3bb459e0-d746-11d2-806a-006008128c4e";

const nsIID NS_IPOP3SERVICE_IID= 
  {0x3bb459e0, 0xd746, 0x11d2, 
    [ 0x80, 0x6a, 0x00, 0x60, 0x08, 0x12, 0x8c, 0x4e ]};

extern(Windows)
interface nsIPop3Service : nsISupports {
  static const char[] IID_STR = NS_IPOP3SERVICE_IID_STR;
  static const nsIID IID = NS_IPOP3SERVICE_IID;

  /* nsIURI GetNewMail (in nsIMsgWindow aMsgWindow, in nsIUrlListener aUrlListener, in nsIMsgFolder aInbox, in nsIPop3IncomingServer popServer); */
  nsresult GetNewMail(nsIMsgWindow aMsgWindow, nsIUrlListener aUrlListener, nsIMsgFolder aInbox, nsIPop3IncomingServer popServer, nsIURI *_retval);

  /* nsIURI CheckForNewMail (in nsIMsgWindow aMsgWindow, in nsIUrlListener aUrlListener, in nsIMsgFolder inbox, in nsIPop3IncomingServer popServer); */
  nsresult CheckForNewMail(nsIMsgWindow aMsgWindow, nsIUrlListener aUrlListener, nsIMsgFolder inbox, nsIPop3IncomingServer popServer, nsIURI *_retval);

}

