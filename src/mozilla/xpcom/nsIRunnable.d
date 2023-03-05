/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRunnable.idl
 */

module mozilla.xpcom.nsIRunnable;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIRunnable */
const char[] NS_IRUNNABLE_IID_STR = "4a2abaf0-6886-11d3-9382-00104ba0fd40";

const nsIID NS_IRUNNABLE_IID= 
  {0x4a2abaf0, 0x6886, 0x11d3, 
    [ 0x93, 0x82, 0x00, 0x10, 0x4b, 0xa0, 0xfd, 0x40 ]};

extern(Windows)
interface nsIRunnable : nsISupports {
  static const char[] IID_STR = NS_IRUNNABLE_IID_STR;
  static const nsIID IID = NS_IRUNNABLE_IID;

  /* void run (); */
  nsresult Run();

}

