/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISSLStatus.idl
 */

module mozilla.xpcom.nsISSLStatus;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIX509Cert; /* forward declaration */


/* starting interface:    nsISSLStatus */
const char[] NS_ISSLSTATUS_IID_STR = "7b2ca1ca-1dd2-11b2-87ec-d217dbe22b85";

const nsIID NS_ISSLSTATUS_IID= 
  {0x7b2ca1ca, 0x1dd2, 0x11b2, 
    [ 0x87, 0xec, 0xd2, 0x17, 0xdb, 0xe2, 0x2b, 0x85 ]};

extern(Windows)
interface nsISSLStatus : nsISupports {
  static const char[] IID_STR = NS_ISSLSTATUS_IID_STR;
  static const nsIID IID = NS_ISSLSTATUS_IID;

  /* readonly attribute nsIX509Cert serverCert; */
  nsresult GetServerCert(nsIX509Cert  *aServerCert);

  /* readonly attribute string cipherName; */
  nsresult GetCipherName(char * *aCipherName);

  /* readonly attribute unsigned long keyLength; */
  nsresult GetKeyLength(PRUint32 *aKeyLength);

  /* readonly attribute unsigned long secretKeyLength; */
  nsresult GetSecretKeyLength(PRUint32 *aSecretKeyLength);

}

