/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPEncoding.idl
 */

module mozilla.dxpcom.nsISOAPEncodingD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISOAPEncoding;


public import mozilla.dxpcom.nsISOAPEncodingD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsISchema;

import mozilla.dxpcom.nsISchemaD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;

public import mozilla.xpcom.nsISOAPEncoder;

public import mozilla.dxpcom.nsISOAPEncoderD;

public import mozilla.xpcom.nsISOAPDecoder;

public import mozilla.dxpcom.nsISOAPDecoderD;

public import mozilla.xpcom.nsISOAPMessage;

public import mozilla.dxpcom.nsISOAPMessageD;

public import mozilla.xpcom.nsIVariant;

public import mozilla.dxpcom.nsIVariantD;

public import mozilla.xpcom.nsISOAPAttachments;

public import mozilla.dxpcom.nsISOAPAttachmentsD;

public import mozilla.xpcom.nsISchema;

import mozilla.dxpcom.nsISchemaD;

public import mozilla.xpcom.nsISOAPEncoding;

public import mozilla.dxpcom.nsISOAPEncodingD;


/* starting wrapper class:    nsISOAPEncodingRegistry */
/** 
 * This interface provides access to a collection of SOAP encodings
 *   and schemas. The registry is owned by an encoding.
 */
class nsISOAPEncodingRegistryD : public nsISupportsD {

  static const nsIID IID = NS_ISOAPENCODINGREGISTRY_IID;


  alias nsISOAPEncodingRegistry InnerType;

  this(nsISOAPEncodingRegistry intr){
    super(intr);
    this.inner = intr;
  }

  nsISOAPEncodingRegistry opCast() {
    return inner;
  }

  void opAssign(nsISOAPEncodingRegistry value) {
    inner = value;
  }

  /**
   * Get an associated encoding for a different encoding style.  If
   *   there is no default associated encoding available for the
   *   specified encoding style, then if aCreateIf is specified, one
   *   is created, otherwise a null is returned.  Associated encodings
   *   are the set of encodings that may be used and modified together
   *   as a set.
   *
   * @param aStyleURI The style URI of the associated encoding.
   *
   * @param aCreateIf If true, then create the associated encoding if it
   *   does not already exist, otherwise return the existing encoding.
   *
   * @return The associated encoding which corresponds to the
   *   specified styleURI, or null if the spefied alternative encoding
   *   does not exist and it was not requested that it be created.
   */
  /* nsISOAPEncoding getAssociatedEncoding (in AString aStyleURI, in boolean aCreateIf); */
  nsISOAPEncodingD  GetAssociatedEncoding(wchar[] aStyleURI, PRBool aCreateIf){
    scope auto _aStyleURI = new AString(aStyleURI);
    nsISOAPEncoding _retval;
    nsresult __result = inner.GetAssociatedEncoding(cast(nsAString*)_aStyleURI, aCreateIf, &_retval);
    CheckException(__result);
    return new nsISOAPEncodingD(_retval);
  }

  /**
    * The schema collection used by the owning encoding and all 
    *   associated encodings.
    */
  /* attribute nsISchemaCollection schemaCollection; */
  nsISchemaCollectionD  SchemaCollection(){
    nsISchemaCollection value;
    nsresult __result = inner.GetSchemaCollection(&value);
    CheckException(__result);
    return new nsISchemaCollectionD(value);
  }
  void SchemaCollection(nsISchemaCollectionD  aSchemaCollection){
    nsISchemaCollection value;
    nsresult __result = inner.SetSchemaCollection(value);
    CheckException(__result);
  }

private:
  nsISOAPEncodingRegistry inner;

}


/* starting wrapper class:    nsISOAPEncoding */
class nsISOAPEncodingD : public nsISupportsD {

  static const nsIID IID = NS_ISOAPENCODING_IID;


  alias nsISOAPEncoding InnerType;

  this(nsISOAPEncoding intr){
    super(intr);
    this.inner = intr;
  }

  nsISOAPEncoding opCast() {
    return inner;
  }

