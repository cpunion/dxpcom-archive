/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSend.idl
 */

module mozilla.dxpcom.nsIMsgSendD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgSend;


public import mozilla.dxpcom.nsIMsgSendD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.dxpcom.nsISupportsArrayD;
public import mozilla.xpcom.nsrootidl;
public import mozilla.dxpcom.nsrootidlD;
public import mozilla.xpcom.nsIMsgIdentity;
public import mozilla.dxpcom.nsIMsgIdentityD;
public import mozilla.xpcom.nsIMsgCompFields;
public import mozilla.dxpcom.nsIMsgCompFieldsD;
public import mozilla.xpcom.nsIMsgSendListener;
public import mozilla.dxpcom.nsIMsgSendListenerD;
public import mozilla.xpcom.nsIMsgSendReport;
public import mozilla.dxpcom.nsIMsgSendReportD;
public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

alias PRUint64 DOMTimeStamp;

public import mozilla.xpcom.nsIDOMAttr;

public import mozilla.xpcom.nsIDOMCDATASection;

public import mozilla.xpcom.nsIDOMCharacterData;

public import mozilla.xpcom.nsIDOMComment;

public import mozilla.xpcom.nsIDOMDOMImplementation;
    
public import mozilla.xpcom.nsIDOMDocument;

public import mozilla.xpcom.nsIDOMDocumentFragment;

public import mozilla.xpcom.nsIDOMDocumentType;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.xpcom.nsIDOMEntity;

public import mozilla.xpcom.nsIDOMEntityReference;

public import mozilla.xpcom.nsIDOMNSDocument;

public import mozilla.xpcom.nsIDOMNamedNodeMap;

public import mozilla.xpcom.nsIDOMNode;

public import mozilla.xpcom.nsIDOMNodeList;

public import mozilla.xpcom.nsIDOMNotation;

public import mozilla.xpcom.nsIDOMProcessingInstruction;

public import mozilla.xpcom.nsIDOMText;

public import mozilla.xpcom.nsIDOMDOMStringList;

public import mozilla.xpcom.nsIDOMNameList;

//public import mozilla.xpcom.DOMException;

//public import mozilla.xpcom.RangeException;

public import mozilla.xpcom.nsIDOMEvent;

public import mozilla.xpcom.nsIDOMEventListener;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.xpcom.nsIDOMHTMLFormElement;

public import mozilla.xpcom.nsIDOMBarProp;

public import mozilla.xpcom.nsIDOMWindowCollection;

public import mozilla.xpcom.nsIDOMHTMLCollection;

public import mozilla.xpcom.nsIDOMNavigator;

public import mozilla.xpcom.nsIDOMScreen;

public import mozilla.xpcom.nsIDOMHistory;

public import mozilla.xpcom.nsIDOMPkcs11;

public import mozilla.xpcom.nsIDOMMimeTypeArray;

public import mozilla.xpcom.nsIDOMPluginArray;

public import mozilla.xpcom.nsIDOMCrypto;

public import mozilla.xpcom.nsIDOMCRMFObject;

public import mozilla.xpcom.nsIDOMPlugin;

public import mozilla.xpcom.nsIDOMMimeType;

public import mozilla.xpcom.nsIDOMCSSRule;

public import mozilla.xpcom.nsIDOMCSSRuleList;

public import mozilla.xpcom.nsIDOMStyleSheet;

public import mozilla.xpcom.nsIDOMCSSValue;

public import mozilla.xpcom.nsIDOMMediaList;

public import mozilla.xpcom.nsIDOMCSSStyleSheet;

public import mozilla.xpcom.nsIDOMCSSStyleDeclaration;

public import mozilla.xpcom.nsIDOMAbstractView;

public import mozilla.xpcom.nsIDOMDocumentView;

public import mozilla.xpcom.nsIDOMXULSelectCntrlItemEl;

public import mozilla.xpcom.nsIDOMHTMLTableCaptionElem;

