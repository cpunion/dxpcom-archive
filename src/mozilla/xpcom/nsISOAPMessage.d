/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPMessage.idl
 */

module mozilla.xpcom.nsISOAPMessage;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMDocument; /* forward declaration */

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */

public import mozilla.xpcom.nsISOAPEncoding; /* forward declaration */

public import mozilla.xpcom.nsISOAPHeaderBlock; /* forward declaration */

public import mozilla.xpcom.nsISOAPParameter; /* forward declaration */

public import mozilla.xpcom.nsIVariant; /* forward declaration */


/* starting interface:    nsISOAPMessage */
const char[] NS_ISOAPMESSAGE_IID_STR = "3970815e-1dd2-11b2-a475-db4dac6826f1";

const nsIID NS_ISOAPMESSAGE_IID= 
  {0x3970815e, 0x1dd2, 0x11b2, 
    [ 0xa4, 0x75, 0xdb, 0x4d, 0xac, 0x68, 0x26, 0xf1 ]};

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
extern(Windows)
interface nsISOAPMessage : nsISupports {
  static const char[] IID_STR = NS_ISOAPMESSAGE_IID_STR;
  static const nsIID IID = NS_ISOAPMESSAGE_IID;

  enum { VERSION_1_1 = 0U };

  enum { VERSION_1_2 = 1U };

  enum { VERSION_UNKNOWN = 65535U };

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
  nsresult GetMessage(nsIDOMDocument  *aMessage);
  nsresult SetMessage(nsIDOMDocument  aMessage);

  /**
   * A convenience attribute to obtain the DOM element representing the
   * SOAP envelope from the document.  DOM methods may be used to 
   * access, add, or modify attributes of the envelope.
   *
   * If the message attribute is null or is not a document containing
   * a root soap envelope element, then this will be null.
   */
  /* readonly attribute nsIDOMElement envelope; */
  nsresult GetEnvelope(nsIDOMElement  *aEnvelope);

  /**
   * A convenience attribute to obtain the SOAP version number, if
   * it is known, from the envelope.
   *
   * If the message attribute is null or is not a document containing
   * a root soap envelope element, then this will be VERSION_UNKNOWN.
   */
  /* readonly attribute unsigned short version; */
  nsresult GetVersion(PRUint16 *aVersion);

  /**
   * A convenience attribute to obtain the DOM element representing the
   * SOAP header from the envelope.  DOM methods may be used to 
   * access, add, or modify attributes or elements of the header.
   *
   * If the envelope attribute is null or does not contain a SOAP header
   * element type, then this will be null.
   */
  /* readonly attribute nsIDOMElement header; */
  nsresult GetHeader(nsIDOMElement  *aHeader);

  /**
   * A convenience attribute to obtain the DOM element representing the
   * SOAP body from the envelope.  DOM methods may be used to 
   * access, add, or modify attributes or elements of the body.
   *
   * If the envelope attribute is null or does not contain a SOAP body
   * element type, then this will be null.
   */
  /* readonly attribute nsIDOMElement body; */
  nsresult GetBody(nsIDOMElement  *aBody);

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
  nsresult GetMethodName(nsAString * aMethodName);

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
  nsresult GetTargetObjectURI(nsAString * aTargetObjectURI);

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
  nsresult Encode(PRUint16 aVersion, nsAString * aMethodName, nsAString * aTargetObjectURI, PRUint32 aHeaderBlockCount, nsISOAPHeaderBlock *aHeaderBlocks, PRUint32 aParameterCount, nsISOAPParameter *aParameters);

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
  nsresult GetHeaderBlocks(PRUint32 *aCount, nsISOAPHeaderBlock **aHeaderBlocks);

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
  nsresult GetParameters(PRBool aDocumentStyle, PRUint32 *aCount, nsISOAPParameter **aParameters);

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
  nsresult GetEncoding(nsISOAPEncoding  *aEncoding);
  nsresult SetEncoding(nsISOAPEncoding  aEncoding);

  /**
   * An optional URI that can be used to add a SOAPAction HTTP
   * header field. If this attribute is NULL (the default case),
   * no SOAPAction header will be added.
   */
  /* attribute AString actionURI; */
  nsresult GetActionURI(nsAString * aActionURI);
  nsresult SetActionURI(nsAString * aActionURI);

}

