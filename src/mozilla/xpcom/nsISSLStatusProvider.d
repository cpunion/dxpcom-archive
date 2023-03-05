/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISSLStatusProvider.idl
 */

module mozilla.xpcom.nsISSLStatusProvider;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsISSLStatusProvider */
const char[] NS_ISSLSTATUSPROVIDER_IID_STR = "8de811f0-1dd2-11b2-8bf1-e9aa324984b2";

const nsIID NS_ISSLSTATUSPROVIDER_IID= 
  {0x8de811f0, 0x1dd2, 0x11b2, 
    [ 0x8b, 0xf1, 0xe9, 0xaa, 0x32, 0x49, 0x84, 0xb2 ]};

extern(Windows)
interface nsISSLStatusProvider : nsISupports {
  static const char[] IID_STR = NS_ISSLSTATUSPROVIDER_IID_STR;
  static const nsIID IID = NS_ISSLSTATUSPROVIDER_IID;

  /* readonly attribute nsISupports SSLStatus; */
  nsresult GetSSLStatus(nsISupports  *aSSLStatus);

}

