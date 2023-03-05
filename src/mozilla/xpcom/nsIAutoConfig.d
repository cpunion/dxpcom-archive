/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAutoConfig.idl
 */

module mozilla.xpcom.nsIAutoConfig;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIAutoConfig */
const char[] NS_IAUTOCONFIG_IID_STR = "80db54ae-13f2-11d5-be44-00108335a220";

const nsIID NS_IAUTOCONFIG_IID= 
  {0x80db54ae, 0x13f2, 0x11d5, 
    [ 0xbe, 0x44, 0x00, 0x10, 0x83, 0x35, 0xa2, 0x20 ]};

extern(Windows)
interface nsIAutoConfig : nsISupports {
  static const char[] IID_STR = NS_IAUTOCONFIG_IID_STR;
  static const nsIID IID = NS_IAUTOCONFIG_IID;

  /* attribute string configURL; */
  nsresult GetConfigURL(char * *aConfigURL);
  nsresult SetConfigURL(char * aConfigURL);

}

