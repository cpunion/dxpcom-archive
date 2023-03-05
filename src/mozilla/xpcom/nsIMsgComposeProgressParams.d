/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgComposeProgressParams.idl
 */

module mozilla.xpcom.nsIMsgComposeProgressParams;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIMsgCompose;


/* starting interface:    nsIMsgComposeProgressParams */
const char[] NS_IMSGCOMPOSEPROGRESSPARAMS_IID_STR = "1e0e7c00-3e4c-11d5-9daa-f88d288130fc";

const nsIID NS_IMSGCOMPOSEPROGRESSPARAMS_IID= 
  {0x1e0e7c00, 0x3e4c, 0x11d5, 
    [ 0x9d, 0xaa, 0xf8, 0x8d, 0x28, 0x81, 0x30, 0xfc ]};

extern(Windows)
interface nsIMsgComposeProgressParams : nsISupports {
  static const char[] IID_STR = NS_IMSGCOMPOSEPROGRESSPARAMS_IID_STR;
  static const nsIID IID = NS_IMSGCOMPOSEPROGRESSPARAMS_IID;

  /* attribute wstring subject; */
  nsresult GetSubject(PRUnichar * *aSubject);
  nsresult SetSubject(PRUnichar * aSubject);

  /* attribute MSG_DeliverMode deliveryMode; */
  nsresult GetDeliveryMode(MSG_DeliverMode *aDeliveryMode);
  nsresult SetDeliveryMode(MSG_DeliverMode aDeliveryMode);

}