public import mozilla.xpcom.nsIDOMHTMLTableSectionElem;

public import mozilla.xpcom.nsIDOMStyleSheetList;

public import mozilla.xpcom.nsIDOMKeyEvent;

public import mozilla.xpcom.nsIDOMCounter;

public import mozilla.xpcom.nsIDOMRect;

public import mozilla.xpcom.nsIDOMRGBColor;

public import mozilla.xpcom.nsIDOMCounter;

public import mozilla.xpcom.nsIDOMCSSPrimitiveValue;

public import mozilla.xpcom.nsIDOMEventGroup;

public import mozilla.dxpcom.nsrootidlD;

public import mozilla.dxpcom.nsISupportsD;

alias PRUint64 DOMTimeStampD;

public import mozilla.dxpcom.nsIDOMAttrD;

public import mozilla.dxpcom.nsIDOMCDATASectionD;

public import mozilla.dxpcom.nsIDOMCharacterDataD;

public import mozilla.dxpcom.nsIDOMCommentD;

public import mozilla.dxpcom.nsIDOMDOMImplementationD;
    
public import mozilla.dxpcom.nsIDOMDocumentD;

public import mozilla.dxpcom.nsIDOMDocumentFragmentD;

public import mozilla.dxpcom.nsIDOMDocumentTypeD;

public import mozilla.dxpcom.nsIDOMElementD;

public import mozilla.dxpcom.nsIDOMEntityD;

public import mozilla.dxpcom.nsIDOMEntityReferenceD;

public import mozilla.dxpcom.nsIDOMNSDocumentD;

public import mozilla.dxpcom.nsIDOMNamedNodeMapD;

public import mozilla.dxpcom.nsIDOMNodeD;

public import mozilla.dxpcom.nsIDOMNodeListD;

public import mozilla.dxpcom.nsIDOMNotationD;

public import mozilla.dxpcom.nsIDOMProcessingInstructionD;

public import mozilla.dxpcom.nsIDOMTextD;

public import mozilla.dxpcom.nsIDOMDOMStringListD;

public import mozilla.dxpcom.nsIDOMNameListD;

//public import mozilla.dxpcom.DOMExceptionD;

//public import mozilla.dxpcom.RangeExceptionD;

public import mozilla.dxpcom.nsIDOMEventD;

public import mozilla.dxpcom.nsIDOMEventListenerD;

public import mozilla.dxpcom.nsIDOMWindowD;

public import mozilla.dxpcom.nsIDOMHTMLFormElementD;

public import mozilla.dxpcom.nsIDOMBarPropD;

public import mozilla.dxpcom.nsIDOMWindowCollectionD;

public import mozilla.dxpcom.nsIDOMHTMLCollectionD;

public import mozilla.dxpcom.nsIDOMNavigatorD;

public import mozilla.dxpcom.nsIDOMScreenD;

public import mozilla.dxpcom.nsIDOMHistoryD;

public import mozilla.dxpcom.nsIDOMPkcs11D;

public import mozilla.dxpcom.nsIDOMMimeTypeArrayD;

public import mozilla.dxpcom.nsIDOMPluginArrayD;

public import mozilla.dxpcom.nsIDOMCryptoD;

public import mozilla.dxpcom.nsIDOMCRMFObjectD;

public import mozilla.dxpcom.nsIDOMPluginD;

public import mozilla.dxpcom.nsIDOMMimeTypeD;

public import mozilla.dxpcom.nsIDOMCSSRuleD;

public import mozilla.dxpcom.nsIDOMCSSRuleListD;

public import mozilla.dxpcom.nsIDOMStyleSheetD;

public import mozilla.dxpcom.nsIDOMCSSValueD;

public import mozilla.dxpcom.nsIDOMMediaListD;

public import mozilla.dxpcom.nsIDOMCSSStyleSheetD;

public import mozilla.dxpcom.nsIDOMCSSStyleDeclarationD;

