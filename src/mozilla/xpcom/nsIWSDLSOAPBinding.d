/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWSDLSOAPBinding.idl
 */

module mozilla.xpcom.nsIWSDLSOAPBinding;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIWSDL;


/* starting interface:    nsIWSDLSOAPBinding */
const char[] NS_IWSDLSOAPBINDING_IID_STR = "bb76b72e-d143-4738-804a-53b311466dd9";

const nsIID NS_IWSDLSOAPBINDING_IID= 
  {0xbb76b72e, 0xd143, 0x4738, 
    [ 0x80, 0x4a, 0x53, 0xb3, 0x11, 0x46, 0x6d, 0xd9 ]};

extern(Windows)
interface nsIWSDLSOAPBinding : nsIWSDLBinding {
  static const char[] IID_STR = NS_IWSDLSOAPBINDING_IID_STR;
  static const nsIID IID = NS_IWSDLSOAPBINDING_IID;

  enum { STYLE_RPC = 1U };

  enum { STYLE_DOCUMENT = 2U };

}


/* starting interface:    nsISOAPPortBinding */
const char[] NS_ISOAPPORTBINDING_IID_STR = "0458dac7-65de-11d5-9b42-00104bdf5339";

const nsIID NS_ISOAPPORTBINDING_IID= 
  {0x0458dac7, 0x65de, 0x11d5, 
    [ 0x9b, 0x42, 0x00, 0x10, 0x4b, 0xdf, 0x53, 0x39 ]};

extern(Windows)
interface nsISOAPPortBinding : nsIWSDLSOAPBinding {
  static const char[] IID_STR = NS_ISOAPPORTBINDING_IID_STR;
  static const nsIID IID = NS_ISOAPPORTBINDING_IID;

  enum { SOAP_VERSION_1_1 = 0U };

  enum { SOAP_VERSION_1_2 = 1U };

  enum { SOAP_VERSION_UNKNOWN = 32767U };

  /* readonly attribute AString name; */
  nsresult GetName(nsAString * aName);

  /* readonly attribute AString address; */
  nsresult GetAddress(nsAString * aAddress);

  /* readonly attribute unsigned short style; */
  nsresult GetStyle(PRUint16 *aStyle);

  /* readonly attribute AString transport; */
  nsresult GetTransport(nsAString * aTransport);

  /* readonly attribute unsigned short soapVersion; */
  nsresult GetSoapVersion(PRUint16 *aSoapVersion);

}


/* starting interface:    nsISOAPOperationBinding */
const char[] NS_ISOAPOPERATIONBINDING_IID_STR = "0458dac8-65de-11d5-9b42-00104bdf5339";

const nsIID NS_ISOAPOPERATIONBINDING_IID= 
  {0x0458dac8, 0x65de, 0x11d5, 
    [ 0x9b, 0x42, 0x00, 0x10, 0x4b, 0xdf, 0x53, 0x39 ]};

extern(Windows)
interface nsISOAPOperationBinding : nsIWSDLSOAPBinding {
  static const char[] IID_STR = NS_ISOAPOPERATIONBINDING_IID_STR;
  static const nsIID IID = NS_ISOAPOPERATIONBINDING_IID;

  /* readonly attribute unsigned short style; */
  nsresult GetStyle(PRUint16 *aStyle);

  /* readonly attribute AString soapAction; */
  nsresult GetSoapAction(nsAString * aSoapAction);

}


/* starting interface:    nsISOAPMessageBinding */
const char[] NS_ISOAPMESSAGEBINDING_IID_STR = "c3c4614c-301a-44af-ad70-936f9fd1ba5c";

const nsIID NS_ISOAPMESSAGEBINDING_IID= 
  {0xc3c4614c, 0x301a, 0x44af, 
    [ 0xad, 0x70, 0x93, 0x6f, 0x9f, 0xd1, 0xba, 0x5c ]};

extern(Windows)
interface nsISOAPMessageBinding : nsIWSDLSOAPBinding {
  static const char[] IID_STR = NS_ISOAPMESSAGEBINDING_IID_STR;
  static const nsIID IID = NS_ISOAPMESSAGEBINDING_IID;

  /* readonly attribute AString namespace; */
  nsresult GetNamespace(nsAString * aNamespace);

}


/* starting interface:    nsISOAPPartBinding */
const char[] NS_ISOAPPARTBINDING_IID_STR = "0458dac9-65de-11d5-9b42-00104bdf5339";

const nsIID NS_ISOAPPARTBINDING_IID= 
  {0x0458dac9, 0x65de, 0x11d5, 
    [ 0x9b, 0x42, 0x00, 0x10, 0x4b, 0xdf, 0x53, 0x39 ]};

extern(Windows)
interface nsISOAPPartBinding : nsIWSDLSOAPBinding {
  static const char[] IID_STR = NS_ISOAPPARTBINDING_IID_STR;
  static const nsIID IID = NS_ISOAPPARTBINDING_IID;

  enum { LOCATION_BODY = 1U };

  enum { LOCATION_HEADER = 2U };

  enum { LOCATION_FAULT = 3U };

  enum { USE_LITERAL = 1U };

  enum { USE_ENCODED = 2U };

  /* readonly attribute unsigned short location; */
  nsresult GetLocation(PRUint16 *aLocation);

  /* readonly attribute unsigned short use; */
  nsresult GetUse(PRUint16 *aUse);

  /* readonly attribute AString encodingStyle; */
  nsresult GetEncodingStyle(nsAString * aEncodingStyle);

  /* readonly attribute AString namespace; */
  nsresult GetNamespace(nsAString * aNamespace);

}

