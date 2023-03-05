/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgHost.idl
 */

module mozilla.xpcom.nsIMsgHost;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIMsgHost */
const char[] NS_IMSGHOST_IID_STR = "adfb3740-aa57-11d2-b7ed-00805f05ffa5";

const nsIID NS_IMSGHOST_IID= 
  {0xadfb3740, 0xaa57, 0x11d2, 
    [ 0xb7, 0xed, 0x00, 0x80, 0x5f, 0x05, 0xff, 0xa5 ]};

extern(Windows)
interface nsIMsgHost : nsISupports {
  static const char[] IID_STR = NS_IMSGHOST_IID_STR;
  static const nsIID IID = NS_IMSGHOST_IID;

  /* attribute string hostname; */
  nsresult GetHostname(char * *aHostname);
  nsresult SetHostname(char * aHostname);

  /* attribute string uiName; */
  nsresult GetUiName(char * *aUiName);
  nsresult SetUiName(char * aUiName);

  /* attribute long port; */
  nsresult GetPort(PRInt32 *aPort);
  nsresult SetPort(PRInt32 aPort);

}

