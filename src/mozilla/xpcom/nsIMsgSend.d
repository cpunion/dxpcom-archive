/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSend.idl
 */

module mozilla.xpcom.nsIMsgSend;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.xpcom.nsrootidl;
public import mozilla.xpcom.nsIMsgIdentity;
public import mozilla.xpcom.nsIMsgCompFields;
public import mozilla.xpcom.nsIMsgSendListener;
public import mozilla.xpcom.nsIMsgSendReport;
public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

alias PRUint64 DOMTimeStamp;

public import mozilla.xpcom.nsIDOMAttr; /* forward declaration */

public import mozilla.xpcom.nsIDOMCDATASection; /* forward declaration */

public import mozilla.xpcom.nsIDOMCharacterData; /* forward declaration */

public import mozilla.xpcom.nsIDOMComment; /* forward declaration */

public import mozilla.xpcom.nsIDOMDOMImplementation; /* forward declaration */
    
public import mozilla.xpcom.nsIDOMDocument; /* forward declaration */
    
public import mozilla.xpcom.nsIDOMDocumentFragment; /* forward declaration */

public import mozilla.xpcom.nsIDOMDocumentType; /* forward declaration */

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */

public import mozilla.xpcom.nsIDOMEntity; /* forward declaration */
    
public import mozilla.xpcom.nsIDOMEntityReference; /* forward declaration */

public import mozilla.xpcom.nsIDOMNSDocument; /* forward declaration */

public import mozilla.xpcom.nsIDOMNamedNodeMap; /* forward declaration */

public import mozilla.xpcom.nsIDOMNode; /* forward declaration */

public import mozilla.xpcom.nsIDOMNodeList; /* forward declaration */

public import mozilla.xpcom.nsIDOMNotation; /* forward declaration */

public import mozilla.xpcom.nsIDOMProcessingInstruction; /* forward declaration */

public import mozilla.xpcom.nsIDOMText; /* forward declaration */

public import mozilla.xpcom.nsIDOMDOMStringList; /* forward declaration */

public import mozilla.xpcom.nsIDOMNameList; /* forward declaration */

//public import mozilla.xpcom.DOMException; /* forward declaration */

//public import mozilla.xpcom.RangeException; /* forward declaration */

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

public import mozilla.xpcom.nsIPrompt;
public import mozilla.xpcom.MailNewsTypes2;
public import mozilla.xpcom.nsIMsgComposeParams;

public import mozilla.xpcom.nsIMsgProgress; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIRequest; /* forward declaration */

public import mozilla.xpcom.nsIMsgHdr;

public import mozilla.xpcom.nsIMsgHdr; /* forward declaration */

public import mozilla.xpcom.nsIDocShell; /* forward declaration */

public import mozilla.xpcom.nsIFileSpec; /* forward declaration */

public import mozilla.xpcom.nsIMsgComposeSecure; /* forward declaration */

public import mozilla.xpcom.nsIMsgStatusFeedback; /* forward declaration */

public import mozilla.xpcom.nsIEditor; /* forward declaration */

alias PRInt32 nsMsgDeliverMode;


/* starting interface:    nsIMsgSend */
const char[] NS_IMSGSEND_IID_STR = "39876de6-207f-43f4-99a7-d60f1c49ea48";

const nsIID NS_IMSGSEND_IID= 
  {0x39876de6, 0x207f, 0x43f4, 
    [ 0x99, 0xa7, 0xd6, 0x0f, 0x1c, 0x49, 0xea, 0x48 ]};

extern(Windows)
interface nsIMsgSend : nsISupports {
  static const char[] IID_STR = NS_IMSGSEND_IID_STR;
  static const nsIID IID = NS_IMSGSEND_IID;

  enum { nsMsgDeliverNow = 0 };

  enum { nsMsgQueueForLater = 1 };

  enum { nsMsgSave = 2 };

  enum { nsMsgSaveAs = 3 };

  enum { nsMsgSaveAsDraft = 4 };

  enum { nsMsgSaveAsTemplate = 5 };

  enum { nsMsgSendUnsent = 6 };

  /* [noscript] void createAndSendMessage (in nsIEditor aEditor, in nsIMsgIdentity aUserIdentity, in string aAccountKey, in nsIMsgCompFields fields, in PRBool digest_p, in PRBool dont_deliver_p, in nsMsgDeliverMode mode, in nsIMsgDBHdr msgToReplace, in string attachment1_type, in string attachment1_body, in PRUint32 attachment1_body_length, [const] in nsMsgAttachmentData attachments, [const] in nsMsgAttachedFile preloaded_attachments, in voidPtr relatedPart, in nsIDOMWindowInternal parentWindow, in nsIMsgProgress progress, in nsIMsgSendListener aListener, in string password, in AUTF8String aOriginalMsgURI, in MSG_ComposeType aType); */
  nsresult CreateAndSendMessage(nsIEditor aEditor, nsIMsgIdentity aUserIdentity, char *aAccountKey, nsIMsgCompFields fields, PRBool digest_p, PRBool dont_deliver_p, nsMsgDeliverMode mode, nsIMsgDBHdr msgToReplace, char *attachment1_type, char *attachment1_body, PRUint32 attachment1_body_length, nsMsgAttachmentData * attachments, nsMsgAttachedFile * preloaded_attachments, void * relatedPart, nsIDOMWindowInternal parentWindow, nsIMsgProgress progress, nsIMsgSendListener aListener, char *password, nsACString * aOriginalMsgURI, MSG_ComposeType aType);

