/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIOCSPResponder.idl
 */

module mozilla.xpcom.nsIOCSPResponder;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIOCSPResponder */
const char[] NS_IOCSPRESPONDER_IID_STR = "96b2f5ae-4334-11d5-ba27-00108303b117";

const nsIID NS_IOCSPRESPONDER_IID= 
  {0x96b2f5ae, 0x4334, 0x11d5, 
    [ 0xba, 0x27, 0x00, 0x10, 0x83, 0x03, 0xb1, 0x17 ]};

extern(Windows)
interface nsIOCSPResponder : nsISupports {
  static const char[] IID_STR = NS_IOCSPRESPONDER_IID_STR;
  static const nsIID IID = NS_IOCSPRESPONDER_IID;

  /* readonly attribute wstring responseSigner; */
  nsresult GetResponseSigner(PRUnichar * *aResponseSigner);

  /* readonly attribute wstring serviceURL; */
  nsresult GetServiceURL(PRUnichar * *aServiceURL);

}