public import mozilla.dxpcom.nsIDOMAbstractViewD;

public import mozilla.dxpcom.nsIDOMDocumentViewD;

public import mozilla.dxpcom.nsIDOMXULSelectCntrlItemElD;

public import mozilla.dxpcom.nsIDOMHTMLTableCaptionElemD;

public import mozilla.dxpcom.nsIDOMHTMLTableSectionElemD;

public import mozilla.dxpcom.nsIDOMStyleSheetListD;

public import mozilla.dxpcom.nsIDOMKeyEventD;

public import mozilla.dxpcom.nsIDOMCounterD;

public import mozilla.dxpcom.nsIDOMRectD;

public import mozilla.dxpcom.nsIDOMRGBColorD;

public import mozilla.dxpcom.nsIDOMCounterD;

public import mozilla.dxpcom.nsIDOMCSSPrimitiveValueD;

public import mozilla.dxpcom.nsIDOMEventGroupD;

public import mozilla.xpcom.nsIPrompt;
public import mozilla.dxpcom.nsIPromptD;
public import mozilla.xpcom.MailNewsTypes2;
public import mozilla.dxpcom.MailNewsTypes2D;
public import mozilla.xpcom.nsIMsgComposeParams;
public import mozilla.dxpcom.nsIMsgComposeParamsD;

public import mozilla.xpcom.nsIMsgProgress;

public import mozilla.dxpcom.nsIMsgProgressD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIRequest;

public import mozilla.dxpcom.nsIRequestD;

public import mozilla.xpcom.nsIMsgHdr;

import mozilla.dxpcom.nsIMsgHdrD;

public import mozilla.xpcom.nsIMsgHdr;

public import mozilla.dxpcom.nsIMsgHdrD;

public import mozilla.xpcom.nsIDocShell;

public import mozilla.dxpcom.nsIDocShellD;

public import mozilla.xpcom.nsIFileSpec;

public import mozilla.dxpcom.nsIFileSpecD;

public import mozilla.xpcom.nsIMsgComposeSecure;

public import mozilla.dxpcom.nsIMsgComposeSecureD;

public import mozilla.xpcom.nsIMsgStatusFeedback;

public import mozilla.dxpcom.nsIMsgStatusFeedbackD;

public import mozilla.xpcom.nsIEditor;

public import mozilla.dxpcom.nsIEditorD;


/* starting wrapper class:    nsIMsgSend */
class nsIMsgSendD : public nsISupportsD {

  static const nsIID IID = NS_IMSGSEND_IID;


  alias nsIMsgSend InnerType;