  /* void sendMessageFile (in nsIMsgIdentity aUserIdentity, in string aAccountKey, in nsIMsgCompFields fields, in nsIFileSpec sendIFileSpec, in PRBool deleteSendFileOnCompletion, in PRBool digest_p, in nsMsgDeliverMode mode, in nsIMsgDBHdr msgToReplace, in nsIMsgSendListener aListener, in nsIMsgStatusFeedback aStatusFeedback, in string password); */
  nsresult SendMessageFile(nsIMsgIdentity aUserIdentity, char *aAccountKey, nsIMsgCompFields fields, nsIFileSpec sendIFileSpec, PRBool deleteSendFileOnCompletion, PRBool digest_p, nsMsgDeliverMode mode, nsIMsgDBHdr msgToReplace, nsIMsgSendListener aListener, nsIMsgStatusFeedback aStatusFeedback, char *password);

  /* void abort (); */
  nsresult Abort();

  /* nsresult fail (in nsresult failure_code, in wstring error_msg); */
  nsresult Fail(nsresult failure_code, PRUnichar *error_msg, nsresult *_retval);

  /* void setGUINotificationState (in PRBool aEnableFlag); */
  nsresult SetGUINotificationState(PRBool aEnableFlag);

  /* void BeginCryptoEncapsulation (); */
  nsresult BeginCryptoEncapsulation();

  /* readonly attribute nsIMsgSendReport sendReport; */
  nsresult GetSendReport(nsIMsgSendReport  *aSendReport);

  /* [noscript] void notifyListenerOnStartSending (in string aMsgID, in unsigned long aMsgSize); */
  nsresult NotifyListenerOnStartSending(char *aMsgID, PRUint32 aMsgSize);

  /* [noscript] void notifyListenerOnProgress (in string aMsgID, in unsigned long aProgress, in unsigned long aProgressMax); */
  nsresult NotifyListenerOnProgress(char *aMsgID, PRUint32 aProgress, PRUint32 aProgressMax);

  /* [noscript] void notifyListenerOnStatus (in string aMsgID, in wstring aMsg); */
  nsresult NotifyListenerOnStatus(char *aMsgID, PRUnichar *aMsg);

  /* [noscript] void notifyListenerOnStopSending (in string aMsgID, in nsresult aStatus, in wstring aMsg, in nsIFileSpec returnFileSpec); */
  nsresult NotifyListenerOnStopSending(char *aMsgID, nsresult aStatus, PRUnichar *aMsg, nsIFileSpec returnFileSpec);

  /* [noscript] void deliverAsMailExit (in nsIURI aUrl, in nsresult aExitCode); */
  nsresult DeliverAsMailExit(nsIURI aUrl, nsresult aExitCode);

  /* [noscript] void deliverAsNewsExit (in nsIURI aUrl, in nsresult aExitCode); */
  nsresult DeliverAsNewsExit(nsIURI aUrl, nsresult aExitCode);

  /* [noscript] void notifyListenerOnStartCopy (); */
  nsresult NotifyListenerOnStartCopy();

  /* [noscript] void notifyListenerOnProgressCopy (in unsigned long aProgress, in unsigned long aProgressMax); */
  nsresult NotifyListenerOnProgressCopy(PRUint32 aProgress, PRUint32 aProgressMax);

  /* [noscript] void notifyListenerOnStopCopy (in nsresult aStatus); */
  nsresult NotifyListenerOnStopCopy(nsresult aStatus);

  /* [noscript] void getMessageId (in nsCString messageID); */
  nsresult GetMessageId(nsCString * messageID);

  /* [noscript] attribute nsMsgKey messageKey; */
  nsresult GetMessageKey(nsMsgKey *aMessageKey);
  nsresult SetMessageKey(nsMsgKey aMessageKey);

  /* [noscript] nsIPrompt getDefaultPrompt (); */
  nsresult GetDefaultPrompt(nsIPrompt *_retval);

  /* [noscript] void gatherMimeAttachments (); */
  nsresult GatherMimeAttachments();

  /* [noscript] boolean getProcessAttachmentsSynchronously (); */
  nsresult GetProcessAttachmentsSynchronously(PRBool *_retval);

  /* [noscript] nsMsgAttachmentHandler getAttachmentHandlers (); */
  nsresult GetAttachmentHandlers(nsMsgAttachmentHandler * *_retval);

  /* [noscript] readonly attribute unsigned long attachmentCount; */
  nsresult GetAttachmentCount(PRUint32 *aAttachmentCount);

  /* [noscript] attribute unsigned long pendingAttachmentCount; */
  nsresult GetPendingAttachmentCount(PRUint32 *aPendingAttachmentCount);
  nsresult SetPendingAttachmentCount(PRUint32 aPendingAttachmentCount);

  /* [noscript] readonly attribute nsMsgDeliverMode deliveryMode; */
  nsresult GetDeliveryMode(nsMsgDeliverMode *aDeliveryMode);

  /* [noscript] nsIMsgProgress getProgress (); */
  nsresult GetProgress(nsIMsgProgress *_retval);

  /* [noscript] nsOutputFileStream getOutputStream (); */
  nsresult GetOutputStream(nsOutputFileStream * *_retval);

  /* [noscript] attribute nsIRequest runningRequest; */
  nsresult GetRunningRequest(nsIRequest  *aRunningRequest);
  nsresult SetRunningRequest(nsIRequest  aRunningRequest);

  /* [noscript] attribute nsresult status; */
  nsresult GetStatus(nsresult *aStatus);
  nsresult SetStatus(nsresult aStatus);

  /* [noscript] attribute nsIMsgComposeSecure cryptoclosure; */
  nsresult GetCryptoclosure(nsIMsgComposeSecure  *aCryptoclosure);
  nsresult SetCryptoclosure(nsIMsgComposeSecure  aCryptoclosure);

}

