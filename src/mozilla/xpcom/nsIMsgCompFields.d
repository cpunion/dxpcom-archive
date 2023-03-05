/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgCompFields.idl
 */

module mozilla.xpcom.nsIMsgCompFields;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIMsgRecipientArray;
public import mozilla.xpcom.nsIMsgAttachment;
public import mozilla.xpcom.nsISupportsArray;


/* starting interface:    nsIMsgCompFields */
const char[] NS_IMSGCOMPFIELDS_IID_STR = "f5a85828-e9ef-4821-a045-6dc7a09351d6";

const nsIID NS_IMSGCOMPFIELDS_IID= 
  {0xf5a85828, 0xe9ef, 0x4821, 
    [ 0xa0, 0x45, 0x6d, 0xc7, 0xa0, 0x93, 0x51, 0xd6 ]};

extern(Windows)
interface nsIMsgCompFields : nsISupports {
  static const char[] IID_STR = NS_IMSGCOMPFIELDS_IID_STR;
  static const nsIID IID = NS_IMSGCOMPFIELDS_IID;

  /* attribute AString from; */
  nsresult GetFrom(nsAString * aFrom);
  nsresult SetFrom(nsAString * aFrom);

  /* attribute AString replyTo; */
  nsresult GetReplyTo(nsAString * aReplyTo);
  nsresult SetReplyTo(nsAString * aReplyTo);

  /* attribute AString to; */
  nsresult GetTo(nsAString * aTo);
  nsresult SetTo(nsAString * aTo);

  /* attribute AString cc; */
  nsresult GetCc(nsAString * aCc);
  nsresult SetCc(nsAString * aCc);

  /* attribute AString bcc; */
  nsresult GetBcc(nsAString * aBcc);
  nsresult SetBcc(nsAString * aBcc);

  /* attribute AString fcc; */
  nsresult GetFcc(nsAString * aFcc);
  nsresult SetFcc(nsAString * aFcc);

  /* attribute AString fcc2; */
  nsresult GetFcc2(nsAString * aFcc2);
  nsresult SetFcc2(nsAString * aFcc2);

  /* attribute AString newsgroups; */
  nsresult GetNewsgroups(nsAString * aNewsgroups);
  nsresult SetNewsgroups(nsAString * aNewsgroups);

  /* attribute string newshost; */
  nsresult GetNewshost(char * *aNewshost);
  nsresult SetNewshost(char * aNewshost);

  /* attribute string newspostUrl; */
  nsresult GetNewspostUrl(char * *aNewspostUrl);
  nsresult SetNewspostUrl(char * aNewspostUrl);

  /* attribute string followupTo; */
  nsresult GetFollowupTo(char * *aFollowupTo);
  nsresult SetFollowupTo(char * aFollowupTo);

  /* attribute AString subject; */
  nsresult GetSubject(nsAString * aSubject);
  nsresult SetSubject(nsAString * aSubject);

  /**
   * attachments
   *
   * @OBSOLETE, DO NOT USE ANYMORE
   */
  /* attribute string attachments; */
  nsresult GetAttachments(char * *aAttachments);
  nsresult SetAttachments(char * aAttachments);

  /* attribute AString organization; */
  nsresult GetOrganization(nsAString * aOrganization);
  nsresult SetOrganization(nsAString * aOrganization);

  /* attribute string references; */
  nsresult GetReferences(char * *aReferences);
  nsresult SetReferences(char * aReferences);

  /* attribute string priority; */
  nsresult GetPriority(char * *aPriority);
  nsresult SetPriority(char * aPriority);

  /* attribute string messageId; */
  nsresult GetMessageId(char * *aMessageId);
  nsresult SetMessageId(char * aMessageId);

  /* attribute string characterSet; */
  nsresult GetCharacterSet(char * *aCharacterSet);
  nsresult SetCharacterSet(char * aCharacterSet);

  /* readonly attribute string defaultCharacterSet; */
  nsresult GetDefaultCharacterSet(char * *aDefaultCharacterSet);

  /* attribute AString templateName; */
  nsresult GetTemplateName(nsAString * aTemplateName);
  nsresult SetTemplateName(nsAString * aTemplateName);

