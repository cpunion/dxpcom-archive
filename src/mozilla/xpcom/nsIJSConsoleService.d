/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIJSConsoleService.idl
 */

module mozilla.xpcom.nsIJSConsoleService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */


/* starting interface:    nsIJSConsoleService */
const char[] NS_IJSCONSOLESERVICE_IID_STR = "1b86a0a6-1dd2-11b2-a85c-e3f42b4dcceb";

const nsIID NS_IJSCONSOLESERVICE_IID= 
  {0x1b86a0a6, 0x1dd2, 0x11b2, 
    [ 0xa8, 0x5c, 0xe3, 0xf4, 0x2b, 0x4d, 0xcc, 0xeb ]};

extern(Windows)
interface nsIJSConsoleService : nsISupports {
  static const char[] IID_STR = NS_IJSCONSOLESERVICE_IID_STR;
  static const nsIID IID = NS_IJSCONSOLESERVICE_IID;

  /* void open (in nsIDOMWindow inParent); */
  nsresult Open(nsIDOMWindow inParent);

}

