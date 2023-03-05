/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISMimeCert.idl
 */

module mozilla.xpcom.nsISMimeCert;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsISMimeCert */
const char[] NS_ISMIMECERT_IID_STR = "66710f97-a4dd-49f1-a906-fe0ebc5924c0";

const nsIID NS_ISMIMECERT_IID= 
  {0x66710f97, 0xa4dd, 0x49f1, 
    [ 0xa9, 0x06, 0xfe, 0x0e, 0xbc, 0x59, 0x24, 0xc0 ]};

extern(Windows)
interface nsISMimeCert : nsISupports {
  static const char[] IID_STR = NS_ISMIMECERT_IID_STR;
  static const nsIID IID = NS_ISMIMECERT_IID;

  /* void saveSMimeProfile (); */
  nsresult SaveSMimeProfile();

}

