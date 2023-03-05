/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPBlock.idl
 */

module mozilla.dxpcom.nsISOAPBlockD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISOAPBlock;


public import mozilla.dxpcom.nsISOAPBlockD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;

public import mozilla.xpcom.nsIVariant;

public import mozilla.dxpcom.nsIVariantD;

public import mozilla.xpcom.nsISOAPEncoding;

public import mozilla.dxpcom.nsISOAPEncodingD;

public import mozilla.xpcom.nsISchema;

import mozilla.dxpcom.nsISchemaD;

public import mozilla.xpcom.nsISOAPAttachments;

public import mozilla.dxpcom.nsISOAPAttachmentsD;


/* starting wrapper class:    nsISOAPBlock */
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
class nsISOAPBlockD : public nsISupportsD {

  static const nsIID IID = NS_ISOAPBLOCK_IID;


  alias nsISOAPBlock InnerType;

  this(nsISOAPBlock intr){
    super(intr);
    this.inner = intr;
  }

  nsISOAPBlock opCast() {
    return inner;
  }

  void opAssign(nsISOAPBlock value) {
    inner = value;
  }

  /**
   *  Initialize the block for additional decoding information.
   *
   * @param aAttachments Attachments in case this refers to them.
   *
   * @param aVersion SOAP version for decoding special header attributes.
   */
  /* void init (in nsISOAPAttachments aAttachments, in unsigned short aVersion); */
  void Init(nsISOAPAttachmentsD aAttachments, PRUint16 aVersion){
    nsresult __result = inner.Init(aAttachments ? cast(nsISOAPAttachments)aAttachments : null, aVersion);
    CheckException(__result);
  }

  /**
   *  The namespace URI of the block.  Ignored if name is null.
   *  If this is modified, element is set to null and all 
   *  attributes computed from element revert to previous
   *  uncomputed values.  If element is set, this becomes computed.
   */
  /* attribute AString namespaceURI; */
  wchar[] NamespaceURI(){
    scope auto value = new AString();
    nsresult __result = inner.GetNamespaceURI(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void NamespaceURI(wchar[] aNamespaceURI){
    scope auto value = new AString(aNamespaceURI);
    nsresult __result = inner.SetNamespaceURI(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   * The name of the block. If the block is left unnamed, it
   * will be encoded using the element types defined in the SOAP-ENC
   * schema. For example, <code>&lt;SOAP-ENC:int&gt;45&lt;/SOAP-ENC:int&gt;
   * </code>.  If this is modified, element is set to null and all 
   * attributes computed from element revert to previous uncomputed
   * values.  If element is set, this becomes computed.
   */
  /* attribute AString name; */
  wchar[] Name(){
    scope auto value = new AString();
    nsresult __result = inner.GetName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Name(wchar[] aName){
    scope auto value = new AString(aName);
    nsresult __result = inner.SetName(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   * The encoding that was / will be applied to the
   * block.  If this is blank and element is non-null,
   * it becomes impossible to decode the block when
   * the value is requested.
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
   * The schema type used to encode or decode the
   *   block.  If this is null, then the default
   *   encoder or decoder may 
   */
  /* attribute nsISchemaType schemaType; */
  nsISchemaTypeD  SchemaType(){
    nsISchemaType value;
    nsresult __result = inner.GetSchemaType(&value);
    CheckException(__result);
    return new nsISchemaTypeD(value);
  }
  void SchemaType(nsISchemaTypeD  aSchemaType){
    nsISchemaType value;
    nsresult __result = inner.SetSchemaType(value);
    CheckException(__result);
  }

  /**
   *  The element which is the encoded value of this block.
   *  If this is set, value, namespaceURI, and name becomes a 
   *  computed attributes which are produced by decoding this 
   *  element.
   */
  /* attribute nsIDOMElement element; */
  nsIDOMElementD  Element(){
    nsIDOMElement value;
    nsresult __result = inner.GetElement(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }
  void Element(nsIDOMElementD  aElement){
    nsIDOMElement value;
    nsresult __result = inner.SetElement(value);
    CheckException(__result);
  }

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
  nsIVariantD  Value(){
    nsIVariant value;
    nsresult __result = inner.GetValue(&value);
    CheckException(__result);
    return new nsIVariantD(value);
  }
  void Value(nsIVariantD  aValue){
    nsIVariant value;
    nsresult __result = inner.SetValue(value);
    CheckException(__result);
  }

private:
  nsISOAPBlock inner;

}

