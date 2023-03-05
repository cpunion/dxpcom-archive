/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMessengerWindowService.idl
 */

module mozilla.xpcom.nsIMessengerWindowService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.MailNewsTypes2;


/* starting interface:    nsIMessengerWindowService */
const char[] NS_IMESSENGERWINDOWSERVICE_IID_STR = "113a1a5a-1dd2-11b2-b1b7-a85ccc06c8ce";

const nsIID NS_IMESSENGERWINDOWSERVICE_IID= 
  {0x113a1a5a, 0x1dd2, 0x11b2, 
    [ 0xb1, 0xb7, 0xa8, 0x5c, 0xcc, 0x06, 0xc8, 0xce ]};

extern(Windows)
interface nsIMessengerWindowService : nsISupports {
  static const char[] IID_STR = NS_IMESSENGERWINDOWSERVICE_IID_STR;
  static const nsIID IID = NS_IMESSENGERWINDOWSERVICE_IID;

  /* void openMessengerWindowWithUri (in string aWindowType, in string aFolderURI, in nsMsgKey aMsgKey); */
  nsresult OpenMessengerWindowWithUri(char *aWindowType, char *aFolderURI, nsMsgKey aMsgKey);

}

