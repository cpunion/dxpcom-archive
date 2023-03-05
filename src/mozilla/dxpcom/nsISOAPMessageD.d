/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPMessage.idl
 */

module mozilla.dxpcom.nsISOAPMessageD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISOAPMessage;


public import mozilla.dxpcom.nsISOAPMessageD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMDocument;

public import mozilla.dxpcom.nsIDOMDocumentD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;

public import mozilla.xpcom.nsISOAPEncoding;

public import mozilla.dxpcom.nsISOAPEncodingD;

public import mozilla.xpcom.nsISOAPHeaderBlock;

public import mozilla.dxpcom.nsISOAPHeaderBlockD;

public import mozilla.xpcom.nsISOAPParameter;

public import mozilla.dxpcom.nsISOAPParameterD;

public import mozilla.xpcom.nsIVariant;

public import mozilla.dxpcom.nsIVariantD;


/* starting wrapper class:    nsISOAPMessage */
/**
 * This interface controls all SOAP messages. It permits easy
 * construction of a message, typically through encoding of
 * parameters and certain properties settable on this interface
 * or through deserialization of a transport stream.  It
 * permits easy processing of a message typically through
 * decoding of parameters and certain properties available
 * on this interface.  It also encapsulates protocol information
 * interpreted by the transport.
 */
class nsISOAPMessageD : public nsISupportsD {

  static const nsIID IID = NS_ISOAPMESSAGE_IID;


  alias nsISOAPMessage InnerType;

  this(nsISOAPMessage intr){
    super(intr);
    this.inner = intr;
  }

  nsISOAPMessage opCast() {
    return inner;
  }

  void opAssign(nsISOAPMessage value) {
    inner = value;
  }

  enum { VERSION_1_1 = 0U }

  enum { VERSION_1_2 = 1U }

  enum { VERSION_UNKNOWN = 65535U }

  /**
   * The document which captures the message, if any.  A simple 
   * sending application passes parameters to the method
   * encodeSOAPParameters, which calls SOAP encoders 
   * to construct this document along with all contained elements.  
   *
   * But an application may create and set the message directly
   * instead of invoking encodeSOAPParameters to use encoders
   * or access and manipulate the message after it has been 
   * constructed by encodeSOAPParameters.  If the message has 
   * not been set, invoking a call will fail.  A message reciever 
   * may also use this accessor to get the document to avoid using 
   * decoders.
   */
  /* attribute nsIDOMDocument message; */
  nsIDOMDocumentD  Message(){
    nsIDOMDocument value;
    nsresult __result = inner.GetMessage(&value);
    CheckException(__result);
    return new nsIDOMDocumentD(value);
  }
  void Message(nsIDOMDocumentD  aMessage){
    nsIDOMDocument value;
    nsresult __result = inner.SetMessage(value);
    CheckException(__result);
  }

