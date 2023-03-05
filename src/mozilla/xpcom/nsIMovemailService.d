/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMovemailService.idl
 */

module mozilla.xpcom.nsIMovemailService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIUrlListener;
public import mozilla.xpcom.nsIMovemailIncomingServer;
public import mozilla.xpcom.nsIMsgFolder;


/* starting interface:    nsIMovemailService */
const char[] NS_IMOVEMAILSERVICE_IID_STR = "4c7786a4-1dd2-11b2-9fbe-c59d742de59b";

const nsIID NS_IMOVEMAILSERVICE_IID= 
  {0x4c7786a4, 0x1dd2, 0x11b2, 
    [ 0x9f, 0xbe, 0xc5, 0x9d, 0x74, 0x2d, 0xe5, 0x9b ]};

extern(Windows)
interface nsIMovemailService : nsISupports {
  static const char[] IID_STR = NS_IMOVEMAILSERVICE_IID_STR;
  static const nsIID IID = NS_IMOVEMAILSERVICE_IID;

  /* nsIURI GetNewMail (in nsIMsgWindow aMsgWindow, in nsIUrlListener aUrlListener, in nsIMsgFolder aMsgFolder, in nsIMovemailIncomingServer movemailServer); */
  nsresult GetNewMail(nsIMsgWindow aMsgWindow, nsIUrlListener aUrlListener, nsIMsgFolder aMsgFolder, nsIMovemailIncomingServer movemailServer, nsIURI *_retval);

  /* nsIURI CheckForNewMail (in nsIUrlListener aUrlListener, in nsIMsgFolder inbox, in nsIMovemailIncomingServer movemailServer); */
  nsresult CheckForNewMail(nsIUrlListener aUrlListener, nsIMsgFolder inbox, nsIMovemailIncomingServer movemailServer, nsIURI *_retval);

}

