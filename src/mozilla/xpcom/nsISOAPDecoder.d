/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPDecoder.idl
 */

module mozilla.xpcom.nsISOAPDecoder;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsISchema;

public import mozilla.xpcom.nsISOAPEncoding; /* forward declaration */

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */

public import mozilla.xpcom.nsIVariant; /* forward declaration */

public import mozilla.xpcom.nsISOAPAttachments; /* forward declaration */


/* starting interface:    nsISOAPDecoder */
const char[] NS_ISOAPDECODER_IID_STR = "4c2e02ae-1dd2-11b2-b1cd-c79dea3d46db";

const nsIID NS_ISOAPDECODER_IID= 
  {0x4c2e02ae, 0x1dd2, 0x11b2, 
    [ 0xb1, 0xcd, 0xc7, 0x9d, 0xea, 0x3d, 0x46, 0xdb ]};

/**
 * This interface supplies decoding of a specific
 * part of a message XML DOM into appropriate objects
 * for the script or application.
 */
extern(Windows)
interface nsISOAPDecoder : nsISupports {
  static const char[] IID_STR = NS_ISOAPDECODER_IID_STR;
  static const nsIID IID = NS_ISOAPDECODER_IID;

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
  nsresult Decode(nsISOAPEncoding aEncoding, nsIDOMElement aSource, nsISchemaType aSchemaType, nsISOAPAttachments aAttachments, nsIVariant *_retval);

}

