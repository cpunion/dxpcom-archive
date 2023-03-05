/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISupports.idl
 */

module mozilla.xpcom.nsISupports;


import mozilla.xpcom.nsrootidl;

import mozilla.xpcom.nsrootidl;


/* starting interface:    nsISupports */
const char[] NS_ISUPPORTS_IID_STR = "00000000-0000-0000-c000-000000000046";

const nsIID NS_ISUPPORTS_IID= 
  {0x00000000, 0x0000, 0x0000, 
    [ 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46 ]};

extern(Windows)
interface IUnknown {
  static const char[] IID_STR = NS_ISUPPORTS_IID_STR;
  static const nsIID IID = NS_ISUPPORTS_IID;

  /* void QueryInterface (in nsIIDRef uuid, [iid_is (uuid), retval] out nsQIResult result); */
  nsresult QueryInterface(nsIID * uuid, void * *result);

  /* [noscript, notxpcom] nsrefcnt AddRef (); */
  nsrefcnt AddRef();

  /* [noscript, notxpcom] nsrefcnt Release (); */
  nsrefcnt Release();

}

alias IUnknown nsISupports;
