/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPBlock.idl
 */

module mozilla.xpcom.nsISOAPBlock;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */

public import mozilla.xpcom.nsIVariant; /* forward declaration */

public import mozilla.xpcom.nsISOAPEncoding; /* forward declaration */

public import mozilla.xpcom.nsISchema;

public import mozilla.xpcom.nsISOAPAttachments; /* forward declaration */


/* starting interface:    nsISOAPBlock */
const char[] NS_ISOAPBLOCK_IID_STR = "843afaa8-1dd2-11b2-8b0d-9b5d16fe64ea";

const nsIID NS_ISOAPBLOCK_IID= 
  {0x843afaa8, 0x1dd2, 0x11b2, 
    [ 0x8b, 0x0d, 0x9b, 0x5d, 0x16, 0xfe, 0x64, 0xea ]};

/**
 * This interface encapsulates an arbitrary block to be used
 * by the soap serialization or protocol.  It presents the
 * namespaceURI, name, encoding, schemaType, and value of the
 * block.  There are two different ways this may be used:
 * <p>1.  When created by a user for serialization, a value is set
 * which is then used to encode the message.  In this case, the
 * user sets the value (or element in the case of a literal
 * block) which is then encoded (unless it is the element) 
 * and incorporated into the document as it is encoded.
 * <p>2.  When requested by the user from a message that is to
 * be decoded.  In this case, an element is set on the block
 * which is automatically decoded whenever the value attribute is
 * accessed (possibly after the user sets the encoding or schemaType,
 * or for literal blocks, the user just accesses the element and
 * no decoding is performed.  For SOAP which attachments, hidden 
 * attachments may also be associated from the message to the block 
 * so that later decoding which relies on the attachments is possible.
 */
extern(Windows)
interface nsISOAPBlock : nsISupports {
  static const char[] IID_STR = NS_ISOAPBLOCK_IID_STR;
  static const nsIID IID = NS_ISOAPBLOCK_IID;

  /**
   *  Initialize the block for additional decoding information.
   *
   * @param aAttachments Attachments in case this refers to them.
   *
   * @param aVersion SOAP version for decoding special header attributes.
   */
  /* void init (in nsISOAPAttachments aAttachments, in unsigned short aVersion); */
  nsresult Init(nsISOAPAttachments aAttachments, PRUint16 aVersion);

  /**
   *  The namespace URI of the block.  Ignored if name is null.
   *  If this is modified, element is set to null and all 
   *  attributes computed from element revert to previous
   *  uncomputed values.  If element is set, this becomes computed.
   */
  /* attribute AString namespaceURI; */
  nsresult GetNamespaceURI(nsAString * aNamespaceURI);
  nsresult SetNamespaceURI(nsAString * aNamespaceURI);

  /**
   * The name of the block. If the block is left unnamed, it
   * will be encoded using the element types defined in the SOAP-ENC
   * schema. For example, <code>&lt;SOAP-ENC:int&gt;45&lt;/SOAP-ENC:int&gt;
   * </code>.  If this is modified, element is set to null and all 
   * attributes computed from element revert to previous uncomputed
   * values.  If element is set, this becomes computed.
   */
  /* attribute AString name; */
  nsresult GetName(nsAString * aName);
  nsresult SetName(nsAString * aName);

  /**
   * The encoding that was / will be applied to the
   * block.  If this is blank and element is non-null,
   * it becomes impossible to decode the block when
   * the value is requested.
   */
  /* attribute nsISOAPEncoding encoding; */
  nsresult GetEncoding(nsISOAPEncoding  *aEncoding);
  nsresult SetEncoding(nsISOAPEncoding  aEncoding);

  /**
   * The schema type used to encode or decode the
   *   block.  If this is null, then the default
   *   encoder or decoder may 
   */
  /* attribute nsISchemaType schemaType; */
  nsresult GetSchemaType(nsISchemaType  *aSchemaType);
  nsresult SetSchemaType(nsISchemaType  aSchemaType);

  /**
   *  The element which is the encoded value of this block.
   *  If this is set, value, namespaceURI, and name becomes a 
   *  computed attributes which are produced by decoding this 
   *  element.
   */
  /* attribute nsIDOMElement element; */
  nsresult GetElement(nsIDOMElement  *aElement);
  nsresult SetElement(nsIDOMElement  aElement);

  /**
   *  The native value which is the decoded value of 
   *  this block.  If this is modified, element is set
   *  to null and all attributes computed from element 
   *  revert to previous uncomputed values.  If element 
   *  is set, this becomes computed, relying on the 
   *  value of encoding and schemaType each time it is 
   *  computed.
   */
  /* attribute nsIVariant value; */
  nsresult GetValue(nsIVariant  *aValue);
  nsresult SetValue(nsIVariant  aValue);

}

