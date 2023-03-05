/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMailboxService.idl
 */

module mozilla.xpcom.nsIMailboxService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIUrlListener;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIStreamListener; /* forward declaration */

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */


/* starting interface:    nsIMailboxService */
const char[] NS_IMAILBOXSERVICE_IID_STR = "eef82460-cb69-11d2-8065-006008128c4e";

const nsIID NS_IMAILBOXSERVICE_IID= 
  {0xeef82460, 0xcb69, 0x11d2, 
    [ 0x80, 0x65, 0x00, 0x60, 0x08, 0x12, 0x8c, 0x4e ]};

extern(Windows)
interface nsIMailboxService : nsISupports {
  static const char[] IID_STR = NS_IMAILBOXSERVICE_IID_STR;
  static const nsIID IID = NS_IMAILBOXSERVICE_IID;

  /* [noscript] nsIURI ParseMailbox (in nsIMsgWindow aMsgWindow, in nsFileSpec aMailboxPath, in nsIStreamListener aMailboxParser, in nsIUrlListener aUrlListener); */
  nsresult ParseMailbox(nsIMsgWindow aMsgWindow, nsFileSpec * aMailboxPath, nsIStreamListener aMailboxParser, nsIUrlListener aUrlListener, nsIURI *_retval);

}

