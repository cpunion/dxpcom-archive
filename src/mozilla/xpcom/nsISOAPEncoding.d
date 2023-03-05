/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPEncoding.idl
 */

module mozilla.xpcom.nsISOAPEncoding;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsISchema;

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */

public import mozilla.xpcom.nsISOAPEncoder; /* forward declaration */

public import mozilla.xpcom.nsISOAPDecoder; /* forward declaration */

public import mozilla.xpcom.nsISOAPMessage; /* forward declaration */

public import mozilla.xpcom.nsIVariant; /* forward declaration */

public import mozilla.xpcom.nsISOAPAttachments; /* forward declaration */

public import mozilla.xpcom.nsISchema;

public import mozilla.xpcom.nsISOAPEncoding; /* forward declaration */


/* starting interface:    nsISOAPEncodingRegistry */
const char[] NS_ISOAPENCODINGREGISTRY_IID_STR = "9fe91a61-3048-40e3-99ef-e39ab946ae0b";

const nsIID NS_ISOAPENCODINGREGISTRY_IID= 
  {0x9fe91a61, 0x3048, 0x40e3, 
    [ 0x99, 0xef, 0xe3, 0x9a, 0xb9, 0x46, 0xae, 0x0b ]};

/** 
 * This interface provides access to a collection of SOAP encodings
 *   and schemas. The registry is owned by an encoding.
 */
extern(Windows)
interface nsISOAPEncodingRegistry : nsISupports {
  static const char[] IID_STR = NS_ISOAPENCODINGREGISTRY_IID_STR;
  static const nsIID IID = NS_ISOAPENCODINGREGISTRY_IID;

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
  nsresult GetAssociatedEncoding(nsAString * aStyleURI, PRBool aCreateIf, nsISOAPEncoding *_retval);

  /**
    * The schema collection used by the owning encoding and all 
    *   associated encodings.
    */
  /* attribute nsISchemaCollection schemaCollection; */
  nsresult GetSchemaCollection(nsISchemaCollection  *aSchemaCollection);
  nsresult SetSchemaCollection(nsISchemaCollection  aSchemaCollection);

}


/* starting interface:    nsISOAPEncoding */
const char[] NS_ISOAPENCODING_IID_STR = "9ae49600-1dd1-11b2-877f-e62f620c5e92";

const nsIID NS_ISOAPENCODING_IID= 
  {0x9ae49600, 0x1dd1, 0x11b2, 
    [ 0x87, 0x7f, 0xe6, 0x2f, 0x62, 0x0c, 0x5e, 0x92 ]};

extern(Windows)
interface nsISOAPEncoding : nsISupports {
  static const char[] IID_STR = NS_ISOAPENCODING_IID_STR;
  static const nsIID IID = NS_ISOAPENCODING_IID;

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
  nsresult GetStyleURI(nsAString * aStyleURI);

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
  nsresult GetAssociatedEncoding(nsAString * aStyleURI, PRBool aCreateIf, nsISOAPEncoding *_retval);

  /**
    * Set an encoder in the encoding.
    *
    * @param aKey The key to be associated with the encoder.
    *
    * @param aEncoder The encoder to be specified or null to eliminate
    *   the encoder.
    */
  /* void setEncoder (in AString aKey, in nsISOAPEncoder aEncoder); */
  nsresult SetEncoder(nsAString * aKey, nsISOAPEncoder aEncoder);

  /**
    * Get an encoder from the encoding.
    *
    * @param aKey The key to be used to look up the encoder.
    *
    * @return The encoder.
    */
  /* nsISOAPEncoder getEncoder (in AString aKey); */
  nsresult GetEncoder(nsAString * aKey, nsISOAPEncoder *_retval);

  /**
    * Set a decoder in the encoding.
    *
    * @param aKey The key to be associated with the decoder.
    *
    * @param aDecoder The decoder to be specified or null to eliminate
    *   the decoder.
    */
  /* void setDecoder (in AString aKey, in nsISOAPDecoder aDecoder); */
  nsresult SetDecoder(nsAString * aKey, nsISOAPDecoder aDecoder);

  /**
    * Get a decoder from the encoding.
    *
    * @param aKey The key to be used to look up the decoder.
    *
    * @return The decoder.
    */
  /* nsISOAPDecoder getDecoder (in AString aKey); */
  nsresult GetDecoder(nsAString * aKey, nsISOAPDecoder *_retval);

  /**
   * The default encoder invoked by all encoding calls. Appropriate calls
   * to more-specific encoders, if any, must be dispatched by this default 
   * encoder.  The default encoder typically looks up encoders by known 
   * information such as explicit or implicit types.
   */
  /* attribute nsISOAPEncoder defaultEncoder; */
  nsresult GetDefaultEncoder(nsISOAPEncoder  *aDefaultEncoder);
  nsresult SetDefaultEncoder(nsISOAPEncoder  aDefaultEncoder);

  /**
   * The default decoder invoked by all encoding calls. Appropriate calls
   * to more-specific decoders, if any, must be dispatched by this default 
   * decoder.  The default decoder typically looks up encoders by known 
   * information such as explicit or implicit types.
   */
  /* attribute nsISOAPDecoder defaultDecoder; */
  nsresult GetDefaultDecoder(nsISOAPDecoder  *aDefaultDecoder);
  nsresult SetDefaultDecoder(nsISOAPDecoder  aDefaultDecoder);

  /**
    * The schema collection used by this and all associated encodings.
    */
  /* attribute nsISchemaCollection schemaCollection; */
  nsresult GetSchemaCollection(nsISchemaCollection  *aSchemaCollection);
  nsresult SetSchemaCollection(nsISchemaCollection  aSchemaCollection);

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
  nsresult Encode(nsIVariant aSource, nsAString * aNamespaceURI, nsAString * aName, nsISchemaType aSchemaType, nsISOAPAttachments aAttachments, nsIDOMElement aDestination, nsIDOMElement *_retval);

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
  nsresult Decode(nsIDOMElement aSource, nsISchemaType aSchemaType, nsISOAPAttachments aAttachments, nsIVariant *_retval);

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
  nsresult MapSchemaURI(nsAString * aExternalURI, nsAString * aInternalURI, PRBool aOutput, PRBool *_retval);

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
  nsresult UnmapSchemaURI(nsAString * aExternalURI, PRBool *_retval);

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
  nsresult GetInternalSchemaURI(nsAString * aExternalURI, nsAString * _retval);

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
  nsresult GetExternalSchemaURI(nsAString * aInternalURI, nsAString * _retval);

}

