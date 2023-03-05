/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIStreamListenerTee.idl
 */

module mozilla.xpcom.nsIStreamListenerTee;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIStreamListener;

public import mozilla.xpcom.nsIOutputStream; /* forward declaration */


/* starting interface:    nsIStreamListenerTee */
const char[] NS_ISTREAMLISTENERTEE_IID_STR = "fb683e76-d42b-41a4-8ae6-65a6c2b146e5";

const nsIID NS_ISTREAMLISTENERTEE_IID= 
  {0xfb683e76, 0xd42b, 0x41a4, 
    [ 0x8a, 0xe6, 0x65, 0xa6, 0xc2, 0xb1, 0x46, 0xe5 ]};

/**
 * As data "flows" into a stream listener tee, it is copied to the output stream
 * and then forwarded to the real listener.
 */
extern(Windows)
interface nsIStreamListenerTee : nsIStreamListener {
  static const char[] IID_STR = NS_ISTREAMLISTENERTEE_IID_STR;
  static const nsIID IID = NS_ISTREAMLISTENERTEE_IID;

  /* void init (in nsIStreamListener listener, in nsIOutputStream sink); */
  nsresult Init(nsIStreamListener listener, nsIOutputStream sink);

}

