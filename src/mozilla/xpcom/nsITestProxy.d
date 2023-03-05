/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITestProxy.idl
 */

module mozilla.xpcom.nsITestProxy;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsITestProxy */
const char[] NS_ITESTPROXY_IID_STR = "1979e980-1cfd-11d3-915e-0000863011c4";

const nsIID NS_ITESTPROXY_IID= 
  {0x1979e980, 0x1cfd, 0x11d3, 
    [ 0x91, 0x5e, 0x00, 0x00, 0x86, 0x30, 0x11, 0xc4 ]};

extern(Windows)
interface nsITestProxy : nsISupports {
  static const char[] IID_STR = NS_ITESTPROXY_IID_STR;
  static const nsIID IID = NS_ITESTPROXY_IID;

  /* long Test (in long p1, in long p2); */
  nsresult Test(PRInt32 p1, PRInt32 p2, PRInt32 *_retval);

  /* void Test2 (); */
  nsresult Test2();

  /* void Test3 (in nsISupports p1, out nsISupports p2); */
  nsresult Test3(nsISupports p1, nsISupports *p2);

}

