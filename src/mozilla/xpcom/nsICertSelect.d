/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICertSelect.idl
 */

module mozilla.xpcom.nsICertSelect;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIX509Cert; /* forward declaration */


/* starting interface:    nsICertSelect */
const char[] NS_ICERTSELECT_IID_STR = "3cac403c-edb3-11d4-998b-00b0d02354a0";

const nsIID NS_ICERTSELECT_IID= 
  {0x3cac403c, 0xedb3, 0x11d4, 
    [ 0x99, 0x8b, 0x00, 0xb0, 0xd0, 0x23, 0x54, 0xa0 ]};

extern(Windows)
interface nsICertSelect : nsISupports {
  static const char[] IID_STR = NS_ICERTSELECT_IID_STR;
  static const nsIID IID = NS_ICERTSELECT_IID;

  /* nsIX509Cert selectClientAuthCert (in nsIChannelSecurityInfo socketInfo, in unsigned long count, [array, size_is (count)] in nsIX509Cert certs); */
  nsresult SelectClientAuthCert(nsIChannelSecurityInfo socketInfo, PRUint32 count, nsIX509Cert *certs, nsIX509Cert *_retval);

}

