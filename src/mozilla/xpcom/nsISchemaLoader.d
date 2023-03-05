/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISchemaLoader.idl
 */

module mozilla.xpcom.nsISchemaLoader;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIWebServiceErrorHandler;

public import mozilla.xpcom.nsISchema;

public import mozilla.xpcom.nsISchema;

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */

public import mozilla.xpcom.nsISchema;


/* starting interface:    nsISchemaLoader */
const char[] NS_ISCHEMALOADER_IID_STR = "9b2f0b4a-8f00-4a78-961a-7e84ed49b0b6";

const nsIID NS_ISCHEMALOADER_IID= 
  {0x9b2f0b4a, 0x8f00, 0x4a78, 
    [ 0x96, 0x1a, 0x7e, 0x84, 0xed, 0x49, 0xb0, 0xb6 ]};

extern(Windows)
interface nsISchemaLoader : nsISupports {
  static const char[] IID_STR = NS_ISCHEMALOADER_IID_STR;
  static const nsIID IID = NS_ISCHEMALOADER_IID;

  /* nsISchema load (in AString schemaURI); */
  nsresult Load(nsAString * schemaURI, nsISchema *_retval);

  /* void loadAsync (in AString schemaURI, in nsISchemaLoadListener listener); */
  nsresult LoadAsync(nsAString * schemaURI, nsISchemaLoadListener listener);

  /* nsISchema processSchemaElement (in nsIDOMElement element, in nsIWebServiceErrorHandler aErrorHandler); */
  nsresult ProcessSchemaElement(nsIDOMElement element, nsIWebServiceErrorHandler aErrorHandler, nsISchema *_retval);

}


/* starting interface:    nsISchemaLoadListener */
const char[] NS_ISCHEMALOADLISTENER_IID_STR = "8d9aa9ce-e191-11d8-9f31-000393b6661a";

const nsIID NS_ISCHEMALOADLISTENER_IID= 
  {0x8d9aa9ce, 0xe191, 0x11d8, 
    [ 0x9f, 0x31, 0x00, 0x03, 0x93, 0xb6, 0x66, 0x1a ]};

extern(Windows)
interface nsISchemaLoadListener : nsIWebServiceErrorHandler {
  static const char[] IID_STR = NS_ISCHEMALOADLISTENER_IID_STR;
  static const nsIID IID = NS_ISCHEMALOADLISTENER_IID;

  /* void onLoad (in nsISchema schema); */
  nsresult OnLoad(nsISchema schema);

}

