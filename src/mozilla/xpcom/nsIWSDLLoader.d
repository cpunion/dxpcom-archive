/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWSDLLoader.idl
 */

module mozilla.xpcom.nsIWSDLLoader;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIWebServiceErrorHandler;

public import mozilla.xpcom.nsIWSDL;

public import mozilla.xpcom.nsIWSDLLoader;


/* starting interface:    nsIWSDLLoader */
const char[] NS_IWSDLLOADER_IID_STR = "0458dac5-65de-11d5-9b42-00104bdf5339";

const nsIID NS_IWSDLLOADER_IID= 
  {0x0458dac5, 0x65de, 0x11d5, 
    [ 0x9b, 0x42, 0x00, 0x10, 0x4b, 0xdf, 0x53, 0x39 ]};

extern(Windows)
interface nsIWSDLLoader : nsISupports {
  static const char[] IID_STR = NS_IWSDLLOADER_IID_STR;
  static const nsIID IID = NS_IWSDLLOADER_IID;

  /* nsIWSDLPort load (in AString wsdlURI, in AString portName); */
  nsresult Load(nsAString * wsdlURI, nsAString * portName, nsIWSDLPort *_retval);

  /* void loadAsync (in AString wsdlURI, in AString portName, in nsIWSDLLoadListener listener); */
  nsresult LoadAsync(nsAString * wsdlURI, nsAString * portName, nsIWSDLLoadListener listener);

}


/* starting interface:    nsIWSDLLoadListener */
const char[] NS_IWSDLLOADLISTENER_IID_STR = "c3681210-e191-11d8-949e-000393b6661a";

const nsIID NS_IWSDLLOADLISTENER_IID= 
  {0xc3681210, 0xe191, 0x11d8, 
    [ 0x94, 0x9e, 0x00, 0x03, 0x93, 0xb6, 0x66, 0x1a ]};

extern(Windows)
interface nsIWSDLLoadListener : nsIWebServiceErrorHandler {
  static const char[] IID_STR = NS_IWSDLLOADLISTENER_IID_STR;
  static const nsIID IID = NS_IWSDLLOADLISTENER_IID;

  /* void onLoad (in nsIWSDLPort port); */
  nsresult OnLoad(nsIWSDLPort port);

}

