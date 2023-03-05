/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPAttachments.idl
 */

module mozilla.xpcom.nsISOAPAttachments;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsISOAPAttachments */
const char[] NS_ISOAPATTACHMENTS_IID_STR = "6192dcbe-1dd2-11b2-81ad-a4597614c4ae";

const nsIID NS_ISOAPATTACHMENTS_IID= 
  {0x6192dcbe, 0x1dd2, 0x11b2, 
    [ 0x81, 0xad, 0xa4, 0x59, 0x76, 0x14, 0xc4, 0xae ]};

/**
 * This interface permits attachment of SOAP attachments.
 */
extern(Windows)
interface nsISOAPAttachments : nsISupports {
  static const char[] IID_STR = NS_ISOAPATTACHMENTS_IID_STR;
  static const nsIID IID = NS_ISOAPATTACHMENTS_IID;

  /**
   * Get the attachment associated with a particular identifier.
   *
   * @param aIdentifier The identifier of the attachment to be accessed.
   *
   * Appropriate return(s) must be identified.
   */
  /* void getAttachment (in AString aIdentifier); */
  nsresult GetAttachment(nsAString * aIdentifier);

  /**
   * Attach an attachment to the message.
   *
   * Appropriate argument(s) must be identified.
   *
   * @return The identifier of the attachment, to be referenced in SOAP encoding
   */
  /* AString attach (); */
  nsresult Attach(nsAString * _retval);

}

