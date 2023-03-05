/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSignature.idl
 */

module mozilla.xpcom.nsIMsgSignature;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIMsgSignature */
const char[] NS_IMSGSIGNATURE_IID_STR = "7e1531b0-e3df-11d2-b7fc-00805f05ffa5";

const nsIID NS_IMSGSIGNATURE_IID= 
  {0x7e1531b0, 0xe3df, 0x11d2, 
    [ 0xb7, 0xfc, 0x00, 0x80, 0x5f, 0x05, 0xff, 0xa5 ]};

extern(Windows)
interface nsIMsgSignature : nsISupports {
  static const char[] IID_STR = NS_IMSGSIGNATURE_IID_STR;
  static const nsIID IID = NS_IMSGSIGNATURE_IID;

  /* attribute string signatureName; */
  nsresult GetSignatureName(char * *aSignatureName);
  nsresult SetSignatureName(char * aSignatureName);

  /* attribute string signature; */
  nsresult GetSignature(char * *aSignature);
  nsresult SetSignature(char * aSignature);

}

