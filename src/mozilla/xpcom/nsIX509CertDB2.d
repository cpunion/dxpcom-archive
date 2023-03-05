/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIX509CertDB2.idl
 */

module mozilla.xpcom.nsIX509CertDB2;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIX509CertDB2 */
const char[] NS_IX509CERTDB2_IID_STR = "dedec2ca-f941-4638-a9c0-32e02ff83d5b";

const nsIID NS_IX509CERTDB2_IID= 
  {0xdedec2ca, 0xf941, 0x4638, 
    [ 0xa9, 0xc0, 0x32, 0xe0, 0x2f, 0xf8, 0x3d, 0x5b ]};

/**
 * This represents a service to access and manipulate 
 * X.509 certificates stored in a database through methods
 * not in nsIX509CertDB, which is frozen
 *
 */
extern(Windows)
interface nsIX509CertDB2 : nsISupports {
  static const char[] IID_STR = NS_IX509CERTDB2_IID_STR;
  static const nsIID IID = NS_IX509CERTDB2_IID;

  /* void addCertFromBase64 (in string base64, in string aTrust, in string aName); */
  nsresult AddCertFromBase64(char *base64, char *aTrust, char *aName);

}

