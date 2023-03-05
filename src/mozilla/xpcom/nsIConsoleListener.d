/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIConsoleListener.idl
 */

module mozilla.xpcom.nsIConsoleListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIConsoleMessage;


/* starting interface:    nsIConsoleListener */
const char[] NS_ICONSOLELISTENER_IID_STR = "eaaf61d6-1dd1-11b2-bc6e-8fc96480f20d";

const nsIID NS_ICONSOLELISTENER_IID= 
  {0xeaaf61d6, 0x1dd1, 0x11b2, 
    [ 0xbc, 0x6e, 0x8f, 0xc9, 0x64, 0x80, 0xf2, 0x0d ]};

extern(Windows)
interface nsIConsoleListener : nsISupports {
  static const char[] IID_STR = NS_ICONSOLELISTENER_IID_STR;
  static const nsIID IID = NS_ICONSOLELISTENER_IID;

  /* void observe (in nsIConsoleMessage aMessage); */
  nsresult Observe(nsIConsoleMessage aMessage);

}

