/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPDecoder.idl
 */

module mozilla.dxpcom.nsISOAPDecoderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISOAPDecoder;


public import mozilla.dxpcom.nsISOAPDecoderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsISchema;

import mozilla.dxpcom.nsISchemaD;

public import mozilla.xpcom.nsISOAPEncoding;

public import mozilla.dxpcom.nsISOAPEncodingD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;

public import mozilla.xpcom.nsIVariant;

public import mozilla.dxpcom.nsIVariantD;

public import mozilla.xpcom.nsISOAPAttachments;

public import mozilla.dxpcom.nsISOAPAttachmentsD;


/* starting wrapper class:    nsISOAPDecoder */
/**
 * This interface supplies decoding of a specific
 * part of a message XML DOM into appropriate objects
 * for the script or application.
 */
class nsISOAPDecoderD : public nsISupportsD {

  static const nsIID IID = NS_ISOAPDECODER_IID;


  alias nsISOAPDecoder InnerType;

  this(nsISOAPDecoder intr){
    super(intr);
    this.inner = intr;
  }

  nsISOAPDecoder opCast() {
    return inner;
  }

  void opAssign(nsISOAPDecoder value) {
    inner = value;
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
   * @return The decoded variant, which is null if 
   *   the operation failed or did not return a result.
   */
  /* nsIVariant decode (in nsISOAPEncoding aEncoding, in nsIDOMElement aSource, in nsISchemaType aSchemaType, in nsISOAPAttachments aAttachments); */
  nsIVariantD  Decode(nsISOAPEncodingD aEncoding, nsIDOMElementD aSource, nsISchemaTypeD aSchemaType, nsISOAPAttachmentsD aAttachments){
    nsIVariant _retval;
    nsresult __result = inner.Decode(aEncoding ? cast(nsISOAPEncoding)aEncoding : null, aSource ? cast(nsIDOMElement)aSource : null, aSchemaType ? cast(nsISchemaType)aSchemaType : null, aAttachments ? cast(nsISOAPAttachments)aAttachments : null, &_retval);
    CheckException(__result);
    return new nsIVariantD(_retval);
  }

private:
  nsISOAPDecoder inner;

}

