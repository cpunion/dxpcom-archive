/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebServiceErrorHandler.idl
 */

module mozilla.xpcom.nsIWebServiceErrorHandler;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIWebServiceErrorHandler */
const char[] NS_IWEBSERVICEERRORHANDLER_IID_STR = "068e20e0-df59-11d8-869f-000393b6661a";

const nsIID NS_IWEBSERVICEERRORHANDLER_IID= 
  {0x068e20e0, 0xdf59, 0x11d8, 
    [ 0x86, 0x9f, 0x00, 0x03, 0x93, 0xb6, 0x66, 0x1a ]};

extern(Windows)
interface nsIWebServiceErrorHandler : nsISupports {
  static const char[] IID_STR = NS_IWEBSERVICEERRORHANDLER_IID_STR;
  static const nsIID IID = NS_IWEBSERVICEERRORHANDLER_IID;

  /* void onError (in nsresult status, in AString statusMessage); */
  nsresult OnError(nsresult status, nsAString * statusMessage);

}