  /**
   * A convenience attribute to obtain the DOM element representing the
   * SOAP envelope from the document.  DOM methods may be used to 
   * access, add, or modify attributes of the envelope.
   *
   * If the message attribute is null or is not a document containing
   * a root soap envelope element, then this will be null.
   */
  /* readonly attribute nsIDOMElement envelope; */
  nsIDOMElementD  Envelope(){
    nsIDOMElement value;
    nsresult __result = inner.GetEnvelope(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

  /**
   * A convenience attribute to obtain the SOAP version number, if
   * it is known, from the envelope.
   *
   * If the message attribute is null or is not a document containing
   * a root soap envelope element, then this will be VERSION_UNKNOWN.
   */
  /* readonly attribute unsigned short version; */
  PRUint16 Version(){
    PRUint16 value;
    nsresult __result = inner.GetVersion(&value);
    CheckException(__result);
    return value;
  }

  /**
   * A convenience attribute to obtain the DOM element representing the
   * SOAP header from the envelope.  DOM methods may be used to 
   * access, add, or modify attributes or elements of the header.
   *
   * If the envelope attribute is null or does not contain a SOAP header
   * element type, then this will be null.
   */
  /* readonly attribute nsIDOMElement header; */
  nsIDOMElementD  Header(){
    nsIDOMElement value;
    nsresult __result = inner.GetHeader(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

  /**
   * A convenience attribute to obtain the DOM element representing the
   * SOAP body from the envelope.  DOM methods may be used to 
   * access, add, or modify attributes or elements of the body.
   *
   * If the envelope attribute is null or does not contain a SOAP body
   * element type, then this will be null.
   */
  /* readonly attribute nsIDOMElement body; */
  nsIDOMElementD  Body(){
    nsIDOMElement value;
    nsresult __result = inner.GetBody(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

  /**
   * The name of the method being invoked. The methodName is set
   * during encoding as the tagname of the single child of body
   * of RPC-style messages.  When there is no encoded message
   * this will be null.  The value of this attribute for
   * document-style messages may be non-null but should be
   * ignored.  It is up to the application to know whether the
   * message is RPC-style or document style because the SOAP
   * specification makes it difficult to tell which way a
   * message was encoded.
   */
  /* readonly attribute AString methodName; */
  wchar[] MethodName(){
    scope auto value = new AString();
    nsresult __result = inner.GetMethodName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * The target object on which the method is being invoked. This URI
   * is set during encoding as the namespace to qualify the tagname 
   * of the single child of body of RPC-style messages.  When there
   * is no encoded message, this will be null.  The value of this
   * attribute for document-style messages may be non-null but should
   * be ignored.  It is up to the application to know whether the
   * message is RPC-style or document style because the SOAP
   * specification makes it difficult to tell which way a
   * message was encoded.
   */
  /* readonly attribute AString targetObjectURI; */
  wchar[] TargetObjectURI(){
    scope auto value = new AString();
    nsresult __result = inner.GetTargetObjectURI(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * Encodes the specified parameters into this message, if
   * this message type supports it.
   *
   * @param aMethodName The name of the method being invoked
   * for rpc-style messages.  For document-style messages,
   * this must be null.
   *
   * @param aTargetObjectURI The name of the target object
   * for rpc-style messages.  For document-style messages,
   * this must be null.
   *
   * @param aHeaderBlockCount Number of header blocks in array to be
   *   encoded.  Must be 0 if header block array is null.
   *
   * @param aHeaderBlocks Array of header blocks to be encoded, which
   *   may be null if there are no header blocks.
   *
   * @param aParameterCount Number of parameters in array 
   *   to be encoded.  Must be 0 if parameter array is null.
   *
   * @param aParameters An array of parameters to be 
   *   encoded, which may null if there are no parameters.
   */
  /* void encode (in unsigned short aVersion, in AString aMethodName, in AString aTargetObjectURI, in unsigned long aHeaderBlockCount, [array, size_is (aHeaderBlockCount)] in nsISOAPHeaderBlock aHeaderBlocks, in unsigned long aParameterCount, [array, size_is (aParameterCount)] in nsISOAPParameter aParameters); */
  void Encode(PRUint16 aVersion, wchar[] aMethodName, wchar[] aTargetObjectURI, PRUint32 aHeaderBlockCount, nsISOAPHeaderBlockD *aHeaderBlocks, PRUint32 aParameterCount, nsISOAPParameterD *aParameters){
    scope auto _aMethodName = new AString(aMethodName);
    scope auto _aTargetObjectURI = new AString(aTargetObjectURI);
    nsresult __result = inner.Encode(aVersion, cast(nsAString*)_aMethodName, cast(nsAString*)_aTargetObjectURI, aHeaderBlockCount, aHeaderBlocks ? cast(nsISOAPHeaderBlock)aHeaderBlocks : null, aParameterCount, aParameters ? cast(nsISOAPParameter)aParameters : null);
    CheckException(__result);
  }

  /**
   * Gathers the header blocks of a message so that they can be
   *   accessed by a recipient.
   *
   * @param aCount Integer to receive the length of the list
   *   of header blocks.
   *
   * @return Array of header blocks found in the message.
   */
  /* void getHeaderBlocks (out unsigned long aCount, [array, size_is (aCount), retval] out nsISOAPHeaderBlock aHeaderBlocks); */
  void GetHeaderBlocks(out PRUint32 aCount, out nsISOAPHeaderBlockD *aHeaderBlocks){
    nsISOAPHeaderBlock _aHeaderBlocks;
    nsresult __result = inner.GetHeaderBlocks(&aCount, &_aHeaderBlocks);
    CheckException(__result);
    aHeaderBlocks = _aHeaderBlocks ? new nsISOAPHeaderBlockD(_aHeaderBlocks) : null;
  }

  /**
   * Gathers the parameters of a message so that they can be
   *   accessed by a recipient.
   *
   * @param aDocumentStyle If true, then the parameters
   *   are looked for treating the message as a document 
   *   style message, otherwise it treated as an RPC-style 
   *   message.
   *
   * @param aCount Integer to receive the length of the list
   *   of parameters.
   *
   * @return Array of parameters found in the message.
   */
  /* void getParameters (in boolean aDocumentStyle, out unsigned long aCount, [array, size_is (aCount), retval] out nsISOAPParameter aParameters); */
  void GetParameters(PRBool aDocumentStyle, out PRUint32 aCount, out nsISOAPParameterD *aParameters){
    nsISOAPParameter _aParameters;
    nsresult __result = inner.GetParameters(aDocumentStyle, &aCount, &_aParameters);
    CheckException(__result);
    aParameters = _aParameters ? new nsISOAPParameterD(_aParameters) : null;
  }

  /**
   * The primary encoding of the message, which is established
   *   at the envelope and used unless overridden.  By default,
   *   this is the SOAP encoding, which may be locally modified
   *   or used to obtain alternative encodings, which may be
   *   locally modified, but it may be set to an encoding that
   *   is shared, or it may be set to null, in which case all
   *   non-literal header blocks and parameters must specify an
   *   encoding.
   */
  /* attribute nsISOAPEncoding encoding; */
  nsISOAPEncodingD  Encoding(){
    nsISOAPEncoding value;
    nsresult __result = inner.GetEncoding(&value);
    CheckException(__result);
    return new nsISOAPEncodingD(value);
  }
  void Encoding(nsISOAPEncodingD  aEncoding){
    nsISOAPEncoding value;
    nsresult __result = inner.SetEncoding(value);
    CheckException(__result);
  }

  /**
   * An optional URI that can be used to add a SOAPAction HTTP
   * header field. If this attribute is NULL (the default case),
   * no SOAPAction header will be added.
   */
  /* attribute AString actionURI; */
  wchar[] ActionURI(){
    scope auto value = new AString();
    nsresult __result = inner.GetActionURI(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void ActionURI(wchar[] aActionURI){
    scope auto value = new AString(aActionURI);
    nsresult __result = inner.SetActionURI(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsISOAPMessage inner;

}