  this(nsIMsgSend intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgSend opCast() {
    return inner;
  }

  void opAssign(nsIMsgSend value) {
    inner = value;
  }

  enum { nsMsgDeliverNow = 0 }

  enum { nsMsgQueueForLater = 1 }

  enum { nsMsgSave = 2 }

  enum { nsMsgSaveAs = 3 }

  enum { nsMsgSaveAsDraft = 4 }

  enum { nsMsgSaveAsTemplate = 5 }

  enum { nsMsgSendUnsent = 6 }

  /* [noscript] void createAndSendMessage (in nsIEditor aEditor, in nsIMsgIdentity aUserIdentity, in string aAccountKey, in nsIMsgCompFields fields, in PRBool digest_p, in PRBool dont_deliver_p, in nsMsgDeliverMode mode, in nsIMsgDBHdr msgToReplace, in string attachment1_type, in string attachment1_body, in PRUint32 attachment1_body_length, [const] in nsMsgAttachmentData attachments, [const] in nsMsgAttachedFile preloaded_attachments, in voidPtr relatedPart, in nsIDOMWindowInternal parentWindow, in nsIMsgProgress progress, in nsIMsgSendListener aListener, in string password, in AUTF8String aOriginalMsgURI, in MSG_ComposeType aType); */
  void CreateAndSendMessage(nsIEditorD aEditor, nsIMsgIdentityD aUserIdentity, char*aAccountKey, nsIMsgCompFieldsD fields, PRBool digest_p, PRBool dont_deliver_p, nsMsgDeliverMode mode, nsIMsgDBHdrD msgToReplace, char*attachment1_type, char*attachment1_body, PRUint32 attachment1_body_length, nsMsgAttachmentData * attachments, nsMsgAttachedFile * preloaded_attachments, void * relatedPart, nsIDOMWindowInternalD parentWindow, nsIMsgProgressD progress, nsIMsgSendListenerD aListener, char*password, char[] aOriginalMsgURI, MSG_ComposeType aType){
    scope auto _aOriginalMsgURI = new ACString(aOriginalMsgURI);
    nsresult __result = inner.CreateAndSendMessage(aEditor ? cast(nsIEditor)aEditor : null, aUserIdentity ? cast(nsIMsgIdentity)aUserIdentity : null, aAccountKey, fields ? cast(nsIMsgCompFields)fields : null, digest_p, dont_deliver_p, mode, msgToReplace ? cast(nsIMsgDBHdr)msgToReplace : null, attachment1_type, attachment1_body, attachment1_body_length, attachments, preloaded_attachments, relatedPart, parentWindow ? cast(nsIDOMWindowInternal)parentWindow : null, progress ? cast(nsIMsgProgress)progress : null, aListener ? cast(nsIMsgSendListener)aListener : null, password, cast(nsACString*)_aOriginalMsgURI, aType);
    CheckException(__result);
  }

  /* void sendMessageFile (in nsIMsgIdentity aUserIdentity, in string aAccountKey, in nsIMsgCompFields fields, in nsIFileSpec sendIFileSpec, in PRBool deleteSendFileOnCompletion, in PRBool digest_p, in nsMsgDeliverMode mode, in nsIMsgDBHdr msgToReplace, in nsIMsgSendListener aListener, in nsIMsgStatusFeedback aStatusFeedback, in string password); */
  void SendMessageFile(nsIMsgIdentityD aUserIdentity, char*aAccountKey, nsIMsgCompFieldsD fields, nsIFileSpecD sendIFileSpec, PRBool deleteSendFileOnCompletion, PRBool digest_p, nsMsgDeliverMode mode, nsIMsgDBHdrD msgToReplace, nsIMsgSendListenerD aListener, nsIMsgStatusFeedbackD aStatusFeedback, char*password){
    nsresult __result = inner.SendMessageFile(aUserIdentity ? cast(nsIMsgIdentity)aUserIdentity : null, aAccountKey, fields ? cast(nsIMsgCompFields)fields : null, sendIFileSpec ? cast(nsIFileSpec)sendIFileSpec : null, deleteSendFileOnCompletion, digest_p, mode, msgToReplace ? cast(nsIMsgDBHdr)msgToReplace : null, aListener ? cast(nsIMsgSendListener)aListener : null, aStatusFeedback ? cast(nsIMsgStatusFeedback)aStatusFeedback : null, password);
    CheckException(__result);
  }

  /* void abort (); */
  void Abort(){
    nsresult __result = inner.Abort();
    CheckException(__result);
  }

  /* nsresult fail (in nsresult failure_code, in wstring error_msg); */
  nsresult Fail(nsresult failure_code, PRUnichar*error_msg){
    nsresult _retval;
    nsresult __result = inner.Fail(failure_code, error_msg, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setGUINotificationState (in PRBool aEnableFlag); */
  void SetGUINotificationState(PRBool aEnableFlag){
    nsresult __result = inner.SetGUINotificationState(aEnableFlag);
    CheckException(__result);
  }

  /* void BeginCryptoEncapsulation (); */
  void BeginCryptoEncapsulation(){
    nsresult __result = inner.BeginCryptoEncapsulation();
    CheckException(__result);
  }

  /* readonly attribute nsIMsgSendReport sendReport; */
  nsIMsgSendReportD  SendReport(){
    nsIMsgSendReport value;
    nsresult __result = inner.GetSendReport(&value);
    CheckException(__result);
    return new nsIMsgSendReportD(value);
  }

  /* [noscript] void notifyListenerOnStartSending (in string aMsgID, in unsigned long aMsgSize); */
  void NotifyListenerOnStartSending(char*aMsgID, PRUint32 aMsgSize){
    nsresult __result = inner.NotifyListenerOnStartSending(aMsgID, aMsgSize);
    CheckException(__result);
  }

  /* [noscript] void notifyListenerOnProgress (in string aMsgID, in unsigned long aProgress, in unsigned long aProgressMax); */
  void NotifyListenerOnProgress(char*aMsgID, PRUint32 aProgress, PRUint32 aProgressMax){
    nsresult __result = inner.NotifyListenerOnProgress(aMsgID, aProgress, aProgressMax);
    CheckException(__result);
  }

  /* [noscript] void notifyListenerOnStatus (in string aMsgID, in wstring aMsg); */
  void NotifyListenerOnStatus(char*aMsgID, PRUnichar*aMsg){
    nsresult __result = inner.NotifyListenerOnStatus(aMsgID, aMsg);
    CheckException(__result);
  }

  /* [noscript] void notifyListenerOnStopSending (in string aMsgID, in nsresult aStatus, in wstring aMsg, in nsIFileSpec returnFileSpec); */
  void NotifyListenerOnStopSending(char*aMsgID, nsresult aStatus, PRUnichar*aMsg, nsIFileSpecD returnFileSpec){
    nsresult __result = inner.NotifyListenerOnStopSending(aMsgID, aStatus, aMsg, returnFileSpec ? cast(nsIFileSpec)returnFileSpec : null);
    CheckException(__result);
  }

  /* [noscript] void deliverAsMailExit (in nsIURI aUrl, in nsresult aExitCode); */
  void DeliverAsMailExit(nsIURID aUrl, nsresult aExitCode){
    nsresult __result = inner.DeliverAsMailExit(aUrl ? cast(nsIURI)aUrl : null, aExitCode);
    CheckException(__result);
  }

  /* [noscript] void deliverAsNewsExit (in nsIURI aUrl, in nsresult aExitCode); */
  void DeliverAsNewsExit(nsIURID aUrl, nsresult aExitCode){
    nsresult __result = inner.DeliverAsNewsExit(aUrl ? cast(nsIURI)aUrl : null, aExitCode);
    CheckException(__result);
  }

  /* [noscript] void notifyListenerOnStartCopy (); */
  void NotifyListenerOnStartCopy(){
    nsresult __result = inner.NotifyListenerOnStartCopy();
    CheckException(__result);
  }

  /* [noscript] void notifyListenerOnProgressCopy (in unsigned long aProgress, in unsigned long aProgressMax); */
  void NotifyListenerOnProgressCopy(PRUint32 aProgress, PRUint32 aProgressMax){
    nsresult __result = inner.NotifyListenerOnProgressCopy(aProgress, aProgressMax);
    CheckException(__result);
  }

  /* [noscript] void notifyListenerOnStopCopy (in nsresult aStatus); */
  void NotifyListenerOnStopCopy(nsresult aStatus){
    nsresult __result = inner.NotifyListenerOnStopCopy(aStatus);
    CheckException(__result);
  }

  /* [noscript] void getMessageId (in nsCString messageID); */
  void GetMessageId(nsCString * messageID){
    nsresult __result = inner.GetMessageId(messageID);
    CheckException(__result);
  }

  /* [noscript] attribute nsMsgKey messageKey; */
  nsMsgKey MessageKey(){
    nsMsgKey value;
    nsresult __result = inner.GetMessageKey(&value);
    CheckException(__result);
    return value;
  }
  void MessageKey(nsMsgKey aMessageKey){
    nsMsgKey value;
    nsresult __result = inner.SetMessageKey(value);
    CheckException(__result);
  }

  /* [noscript] nsIPrompt getDefaultPrompt (); */
  nsIPromptD  GetDefaultPrompt(){
    nsIPrompt _retval;
    nsresult __result = inner.GetDefaultPrompt(&_retval);
    CheckException(__result);
    return new nsIPromptD(_retval);
  }

  /* [noscript] void gatherMimeAttachments (); */
  void GatherMimeAttachments(){
    nsresult __result = inner.GatherMimeAttachments();
    CheckException(__result);
  }

  /* [noscript] boolean getProcessAttachmentsSynchronously (); */
  PRBool GetProcessAttachmentsSynchronously(){
    PRBool _retval;
    nsresult __result = inner.GetProcessAttachmentsSynchronously(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] nsMsgAttachmentHandler getAttachmentHandlers (); */
  nsMsgAttachmentHandler * GetAttachmentHandlers(){
nsMsgAttachmentHandler * _retval;
    nsresult __result = inner.GetAttachmentHandlers(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] readonly attribute unsigned long attachmentCount; */
  PRUint32 AttachmentCount(){
    PRUint32 value;
    nsresult __result = inner.GetAttachmentCount(&value);
    CheckException(__result);
    return value;
  }

  /* [noscript] attribute unsigned long pendingAttachmentCount; */
  PRUint32 PendingAttachmentCount(){
    PRUint32 value;
    nsresult __result = inner.GetPendingAttachmentCount(&value);
    CheckException(__result);
    return value;
  }
  void PendingAttachmentCount(PRUint32 aPendingAttachmentCount){
    nsresult __result = inner.SetPendingAttachmentCount(aPendingAttachmentCount);
    CheckException(__result);
  }

  /* [noscript] readonly attribute nsMsgDeliverMode deliveryMode; */
  nsMsgDeliverMode DeliveryMode(){
    nsMsgDeliverMode value;
    nsresult __result = inner.GetDeliveryMode(&value);
    CheckException(__result);
    return value;
  }

  /* [noscript] nsIMsgProgress getProgress (); */
  nsIMsgProgressD  GetProgress(){
    nsIMsgProgress _retval;
    nsresult __result = inner.GetProgress(&_retval);
    CheckException(__result);
    return new nsIMsgProgressD(_retval);
  }

  /* [noscript] nsOutputFileStream getOutputStream (); */
  nsOutputFileStream * GetOutputStream(){
nsOutputFileStream * _retval;
    nsresult __result = inner.GetOutputStream(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] attribute nsIRequest runningRequest; */
  nsIRequestD  RunningRequest(){
    nsIRequest value;
    nsresult __result = inner.GetRunningRequest(&value);
    CheckException(__result);
    return new nsIRequestD(value);
  }
  void RunningRequest(nsIRequestD  aRunningRequest){
    nsIRequest value;
    nsresult __result = inner.SetRunningRequest(value);
    CheckException(__result);
  }

  /* [noscript] attribute nsresult status; */
  nsresult Status(){
    nsresult value;
    nsresult __result = inner.GetStatus(&value);
    CheckException(__result);
    return value;
  }
  void Status(nsresult aStatus){
    nsresult value;
    nsresult __result = inner.SetStatus(value);
    CheckException(__result);
  }

  /* [noscript] attribute nsIMsgComposeSecure cryptoclosure; */
  nsIMsgComposeSecureD  Cryptoclosure(){
    nsIMsgComposeSecure value;
    nsresult __result = inner.GetCryptoclosure(&value);
    CheckException(__result);
    return new nsIMsgComposeSecureD(value);
  }
  void Cryptoclosure(nsIMsgComposeSecureD  aCryptoclosure){
    nsIMsgComposeSecure value;
    nsresult __result = inner.SetCryptoclosure(value);
    CheckException(__result);
  }

private:
  nsIMsgSend inner;

}

