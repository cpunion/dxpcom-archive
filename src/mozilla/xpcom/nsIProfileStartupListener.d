/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProfileStartupListener.idl
 */

module mozilla.xpcom.nsIProfileStartupListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIProfileStartupListener */
const char[] NS_IPROFILESTARTUPLISTENER_IID_STR = "6962ca8f-0b8b-11d4-9875-00c04fa0d28b";

const nsIID NS_IPROFILESTARTUPLISTENER_IID= 
  {0x6962ca8f, 0x0b8b, 0x11d4, 
    [ 0x98, 0x75, 0x00, 0xc0, 0x4f, 0xa0, 0xd2, 0x8b ]};

extern(Windows)
interface nsIProfileStartupListener : nsISupports {
  static const char[] IID_STR = NS_IPROFILESTARTUPLISTENER_IID_STR;
  static const nsIID IID = NS_IPROFILESTARTUPLISTENER_IID;

  /* void onProfileStartup (in wstring profileName); */
  nsresult OnProfileStartup(PRUnichar *profileName);

}

