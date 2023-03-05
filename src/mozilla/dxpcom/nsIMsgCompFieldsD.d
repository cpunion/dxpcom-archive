/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgCompFields.idl
 */

module mozilla.dxpcom.nsIMsgCompFieldsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgCompFields;


public import mozilla.dxpcom.nsIMsgCompFieldsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIMsgRecipientArray;
public import mozilla.dxpcom.nsIMsgRecipientArrayD;
public import mozilla.xpcom.nsIMsgAttachment;
public import mozilla.dxpcom.nsIMsgAttachmentD;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.dxpcom.nsISupportsArrayD;


/* starting wrapper class:    nsIMsgCompFields */
class nsIMsgCompFieldsD : public nsISupportsD {

  static const nsIID IID = NS_IMSGCOMPFIELDS_IID;


  alias nsIMsgCompFields InnerType;

  this(nsIMsgCompFields intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgCompFields opCast() {
    return inner;
  }

  void opAssign(nsIMsgCompFields value) {
    inner = value;
  }

  /* attribute AString from; */
  wchar[] From(){
    scope auto value = new AString();
    nsresult __result = inner.GetFrom(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void From(wchar[] aFrom){
    scope auto value = new AString(aFrom);
    nsresult __result = inner.SetFrom(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute AString replyTo; */
  wchar[] ReplyTo(){
    scope auto value = new AString();
    nsresult __result = inner.GetReplyTo(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void ReplyTo(wchar[] aReplyTo){
    scope auto value = new AString(aReplyTo);
    nsresult __result = inner.SetReplyTo(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute AString to; */
  wchar[] To(){
    scope auto value = new AString();
    nsresult __result = inner.GetTo(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void To(wchar[] aTo){
    scope auto value = new AString(aTo);
    nsresult __result = inner.SetTo(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute AString cc; */
  wchar[] Cc(){
    scope auto value = new AString();
    nsresult __result = inner.GetCc(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Cc(wchar[] aCc){
    scope auto value = new AString(aCc);
    nsresult __result = inner.SetCc(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute AString bcc; */
  wchar[] Bcc(){
    scope auto value = new AString();
    nsresult __result = inner.GetBcc(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Bcc(wchar[] aBcc){
    scope auto value = new AString(aBcc);
    nsresult __result = inner.SetBcc(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute AString fcc; */
  wchar[] Fcc(){
    scope auto value = new AString();
    nsresult __result = inner.GetFcc(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Fcc(wchar[] aFcc){
    scope auto value = new AString(aFcc);
    nsresult __result = inner.SetFcc(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute AString fcc2; */
  wchar[] Fcc2(){
    scope auto value = new AString();
    nsresult __result = inner.GetFcc2(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Fcc2(wchar[] aFcc2){
    scope auto value = new AString(aFcc2);
    nsresult __result = inner.SetFcc2(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute AString newsgroups; */
  wchar[] Newsgroups(){
    scope auto value = new AString();
    nsresult __result = inner.GetNewsgroups(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Newsgroups(wchar[] aNewsgroups){
    scope auto value = new AString(aNewsgroups);
    nsresult __result = inner.SetNewsgroups(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute string newshost; */
  char* Newshost(){
    char* value;
    nsresult __result = inner.GetNewshost(&value);
    CheckException(__result);
    return value;
  }
  void Newshost(char* aNewshost){
    nsresult __result = inner.SetNewshost(aNewshost);
    CheckException(__result);
  }

  /* attribute string newspostUrl; */
  char* NewspostUrl(){
    char* value;
    nsresult __result = inner.GetNewspostUrl(&value);
    CheckException(__result);
    return value;
  }
  void NewspostUrl(char* aNewspostUrl){
    nsresult __result = inner.SetNewspostUrl(aNewspostUrl);
    CheckException(__result);
  }

  /* attribute string followupTo; */
  char* FollowupTo(){
    char* value;
    nsresult __result = inner.GetFollowupTo(&value);
    CheckException(__result);
    return value;
  }
  void FollowupTo(char* aFollowupTo){
    nsresult __result = inner.SetFollowupTo(aFollowupTo);
    CheckException(__result);
  }

  /* attribute AString subject; */
  wchar[] Subject(){
    scope auto value = new AString();
    nsresult __result = inner.GetSubject(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Subject(wchar[] aSubject){
    scope auto value = new AString(aSubject);
    nsresult __result = inner.SetSubject(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   * attachments
   *
   * @OBSOLETE, DO NOT USE ANYMORE
   */
  /* attribute string attachments; */
  char* Attachments(){
    char* value;
    nsresult __result = inner.GetAttachments(&value);
    CheckException(__result);
    return value;
  }
  void Attachments(char* aAttachments){
    nsresult __result = inner.SetAttachments(aAttachments);
    CheckException(__result);
  }

  /* attribute AString organization; */
  wchar[] Organization(){
    scope auto value = new AString();
    nsresult __result = inner.GetOrganization(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Organization(wchar[] aOrganization){
    scope auto value = new AString(aOrganization);
    nsresult __result = inner.SetOrganization(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute string references; */
  char* References(){
    char* value;
    nsresult __result = inner.GetReferences(&value);
    CheckException(__result);
    return value;
  }
  void References(char* aReferences){
    nsresult __result = inner.SetReferences(aReferences);
    CheckException(__result);
  }

  /* attribute string priority; */
  char* Priority(){
    char* value;
    nsresult __result = inner.GetPriority(&value);
    CheckException(__result);
    return value;
  }
  void Priority(char* aPriority){
    nsresult __result = inner.SetPriority(aPriority);
    CheckException(__result);
  }

  /* attribute string messageId; */
  char* MessageId(){
    char* value;
    nsresult __result = inner.GetMessageId(&value);
    CheckException(__result);
    return value;
  }
  void MessageId(char* aMessageId){
    nsresult __result = inner.SetMessageId(aMessageId);
    CheckException(__result);
  }

  /* attribute string characterSet; */
  char* CharacterSet(){
    char* value;
    nsresult __result = inner.GetCharacterSet(&value);
    CheckException(__result);
    return value;
  }
  void CharacterSet(char* aCharacterSet){
    nsresult __result = inner.SetCharacterSet(aCharacterSet);
    CheckException(__result);
  }

  /* readonly attribute string defaultCharacterSet; */
  char* DefaultCharacterSet(){
    char* value;
    nsresult __result = inner.GetDefaultCharacterSet(&value);
    CheckException(__result);
    return value;
  }

  /* attribute AString templateName; */
  wchar[] TemplateName(){
    scope auto value = new AString();
    nsresult __result = inner.GetTemplateName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void TemplateName(wchar[] aTemplateName){
    scope auto value = new AString(aTemplateName);
    nsresult __result = inner.SetTemplateName(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute string draftId; */
  char* DraftId(){
    char* value;
    nsresult __result = inner.GetDraftId(&value);
    CheckException(__result);
    return value;
  }
  void DraftId(char* aDraftId){
    nsresult __result = inner.SetDraftId(aDraftId);
    CheckException(__result);
  }

  /* attribute boolean returnReceipt; */
  PRBool ReturnReceipt(){
    PRBool value;
    nsresult __result = inner.GetReturnReceipt(&value);
    CheckException(__result);
    return value;
  }
  void ReturnReceipt(PRBool aReturnReceipt){
    nsresult __result = inner.SetReturnReceipt(aReturnReceipt);
    CheckException(__result);
  }

  /* attribute long receiptHeaderType; */
  PRInt32 ReceiptHeaderType(){
    PRInt32 value;
    nsresult __result = inner.GetReceiptHeaderType(&value);
    CheckException(__result);
    return value;
  }
  void ReceiptHeaderType(PRInt32 aReceiptHeaderType){
    nsresult __result = inner.SetReceiptHeaderType(aReceiptHeaderType);
    CheckException(__result);
  }

  /* attribute boolean attachVCard; */
  PRBool AttachVCard(){
    PRBool value;
    nsresult __result = inner.GetAttachVCard(&value);
    CheckException(__result);
    return value;
  }
  void AttachVCard(PRBool aAttachVCard){
    nsresult __result = inner.SetAttachVCard(aAttachVCard);
    CheckException(__result);
  }

  /* attribute boolean forcePlainText; */
  PRBool ForcePlainText(){
    PRBool value;
    nsresult __result = inner.GetForcePlainText(&value);
    CheckException(__result);
    return value;
  }
  void ForcePlainText(PRBool aForcePlainText){
    nsresult __result = inner.SetForcePlainText(aForcePlainText);
    CheckException(__result);
  }

  /* attribute boolean useMultipartAlternative; */
  PRBool UseMultipartAlternative(){
    PRBool value;
    nsresult __result = inner.GetUseMultipartAlternative(&value);
    CheckException(__result);
    return value;
  }
  void UseMultipartAlternative(PRBool aUseMultipartAlternative){
    nsresult __result = inner.SetUseMultipartAlternative(aUseMultipartAlternative);
    CheckException(__result);
  }

  /* attribute boolean uuEncodeAttachments; */
  PRBool UuEncodeAttachments(){
    PRBool value;
    nsresult __result = inner.GetUuEncodeAttachments(&value);
    CheckException(__result);
    return value;
  }
  void UuEncodeAttachments(PRBool aUuEncodeAttachments){
    nsresult __result = inner.SetUuEncodeAttachments(aUuEncodeAttachments);
    CheckException(__result);
  }

  /* attribute boolean bodyIsAsciiOnly; */
  PRBool BodyIsAsciiOnly(){
    PRBool value;
    nsresult __result = inner.GetBodyIsAsciiOnly(&value);
    CheckException(__result);
    return value;
  }
  void BodyIsAsciiOnly(PRBool aBodyIsAsciiOnly){
    nsresult __result = inner.SetBodyIsAsciiOnly(aBodyIsAsciiOnly);
    CheckException(__result);
  }

  /* attribute boolean forceMsgEncoding; */
  PRBool ForceMsgEncoding(){
    PRBool value;
    nsresult __result = inner.GetForceMsgEncoding(&value);
    CheckException(__result);
    return value;
  }
  void ForceMsgEncoding(PRBool aForceMsgEncoding){
    nsresult __result = inner.SetForceMsgEncoding(aForceMsgEncoding);
    CheckException(__result);
  }

  /* attribute AString otherRandomHeaders; */
  wchar[] OtherRandomHeaders(){
    scope auto value = new AString();
    nsresult __result = inner.GetOtherRandomHeaders(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void OtherRandomHeaders(wchar[] aOtherRandomHeaders){
    scope auto value = new AString(aOtherRandomHeaders);
    nsresult __result = inner.SetOtherRandomHeaders(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute AString body; */
  wchar[] Body(){
    scope auto value = new AString();
    nsresult __result = inner.GetBody(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Body(wchar[] aBody){
    scope auto value = new AString(aBody);
    nsresult __result = inner.SetBody(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   * temporaryFiles
   *
   * @OBSOLETE, DO NOT USE ANYMORE
   */
  /* attribute string temporaryFiles; */
  char* TemporaryFiles(){
    char* value;
    nsresult __result = inner.GetTemporaryFiles(&value);
    CheckException(__result);
    return value;
  }
  void TemporaryFiles(char* aTemporaryFiles){
    nsresult __result = inner.SetTemporaryFiles(aTemporaryFiles);
    CheckException(__result);
  }

  /* readonly attribute nsISupportsArray attachmentsArray; */
  nsISupportsArrayD  AttachmentsArray(){
    nsISupportsArray value;
    nsresult __result = inner.GetAttachmentsArray(&value);
    CheckException(__result);
    return new nsISupportsArrayD(value);
  }

  /* void addAttachment (in nsIMsgAttachment attachment); */
  void AddAttachment(nsIMsgAttachmentD attachment){
    nsresult __result = inner.AddAttachment(attachment ? cast(nsIMsgAttachment)attachment : null);
    CheckException(__result);
  }

  /* void removeAttachment (in nsIMsgAttachment attachment); */
  void RemoveAttachment(nsIMsgAttachmentD attachment){
    nsresult __result = inner.RemoveAttachment(attachment ? cast(nsIMsgAttachment)attachment : null);
    CheckException(__result);
  }

  /* void removeAttachments (); */
  void RemoveAttachments(){
    nsresult __result = inner.RemoveAttachments();
    CheckException(__result);
  }

  /* nsIMsgRecipientArray SplitRecipients (in wstring recipients, in boolean emailAddressOnly); */
  nsIMsgRecipientArrayD  SplitRecipients(PRUnichar*recipients, PRBool emailAddressOnly){
    nsIMsgRecipientArray _retval;
    nsresult __result = inner.SplitRecipients(recipients, emailAddressOnly, &_retval);
    CheckException(__result);
    return new nsIMsgRecipientArrayD(_retval);
  }

  /* void ConvertBodyToPlainText (); */
  void ConvertBodyToPlainText(){
    nsresult __result = inner.ConvertBodyToPlainText();
    CheckException(__result);
  }

  /* boolean checkCharsetConversion (out string fallbackCharset); */
  PRBool CheckCharsetConversion(out char*fallbackCharset){
    PRBool _retval;
    nsresult __result = inner.CheckCharsetConversion(&fallbackCharset, &_retval);
    CheckException(__result);
    return _retval;
  }

  /** 
   * Indicates whether we need to check if the current |DocumentCharset|
   * can represent all the characters in the message body. It should be
   * initialized to true and set to false when 'Send Anyway' is selected
   * by a user. (bug 249530)
   */
  /* attribute boolean needToCheckCharset; */
  PRBool NeedToCheckCharset(){
    PRBool value;
    nsresult __result = inner.GetNeedToCheckCharset(&value);
    CheckException(__result);
    return value;
  }
  void NeedToCheckCharset(PRBool aNeedToCheckCharset){
    nsresult __result = inner.SetNeedToCheckCharset(aNeedToCheckCharset);
    CheckException(__result);
  }

  /* attribute nsISupports securityInfo; */
  nsISupportsD  SecurityInfo(){
    nsISupports value;
    nsresult __result = inner.GetSecurityInfo(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }
  void SecurityInfo(nsISupportsD  aSecurityInfo){
    nsISupports value;
    nsresult __result = inner.SetSecurityInfo(value);
    CheckException(__result);
  }

private:
  nsIMsgCompFields inner;

}