  void opAssign(nsISOAPEncoding value) {
    inner = value;
  }

  /**
 * This interface keeps track of the current encoding style and
 *   how objects should be encoded or decoded, as well as all
 *   associated encodings.
 *   <p>While two different nsSOAPCalls may have an encoding
 *   for the same styleURI, by default the encoding object and all
 *   associated encoding objects are local do not affect other
 *   calls because the encodings are local and not associated, 
 *   unless the same or associated encodings are explicitly set
 *   on multiple calls.  When a call is invoked, the same encoding 
 *   object is automatically set on the response message so that
 *   decoders registered on the call encoding are automatically
 *   applied to the response.
 */
/**
   * The name of the encoding as it is known to SOAP.
   */
  /* readonly attribute AString styleURI; */
  wchar[] StyleURI(){
    scope auto value = new AString();
    nsresult __result = inner.GetStyleURI(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * Get an associated encoding for a different encoding style.  If
   *   there is no default associated encoding available for the
   *   specified encoding style, then if aCreateIf is specified, one
   *   is created, otherwise a null is returned.  Associated encodings
   *   are the set of encodings that may be used and modified together
   *   as a set.
   *
   * @param aStyleURI The style URI of the associated encoding.
   *
   * @param aCreateIf If true, then create the associated encoding if it
   *   does not already exist, otherwise return the existing encoding.
   *
   * @return The associated encoding which corresponds to the
   *   specified styleURI, or null if the spefied alternative encoding
   *   does not exist and it was not requested that it be created.
   */
  /* nsISOAPEncoding getAssociatedEncoding (in AString aStyleURI, in boolean aCreateIf); */
  nsISOAPEncodingD  GetAssociatedEncoding(wchar[] aStyleURI, PRBool aCreateIf){
    scope auto _aStyleURI = new AString(aStyleURI);
    nsISOAPEncoding _retval;
    nsresult __result = inner.GetAssociatedEncoding(cast(nsAString*)_aStyleURI, aCreateIf, &_retval);
    CheckException(__result);
    return new nsISOAPEncodingD(_retval);
  }

  /**
    * Set an encoder in the encoding.
    *
    * @param aKey The key to be associated with the encoder.
    *
    * @param aEncoder The encoder to be specified or null to eliminate
    *   the encoder.
    */
  /* void setEncoder (in AString aKey, in nsISOAPEncoder aEncoder); */
  void SetEncoder(wchar[] aKey, nsISOAPEncoderD aEncoder){
    scope auto _aKey = new AString(aKey);
    nsresult __result = inner.SetEncoder(cast(nsAString*)_aKey, aEncoder ? cast(nsISOAPEncoder)aEncoder : null);
    CheckException(__result);
  }

  /**
    * Get an encoder from the encoding.
    *
    * @param aKey The key to be used to look up the encoder.
    *
    * @return The encoder.
    */
  /* nsISOAPEncoder getEncoder (in AString aKey); */
  nsISOAPEncoderD  GetEncoder(wchar[] aKey){
    scope auto _aKey = new AString(aKey);
    nsISOAPEncoder _retval;
    nsresult __result = inner.GetEncoder(cast(nsAString*)_aKey, &_retval);
    CheckException(__result);
    return new nsISOAPEncoderD(_retval);
  }

  /**
    * Set a decoder in the encoding.
    *
    * @param aKey The key to be associated with the decoder.
    *
    * @param aDecoder The decoder to be specified or null to eliminate
    *   the decoder.
    */
  /* void setDecoder (in AString aKey, in nsISOAPDecoder aDecoder); */
  void SetDecoder(wchar[] aKey, nsISOAPDecoderD aDecoder){
    scope auto _aKey = new AString(aKey);
    nsresult __result = inner.SetDecoder(cast(nsAString*)_aKey, aDecoder ? cast(nsISOAPDecoder)aDecoder : null);
    CheckException(__result);
  }

  /**
    * Get a decoder from the encoding.
    *
    * @param aKey The key to be used to look up the decoder.
    *
    * @return The decoder.
    */
  /* nsISOAPDecoder getDecoder (in AString aKey); */
  nsISOAPDecoderD  GetDecoder(wchar[] aKey){
    scope auto _aKey = new AString(aKey);
    nsISOAPDecoder _retval;
    nsresult __result = inner.GetDecoder(cast(nsAString*)_aKey, &_retval);
    CheckException(__result);
    return new nsISOAPDecoderD(_retval);
  }

  /**
   * The default encoder invoked by all encoding calls. Appropriate calls
   * to more-specific encoders, if any, must be dispatched by this default 
   * encoder.  The default encoder typically looks up encoders by known 
   * information such as explicit or implicit types.
   */
  /* attribute nsISOAPEncoder defaultEncoder; */
  nsISOAPEncoderD  DefaultEncoder(){
    nsISOAPEncoder value;
    nsresult __result = inner.GetDefaultEncoder(&value);
    CheckException(__result);
    return new nsISOAPEncoderD(value);
  }
  void DefaultEncoder(nsISOAPEncoderD  aDefaultEncoder){
    nsISOAPEncoder value;
    nsresult __result = inner.SetDefaultEncoder(value);
    CheckException(__result);
  }

  /**
   * The default decoder invoked by all encoding calls. Appropriate calls
   * to more-specific decoders, if any, must be dispatched by this default 
   * decoder.  The default decoder typically looks up encoders by known 
   * information such as explicit or implicit types.
   */
  /* attribute nsISOAPDecoder defaultDecoder; */
  nsISOAPDecoderD  DefaultDecoder(){
    nsISOAPDecoder value;
    nsresult __result = inner.GetDefaultDecoder(&value);
    CheckException(__result);
    return new nsISOAPDecoderD(value);
  }
  void DefaultDecoder(nsISOAPDecoderD  aDefaultDecoder){
    nsISOAPDecoder value;
    nsresult __result = inner.SetDefaultDecoder(value);
    CheckException(__result);
  }

  /**
    * The schema collection used by this and all associated encodings.
    */
  /* attribute nsISchemaCollection schemaCollection; */
  nsISchemaCollectionD  SchemaCollection(){
    nsISchemaCollection value;
    nsresult __result = inner.GetSchemaCollection(&value);
    CheckException(__result);
    return new nsISchemaCollectionD(value);
  }
  void SchemaCollection(nsISchemaCollectionD  aSchemaCollection){
    nsISchemaCollection value;
    nsresult __result = inner.SetSchemaCollection(value);
    CheckException(__result);
  }

  /**
   * Encode the source variant
   *
   * @param aEncodings The encodings to be used.
   *
   * @param aEncodingStyleURI The encoding style
   *
   * @param aSource The variant to be encoded, soon to become a variant
   *
   * @param aNamespaceURI The namespace of the thing being coded
   *
   * @param aName The name of the thing being coded
   *
   * @param aSchemaType The schema type of the thing being encoded
   *
   * @param aDestination The node scope where the result will live.
   *
   * @param aAttachments Accumulates any attachments.
   *
   * @return The element which was inserted and encoded.
   */
  /* nsIDOMElement encode (in nsIVariant aSource, in AString aNamespaceURI, in AString aName, in nsISchemaType aSchemaType, in nsISOAPAttachments aAttachments, in nsIDOMElement aDestination); */
  nsIDOMElementD  Encode(nsIVariantD aSource, wchar[] aNamespaceURI, wchar[] aName, nsISchemaTypeD aSchemaType, nsISOAPAttachmentsD aAttachments, nsIDOMElementD aDestination){
    scope auto _aNamespaceURI = new AString(aNamespaceURI);
    scope auto _aName = new AString(aName);
    nsIDOMElement _retval;
    nsresult __result = inner.Encode(aSource ? cast(nsIVariant)aSource : null, cast(nsAString*)_aNamespaceURI, cast(nsAString*)_aName, aSchemaType ? cast(nsISchemaType)aSchemaType : null, aAttachments ? cast(nsISOAPAttachments)aAttachments : null, aDestination ? cast(nsIDOMElement)aDestination : null, &_retval);
    CheckException(__result);
    return new nsIDOMElementD(_retval);
  }

  /**
   * Decode the source DOM node
   *
   * @param aEncodings The encodings used to decode
   *
   * @param aEncodingStyleURI The encoding style
   *
   * @param aSource The DOM node to be decoded.
   *
   * @param aSchemaType The schema type of the source DOM node
   *
   * @param aAttachments Dispenses any attachments.
   *
   * @return The decoded variant, soon to become a variant, which is null if 
   *   the operation failed or did not return a result.
   */
  /* nsIVariant decode (in nsIDOMElement aSource, in nsISchemaType aSchemaType, in nsISOAPAttachments aAttachments); */
  nsIVariantD  Decode(nsIDOMElementD aSource, nsISchemaTypeD aSchemaType, nsISOAPAttachmentsD aAttachments){
    nsIVariant _retval;
    nsresult __result = inner.Decode(aSource ? cast(nsIDOMElement)aSource : null, aSchemaType ? cast(nsISchemaType)aSchemaType : null, aAttachments ? cast(nsISOAPAttachments)aAttachments : null, &_retval);
    CheckException(__result);
    return new nsIVariantD(_retval);
  }

  /**
   * Map an external schema URI to an internal one.  In an
   * ideal world, we don't need this, but schemas change URIs,
   * and we wind up with inconsistencies between WSDL and
   * exchanged documents.  The external URI must not be
   * currently mapped and if output mapping is true, then
   * the internal URI must be unique for output mapping.
   *
   * @param aExternalURI the external URI to be mapped.
   *
   * @param aInternalURI the internal URI to be mapped.
   *
   * @param aOutput If true, then re-map to the output
   *   URI when outputting.
   *
   * @return boolean true if succeeded, false if the
   *   mapping was not unique as required.
   */
  /* boolean mapSchemaURI (in AString aExternalURI, in AString aInternalURI, in boolean aOutput); */
  PRBool MapSchemaURI(wchar[] aExternalURI, wchar[] aInternalURI, PRBool aOutput){
    scope auto _aExternalURI = new AString(aExternalURI);
    scope auto _aInternalURI = new AString(aInternalURI);
    PRBool _retval;
    nsresult __result = inner.MapSchemaURI(cast(nsAString*)_aExternalURI, cast(nsAString*)_aInternalURI, aOutput, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Unmap an external schema URI as mapped by
   * mapSchemaURI.
   *
   * @param aExternalURI the external URI to be mapped.
   *
   * @return boolean true if succeeded, false if the
   *   mapping did not exist.
   */
  /* boolean unmapSchemaURI (in AString aExternalURI); */
  PRBool UnmapSchemaURI(wchar[] aExternalURI){
    scope auto _aExternalURI = new AString(aExternalURI);
    PRBool _retval;
    nsresult __result = inner.UnmapSchemaURI(cast(nsAString*)_aExternalURI, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Get an internal schema URI from an external one.
   *
   * @param aExternalURI the external URI which may
   *   have been mapped.
   *
   * @return The corresponding internal URI (the
   *   original is returned if it has not been mapped).
   */
  /* AString getInternalSchemaURI (in AString aExternalURI); */
  wchar[] GetInternalSchemaURI(wchar[] aExternalURI){
    scope auto _aExternalURI = new AString(aExternalURI);
    scope auto _retval = new AString;
    nsresult __result = inner.GetInternalSchemaURI(cast(nsAString*)_aExternalURI, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Get an external schema URI from an internal one.
   *
   * @param aExternalURI the external URI which may
   *   have been mapped.
   *
   * @return The corresponding internal URI (the
   *   original is returned if it has not been mapped).
   */
  /* AString getExternalSchemaURI (in AString aInternalURI); */
  wchar[] GetExternalSchemaURI(wchar[] aInternalURI){
    scope auto _aInternalURI = new AString(aInternalURI);
    scope auto _retval = new AString;
    nsresult __result = inner.GetExternalSchemaURI(cast(nsAString*)_aInternalURI, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsISOAPEncoding inner;

}

