/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgOfflineNewsState.idl
 */

module mozilla.xpcom.nsIMsgOfflineNewsState;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIMsgOfflineNewsState */
const char[] NS_IMSGOFFLINENEWSSTATE_IID_STR = "921ac210-96b5-11d2-b7eb-00805f05ffa5";

const nsIID NS_IMSGOFFLINENEWSSTATE_IID= 
  {0x921ac210, 0x96b5, 0x11d2, 
    [ 0xb7, 0xeb, 0x00, 0x80, 0x5f, 0x05, 0xff, 0xa5 ]};

extern(Windows)
interface nsIMsgOfflineNewsState : nsISupports {
  static const char[] IID_STR = NS_IMSGOFFLINENEWSSTATE_IID_STR;
  static const nsIID IID = NS_IMSGOFFLINENEWSSTATE_IID;

  /* long Process (out string outputBuffer, in long bufferSize); */
  nsresult Process(char **outputBuffer, PRInt32 bufferSize, PRInt32 *_retval);

  /* long Interrupt (); */
  nsresult Interrupt(PRInt32 *_retval);

}

