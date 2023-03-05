/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFTPChannel.idl
 */

module mozilla.xpcom.nsIFTPChannel;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIChannel;

public import mozilla.xpcom.nsIRequestObserver; /* forward declaration */


/* starting interface:    nsIFTPChannel */
const char[] NS_IFTPCHANNEL_IID_STR = "3476df52-1dd2-11b2-b928-925d89b33bc0";

const nsIID NS_IFTPCHANNEL_IID= 
  {0x3476df52, 0x1dd2, 0x11b2, 
    [ 0xb9, 0x28, 0x92, 0x5d, 0x89, 0xb3, 0x3b, 0xc0 ]};

extern(Windows)
interface nsIFTPChannel : nsIChannel {
  static const char[] IID_STR = NS_IFTPCHANNEL_IID_STR;
  static const nsIID IID = NS_IFTPCHANNEL_IID;

}


/* starting interface:    nsIFTPEventSink */
const char[] NS_IFTPEVENTSINK_IID_STR = "455d4234-0330-43d2-bbfb-99afbecbfeb0";

const nsIID NS_IFTPEVENTSINK_IID= 
  {0x455d4234, 0x0330, 0x43d2, 
    [ 0xbb, 0xfb, 0x99, 0xaf, 0xbe, 0xcb, 0xfe, 0xb0 ]};

extern(Windows)
interface nsIFTPEventSink : nsISupports {
  static const char[] IID_STR = NS_IFTPEVENTSINK_IID_STR;
  static const nsIID IID = NS_IFTPEVENTSINK_IID;

  /* void OnFTPControlLog (in boolean server, in string msg); */
  nsresult OnFTPControlLog(PRBool server, char *msg);

}

