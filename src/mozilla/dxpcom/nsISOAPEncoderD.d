/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPEncoder.idl
 */

module mozilla.dxpcom.nsISOAPEncoderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISOAPEncoder;


public import mozilla.dxpcom.nsISOAPEncoderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsISchema;

import mozilla.dxpcom.nsISchemaD;

public import mozilla.xpcom.nsISOAPEncoding;

public import mozilla.dxpcom.nsISOAPEncodingD;

public import mozilla.xpcom.nsIVariant;

public import mozilla.dxpcom.nsIVariantD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;

public import mozilla.xpcom.nsISOAPAttachments;

public import mozilla.dxpcom.nsISOAPAttachmentsD;


/* starting wrapper class:    nsISOAPEncoder */
/**
 * This interface permits encoding of variants.
 */
class nsISOAPEncoderD : public nsISupportsD {

  static const nsIID IID = NS_ISOAPENCODER_IID;


  alias nsISOAPEncoder InnerType;

  this(nsISOAPEncoder intr){
    super(intr);
    this.inner = intr;
  }

  nsISOAPEncoder opCast() {
    return inner;
  }

  void opAssign(nsISOAPEncoder value) {
    inner = value;
  }

  /**
   * Encode the source variant.
   *
   * @param aEncodings The encodings to be used.
   *
   * @param aEncodingStyleURI The encoding style
   *
   * @param aSource The variant to be encoded.
   *
   * @param aNamespaceURI The namespace of the thing being coded
   *
   * @param aName The name of the thing being coded
   *
   * @param aSchemaType The schema type of the thing being encoded
   *
   * @param aDestination The node scope, if any, where the result 
   *   will live.  If this is null, then the result must be 
   *   explicitly attached to the message.
   *
   * @return element which was inserted.
   *
   * @param aAttachments Accumulates any attachments.
   */
  /* nsIDOMElement encode (in nsISOAPEncoding aEncoding, in nsIVariant aSource, in AString aNamespaceURI, in AString aName, in nsISchemaType aSchemaType, in nsISOAPAttachments aAttachments, in nsIDOMElement aDestination); */
  nsIDOMElementD  Encode(nsISOAPEncodingD aEncoding, nsIVariantD aSource, wchar[] aNamespaceURI, wchar[] aName, nsISchemaTypeD aSchemaType, nsISOAPAttachmentsD aAttachments, nsIDOMElementD aDestination){
    scope auto _aNamespaceURI = new AString(aNamespaceURI);
    scope auto _aName = new AString(aName);
    nsIDOMElement _retval;
    nsresult __result = inner.Encode(aEncoding ? cast(nsISOAPEncoding)aEncoding : null, aSource ? cast(nsIVariant)aSource : null, cast(nsAString*)_aNamespaceURI, cast(nsAString*)_aName, aSchemaType ? cast(nsISchemaType)aSchemaType : null, aAttachments ? cast(nsISOAPAttachments)aAttachments : null, aDestination ? cast(nsIDOMElement)aDestination : null, &_retval);
    CheckException(__result);
    return new nsIDOMElementD(_retval);
  }

private:
  nsISOAPEncoder inner;

}

