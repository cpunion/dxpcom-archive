/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPEncoder.idl
 */

module mozilla.xpcom.nsISOAPEncoder;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsISchema;

public import mozilla.xpcom.nsISOAPEncoding; /* forward declaration */

public import mozilla.xpcom.nsIVariant; /* forward declaration */

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */

public import mozilla.xpcom.nsISOAPAttachments; /* forward declaration */


/* starting interface:    nsISOAPEncoder */
const char[] NS_ISOAPENCODER_IID_STR = "fc33ffd6-1dd1-11b2-8750-fa62430a38b4";

const nsIID NS_ISOAPENCODER_IID= 
  {0xfc33ffd6, 0x1dd1, 0x11b2, 
    [ 0x87, 0x50, 0xfa, 0x62, 0x43, 0x0a, 0x38, 0xb4 ]};

/**
 * This interface permits encoding of variants.
 */
extern(Windows)
interface nsISOAPEncoder : nsISupports {
  static const char[] IID_STR = NS_ISOAPENCODER_IID_STR;
  static const nsIID IID = NS_ISOAPENCODER_IID;

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
  nsresult Encode(nsISOAPEncoding aEncoding, nsIVariant aSource, nsAString * aNamespaceURI, nsAString * aName, nsISchemaType aSchemaType, nsISOAPAttachments aAttachments, nsIDOMElement aDestination, nsIDOMElement *_retval);

}

