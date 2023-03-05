/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWSDL.idl
 */

module mozilla.xpcom.nsIWSDL;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISchema;

public import mozilla.xpcom.nsIWSDL;

public import mozilla.xpcom.nsIWSDL;

public import mozilla.xpcom.nsIWSDL;

public import mozilla.xpcom.nsIWSDL;

public import mozilla.xpcom.nsIWSDL;

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */


/* starting interface:    nsIWSDLPort */
const char[] NS_IWSDLPORT_IID_STR = "0458dac1-65de-11d5-9b42-00104bdf5339";

const nsIID NS_IWSDLPORT_IID= 
  {0x0458dac1, 0x65de, 0x11d5, 
    [ 0x9b, 0x42, 0x00, 0x10, 0x4b, 0xdf, 0x53, 0x39 ]};

extern(Windows)
interface nsIWSDLPort : nsISupports {
  static const char[] IID_STR = NS_IWSDLPORT_IID_STR;
  static const nsIID IID = NS_IWSDLPORT_IID;

  /* readonly attribute AString name; */
  nsresult GetName(nsAString * aName);

  /* readonly attribute nsIDOMElement documentation; */
  nsresult GetDocumentation(nsIDOMElement  *aDocumentation);

  /* readonly attribute nsIWSDLBinding binding; */
  nsresult GetBinding(nsIWSDLBinding  *aBinding);

  /* readonly attribute PRUint32 operationCount; */
  nsresult GetOperationCount(PRUint32 *aOperationCount);

  /* nsIWSDLOperation getOperation (in PRUint32 index); */
  nsresult GetOperation(PRUint32 index, nsIWSDLOperation *_retval);

  /* nsIWSDLOperation getOperationByName (in AString name); */
  nsresult GetOperationByName(nsAString * name, nsIWSDLOperation *_retval);

}


/* starting interface:    nsIWSDLOperation */
const char[] NS_IWSDLOPERATION_IID_STR = "0458dac2-65de-11d5-9b42-00104bdf5339";

const nsIID NS_IWSDLOPERATION_IID= 
  {0x0458dac2, 0x65de, 0x11d5, 
    [ 0x9b, 0x42, 0x00, 0x10, 0x4b, 0xdf, 0x53, 0x39 ]};

extern(Windows)
interface nsIWSDLOperation : nsISupports {
  static const char[] IID_STR = NS_IWSDLOPERATION_IID_STR;
  static const nsIID IID = NS_IWSDLOPERATION_IID;

  /* readonly attribute AString name; */
  nsresult GetName(nsAString * aName);

  /* readonly attribute nsIDOMElement documentation; */
  nsresult GetDocumentation(nsIDOMElement  *aDocumentation);

  /* readonly attribute nsIWSDLBinding binding; */
  nsresult GetBinding(nsIWSDLBinding  *aBinding);

  /* readonly attribute nsIWSDLMessage input; */
  nsresult GetInput(nsIWSDLMessage  *aInput);

  /* readonly attribute nsIWSDLMessage output; */
  nsresult GetOutput(nsIWSDLMessage  *aOutput);

  /* readonly attribute PRUint32 faultCount; */
  nsresult GetFaultCount(PRUint32 *aFaultCount);

  /* nsIWSDLMessage getFault (in PRUint32 index); */
  nsresult GetFault(PRUint32 index, nsIWSDLMessage *_retval);

  /* readonly attribute PRUint32 parameterOrderCount; */
  nsresult GetParameterOrderCount(PRUint32 *aParameterOrderCount);

  /* AString getParameter (in PRUint32 index); */
  nsresult GetParameter(PRUint32 index, nsAString * _retval);

  /* PRUint32 getParameterIndex (in AString name); */
  nsresult GetParameterIndex(nsAString * name, PRUint32 *_retval);

}


/* starting interface:    nsIWSDLMessage */
const char[] NS_IWSDLMESSAGE_IID_STR = "0458dac3-65de-11d5-9b42-00104bdf5339";

const nsIID NS_IWSDLMESSAGE_IID= 
  {0x0458dac3, 0x65de, 0x11d5, 
    [ 0x9b, 0x42, 0x00, 0x10, 0x4b, 0xdf, 0x53, 0x39 ]};

extern(Windows)
interface nsIWSDLMessage : nsISupports {
  static const char[] IID_STR = NS_IWSDLMESSAGE_IID_STR;
  static const nsIID IID = NS_IWSDLMESSAGE_IID;

  /* readonly attribute AString name; */
  nsresult GetName(nsAString * aName);

  /* readonly attribute nsIDOMElement documentation; */
  nsresult GetDocumentation(nsIDOMElement  *aDocumentation);

  /* readonly attribute nsIWSDLBinding binding; */
  nsresult GetBinding(nsIWSDLBinding  *aBinding);

  /* readonly attribute PRUint32 partCount; */
  nsresult GetPartCount(PRUint32 *aPartCount);

  /* nsIWSDLPart getPart (in PRUint32 index); */
  nsresult GetPart(PRUint32 index, nsIWSDLPart *_retval);

  /* nsIWSDLPart getPartByName (in AString name); */
  nsresult GetPartByName(nsAString * name, nsIWSDLPart *_retval);

}


/* starting interface:    nsIWSDLPart */
const char[] NS_IWSDLPART_IID_STR = "0458dac4-65de-11d5-9b42-00104bdf5339";

const nsIID NS_IWSDLPART_IID= 
  {0x0458dac4, 0x65de, 0x11d5, 
    [ 0x9b, 0x42, 0x00, 0x10, 0x4b, 0xdf, 0x53, 0x39 ]};

extern(Windows)
interface nsIWSDLPart : nsISupports {
  static const char[] IID_STR = NS_IWSDLPART_IID_STR;
  static const nsIID IID = NS_IWSDLPART_IID;

  /* readonly attribute AString name; */
  nsresult GetName(nsAString * aName);

  /* readonly attribute nsIWSDLBinding binding; */
  nsresult GetBinding(nsIWSDLBinding  *aBinding);

  /* readonly attribute AString type; */
  nsresult GetType(nsAString * aType);

  /* readonly attribute AString elementName; */
  nsresult GetElementName(nsAString * aElementName);

  /**
   * The schema component that corresponds to this part. If the
   * type attribute is used, this is a nsISchemaType. If the 
   * elementName attribute is used, it is a nsISchemaElement.
   */
  /* readonly attribute nsISchemaComponent schemaComponent; */
  nsresult GetSchemaComponent(nsISchemaComponent  *aSchemaComponent);

}


/* starting interface:    nsIWSDLBinding */
const char[] NS_IWSDLBINDING_IID_STR = "0458dac0-65de-11d5-9b42-00104bdf5339";

const nsIID NS_IWSDLBINDING_IID= 
  {0x0458dac0, 0x65de, 0x11d5, 
    [ 0x9b, 0x42, 0x00, 0x10, 0x4b, 0xdf, 0x53, 0x39 ]};

extern(Windows)
interface nsIWSDLBinding : nsISupports {
  static const char[] IID_STR = NS_IWSDLBINDING_IID_STR;
  static const nsIID IID = NS_IWSDLBINDING_IID;

  /* readonly attribute AString protocol; */
  nsresult GetProtocol(nsAString * aProtocol);

  /* readonly attribute nsIDOMElement documentation; */
  nsresult GetDocumentation(nsIDOMElement  *aDocumentation);

}

