/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICryptoFIPSInfo.idl
 */

module mozilla.xpcom.nsICryptoFIPSInfo;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsICryptoFIPSInfo */
const char[] NS_ICRYPTOFIPSINFO_IID_STR = "99e81922-7318-4431-b3aa-78b3cb4119bb";

const nsIID NS_ICRYPTOFIPSINFO_IID= 
  {0x99e81922, 0x7318, 0x4431, 
    [ 0xb3, 0xaa, 0x78, 0xb3, 0xcb, 0x41, 0x19, 0xbb ]};

extern(Windows)
interface nsICryptoFIPSInfo : nsISupports {
  static const char[] IID_STR = NS_ICRYPTOFIPSINFO_IID_STR;
  static const nsIID IID = NS_ICRYPTOFIPSINFO_IID;

  /* readonly attribute boolean isFIPSModeActive; */
  nsresult GetIsFIPSModeActive(PRBool *aIsFIPSModeActive);

}

