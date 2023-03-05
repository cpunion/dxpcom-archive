/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIConsoleMessage.idl
 */

module mozilla.xpcom.nsIConsoleMessage;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIConsoleMessage */
const char[] NS_ICONSOLEMESSAGE_IID_STR = "41bd8784-1dd2-11b2-9553-8606958fffe1";

const nsIID NS_ICONSOLEMESSAGE_IID= 
  {0x41bd8784, 0x1dd2, 0x11b2, 
    [ 0x95, 0x53, 0x86, 0x06, 0x95, 0x8f, 0xff, 0xe1 ]};

/**
 * This is intended as a base interface; implementations may want to
 * provide an object that can be qi'ed to provide more specific
 * message information.
 */
extern(Windows)
interface nsIConsoleMessage : nsISupports {
  static const char[] IID_STR = NS_ICONSOLEMESSAGE_IID_STR;
  static const nsIID IID = NS_ICONSOLEMESSAGE_IID;

  /* readonly attribute wstring message; */
  nsresult GetMessage(PRUnichar * *aMessage);

}

