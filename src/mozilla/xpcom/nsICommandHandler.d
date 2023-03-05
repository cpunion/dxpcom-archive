/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICommandHandler.idl
 */

module mozilla.xpcom.nsICommandHandler;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */


/* starting interface:    nsICommandHandlerInit */
const char[] NS_ICOMMANDHANDLERINIT_IID_STR = "731c6c50-67d6-11d4-9529-0020183bf181";

const nsIID NS_ICOMMANDHANDLERINIT_IID= 
  {0x731c6c50, 0x67d6, 0x11d4, 
    [ 0x95, 0x29, 0x00, 0x20, 0x18, 0x3b, 0xf1, 0x81 ]};

extern(Windows)
interface nsICommandHandlerInit : nsISupports {
  static const char[] IID_STR = NS_ICOMMANDHANDLERINIT_IID_STR;
  static const nsIID IID = NS_ICOMMANDHANDLERINIT_IID;

  /* attribute nsIDOMWindow window; */
  nsresult GetWindow(nsIDOMWindow  *aWindow);
  nsresult SetWindow(nsIDOMWindow  aWindow);

}


/* starting interface:    nsICommandHandler */
const char[] NS_ICOMMANDHANDLER_IID_STR = "34a4fcf0-66fc-11d4-9528-0020183bf181";

const nsIID NS_ICOMMANDHANDLER_IID= 
  {0x34a4fcf0, 0x66fc, 0x11d4, 
    [ 0x95, 0x28, 0x00, 0x20, 0x18, 0x3b, 0xf1, 0x81 ]};

extern(Windows)
interface nsICommandHandler : nsISupports {
  static const char[] IID_STR = NS_ICOMMANDHANDLER_IID_STR;
  static const nsIID IID = NS_ICOMMANDHANDLER_IID;

  /* string exec (in string aCommand, in string aParameters); */
  nsresult Exec(char *aCommand, char *aParameters, char **_retval);

  /* string query (in string aCommand, in string aParameters); */
  nsresult Query(char *aCommand, char *aParameters, char **_retval);

}

