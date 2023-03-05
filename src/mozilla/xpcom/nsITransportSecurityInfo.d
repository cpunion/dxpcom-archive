/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITransportSecurityInfo.idl
 */

module mozilla.xpcom.nsITransportSecurityInfo;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsITransportSecurityInfo */
const char[] NS_ITRANSPORTSECURITYINFO_IID_STR = "68e21b66-1dd2-11b2-aa67-e2b87175e792";

const nsIID NS_ITRANSPORTSECURITYINFO_IID= 
  {0x68e21b66, 0x1dd2, 0x11b2, 
    [ 0xaa, 0x67, 0xe2, 0xb8, 0x71, 0x75, 0xe7, 0x92 ]};

extern(Windows)
interface nsITransportSecurityInfo : nsISupports {
  static const char[] IID_STR = NS_ITRANSPORTSECURITYINFO_IID_STR;
  static const nsIID IID = NS_ITRANSPORTSECURITYINFO_IID;

  /* readonly attribute unsigned long securityState; */
  nsresult GetSecurityState(PRUint32 *aSecurityState);

  /* readonly attribute wstring shortSecurityDescription; */
  nsresult GetShortSecurityDescription(PRUnichar * *aShortSecurityDescription);

}