  /* attribute string draftId; */
  nsresult GetDraftId(char * *aDraftId);
  nsresult SetDraftId(char * aDraftId);

  /* attribute boolean returnReceipt; */
  nsresult GetReturnReceipt(PRBool *aReturnReceipt);
  nsresult SetReturnReceipt(PRBool aReturnReceipt);

  /* attribute long receiptHeaderType; */
  nsresult GetReceiptHeaderType(PRInt32 *aReceiptHeaderType);
  nsresult SetReceiptHeaderType(PRInt32 aReceiptHeaderType);

  /* attribute boolean attachVCard; */
  nsresult GetAttachVCard(PRBool *aAttachVCard);
  nsresult SetAttachVCard(PRBool aAttachVCard);

  /* attribute boolean forcePlainText; */
  nsresult GetForcePlainText(PRBool *aForcePlainText);
  nsresult SetForcePlainText(PRBool aForcePlainText);

  /* attribute boolean useMultipartAlternative; */
  nsresult GetUseMultipartAlternative(PRBool *aUseMultipartAlternative);
  nsresult SetUseMultipartAlternative(PRBool aUseMultipartAlternative);

  /* attribute boolean uuEncodeAttachments; */
  nsresult GetUuEncodeAttachments(PRBool *aUuEncodeAttachments);
  nsresult SetUuEncodeAttachments(PRBool aUuEncodeAttachments);

  /* attribute boolean bodyIsAsciiOnly; */
  nsresult GetBodyIsAsciiOnly(PRBool *aBodyIsAsciiOnly);
  nsresult SetBodyIsAsciiOnly(PRBool aBodyIsAsciiOnly);

  /* attribute boolean forceMsgEncoding; */
  nsresult GetForceMsgEncoding(PRBool *aForceMsgEncoding);
  nsresult SetForceMsgEncoding(PRBool aForceMsgEncoding);

  /* attribute AString otherRandomHeaders; */
  nsresult GetOtherRandomHeaders(nsAString * aOtherRandomHeaders);
  nsresult SetOtherRandomHeaders(nsAString * aOtherRandomHeaders);

  /* attribute AString body; */
  nsresult GetBody(nsAString * aBody);
  nsresult SetBody(nsAString * aBody);

  /**
   * temporaryFiles
   *
   * @OBSOLETE, DO NOT USE ANYMORE
   */
  /* attribute string temporaryFiles; */
  nsresult GetTemporaryFiles(char * *aTemporaryFiles);
  nsresult SetTemporaryFiles(char * aTemporaryFiles);

  /* readonly attribute nsISupportsArray attachmentsArray; */
  nsresult GetAttachmentsArray(nsISupportsArray  *aAttachmentsArray);

  /* void addAttachment (in nsIMsgAttachment attachment); */
  nsresult AddAttachment(nsIMsgAttachment attachment);

  /* void removeAttachment (in nsIMsgAttachment attachment); */
  nsresult RemoveAttachment(nsIMsgAttachment attachment);

  /* void removeAttachments (); */
  nsresult RemoveAttachments();

  /* nsIMsgRecipientArray SplitRecipients (in wstring recipients, in boolean emailAddressOnly); */
  nsresult SplitRecipients(PRUnichar *recipients, PRBool emailAddressOnly, nsIMsgRecipientArray *_retval);

  /* void ConvertBodyToPlainText (); */
  nsresult ConvertBodyToPlainText();

  /* boolean checkCharsetConversion (out string fallbackCharset); */
  nsresult CheckCharsetConversion(char **fallbackCharset, PRBool *_retval);

  /** 
   * Indicates whether we need to check if the current |DocumentCharset|
   * can represent all the characters in the message body. It should be
   * initialized to true and set to false when 'Send Anyway' is selected
   * by a user. (bug 249530)
   */
  /* attribute boolean needToCheckCharset; */
  nsresult GetNeedToCheckCharset(PRBool *aNeedToCheckCharset);
  nsresult SetNeedToCheckCharset(PRBool aNeedToCheckCharset);

  /* attribute nsISupports securityInfo; */
  nsresult GetSecurityInfo(nsISupports  *aSecurityInfo);
  nsresult SetSecurityInfo(nsISupports  aSecurityInfo);

}

