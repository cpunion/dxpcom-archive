/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgCompose.idl
 */

module mozilla.xpcom.nsIMsgCompose;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIMsgCompFields;
public import mozilla.xpcom.nsIMsgComposeParams;

public import mozilla.xpcom.nsIMsgSend; /* forward declaration */

public import mozilla.xpcom.nsIMsgIdentity; /* forward declaration */

public import mozilla.xpcom.nsIMsgProgress; /* forward declaration */

public import mozilla.xpcom.nsIDOMWindowInternal; /* forward declaration */

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */

public import mozilla.xpcom.nsIDOMNode; /* forward declaration */

public import mozilla.xpcom.nsIEditor; /* forward declaration */

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */

alias PRInt32 MSG_ComposeSaveType;


/* starting interface:    nsIMsgCompSaveType */
const char[] NS_IMSGCOMPSAVETYPE_IID_STR = "6953e50a-7531-11d3-85fe-006008948010";

const nsIID NS_IMSGCOMPSAVETYPE_IID= 
  {0x6953e50a, 0x7531, 0x11d3, 
    [ 0x85, 0xfe, 0x00, 0x60, 0x08, 0x94, 0x80, 0x10 ]};

extern(Windows)
interface nsIMsgCompSaveType {
  static const char[] IID_STR = NS_IMSGCOMPSAVETYPE_IID_STR;
  static const nsIID IID = NS_IMSGCOMPSAVETYPE_IID;

  enum { File = 0 };

  enum { Template = 1 };

  enum { Draft = 2 };

}

alias PRInt32 MSG_DeliverMode;


/* starting interface:    nsIMsgCompDeliverMode */
const char[] NS_IMSGCOMPDELIVERMODE_IID_STR = "a9f27dd7-8f89-4de3-8fbf-41b789c16ee5";

const nsIID NS_IMSGCOMPDELIVERMODE_IID= 
  {0xa9f27dd7, 0x8f89, 0x4de3, 
    [ 0x8f, 0xbf, 0x41, 0xb7, 0x89, 0xc1, 0x6e, 0xe5 ]};

extern(Windows)
interface nsIMsgCompDeliverMode {
  static const char[] IID_STR = NS_IMSGCOMPDELIVERMODE_IID_STR;
  static const nsIID IID = NS_IMSGCOMPDELIVERMODE_IID;

  enum { Now = 0 };

  enum { Later = 1 };

  enum { Save = 2 };

  enum { SaveAs = 3 };

  enum { SaveAsDraft = 4 };

  enum { SaveAsTemplate = 5 };

  enum { SendUnsent = 6 };

  enum { AutoSaveAsDraft = 7 };

}


/* starting interface:    nsIMsgCompSendFormat */
const char[] NS_IMSGCOMPSENDFORMAT_IID_STR = "f38ea280-e090-11d3-a449-e3153319347c";

const nsIID NS_IMSGCOMPSENDFORMAT_IID= 
  {0xf38ea280, 0xe090, 0x11d3, 
    [ 0xa4, 0x49, 0xe3, 0x15, 0x33, 0x19, 0x34, 0x7c ]};

extern(Windows)
interface nsIMsgCompSendFormat {
  static const char[] IID_STR = NS_IMSGCOMPSENDFORMAT_IID_STR;
  static const nsIID IID = NS_IMSGCOMPSENDFORMAT_IID;

  enum { AskUser = 4 };

  enum { PlainText = 1 };

  enum { HTML = 2 };

  enum { Both = 3 };

}


/* starting interface:    nsIMsgCompConvertible */
const char[] NS_IMSGCOMPCONVERTIBLE_IID_STR = "9638af92-1dd1-11b2-bef1-ca5fee0abc62";

const nsIID NS_IMSGCOMPCONVERTIBLE_IID= 
  {0x9638af92, 0x1dd1, 0x11b2, 
    [ 0xbe, 0xf1, 0xca, 0x5f, 0xee, 0x0a, 0xbc, 0x62 ]};

extern(Windows)
interface nsIMsgCompConvertible {
  static const char[] IID_STR = NS_IMSGCOMPCONVERTIBLE_IID_STR;
  static const nsIID IID = NS_IMSGCOMPCONVERTIBLE_IID;

  enum { Plain = 1 };

  enum { Yes = 2 };

  enum { Altering = 3 };

  enum { No = 4 };

}


/* starting interface:    nsIMsgComposeStateListener */
const char[] NS_IMSGCOMPOSESTATELISTENER_IID_STR = "6ce49b2a-07dc-4783-b307-9a355423163f";

const nsIID NS_IMSGCOMPOSESTATELISTENER_IID= 
  {0x6ce49b2a, 0x07dc, 0x4783, 
    [ 0xb3, 0x07, 0x9a, 0x35, 0x54, 0x23, 0x16, 0x3f ]};

extern(Windows)
interface nsIMsgComposeStateListener : nsISupports {
  static const char[] IID_STR = NS_IMSGCOMPOSESTATELISTENER_IID_STR;
  static const nsIID IID = NS_IMSGCOMPOSESTATELISTENER_IID;

  /* void NotifyComposeFieldsReady (); */
  nsresult NotifyComposeFieldsReady();

  /* void ComposeProcessDone (in nsresult aResult); */
  nsresult ComposeProcessDone(nsresult aResult);

  /* void SaveInFolderDone (in string folderName); */
  nsresult SaveInFolderDone(char *folderName);

  /* void NotifyComposeBodyReady (); */
  nsresult NotifyComposeBodyReady();

}


/* starting interface:    nsIMsgComposeRecyclingListener */
const char[] NS_IMSGCOMPOSERECYCLINGLISTENER_IID_STR = "0b28cc56-1dd2-11b2-bbe4-99e6a314f8ba";

const nsIID NS_IMSGCOMPOSERECYCLINGLISTENER_IID= 
  {0x0b28cc56, 0x1dd2, 0x11b2, 
    [ 0xbb, 0xe4, 0x99, 0xe6, 0xa3, 0x14, 0xf8, 0xba ]};

extern(Windows)
interface nsIMsgComposeRecyclingListener : nsISupports {
  static const char[] IID_STR = NS_IMSGCOMPOSERECYCLINGLISTENER_IID_STR;
  static const nsIID IID = NS_IMSGCOMPOSERECYCLINGLISTENER_IID;

  /* void onClose (); */
  nsresult OnClose();

  /* void onReopen (in nsIMsgComposeParams params); */
  nsresult OnReopen(nsIMsgComposeParams params);

}


/* starting interface:    nsIMsgCompose */
const char[] NS_IMSGCOMPOSE_IID_STR = "a56e2be5-76c2-4647-857d-ca71b129b4d6";

const nsIID NS_IMSGCOMPOSE_IID= 
  {0xa56e2be5, 0x76c2, 0x4647, 
    [ 0x85, 0x7d, 0xca, 0x71, 0xb1, 0x29, 0xb4, 0xd6 ]};

extern(Windows)
interface nsIMsgCompose : nsISupports {
  static const char[] IID_STR = NS_IMSGCOMPOSE_IID_STR;
  static const nsIID IID = NS_IMSGCOMPOSE_IID;

  /* void Initialize (in nsIDOMWindowInternal aWindow, in nsIMsgComposeParams aParams); */
  nsresult Initialize(nsIDOMWindowInternal aWindow, nsIMsgComposeParams aParams);

  /* void SetDocumentCharset (in string charset); */
  nsresult SetDocumentCharset(char *charset);

  /* void RegisterStateListener (in nsIMsgComposeStateListener stateListener); */
  nsresult RegisterStateListener(nsIMsgComposeStateListener stateListener);

  /* void UnregisterStateListener (in nsIMsgComposeStateListener stateListener); */
  nsresult UnregisterStateListener(nsIMsgComposeStateListener stateListener);

  /* void SendMsg (in MSG_DeliverMode deliverMode, in nsIMsgIdentity identity, in string accountKey, in nsIMsgWindow aMsgWindow, in nsIMsgProgress progress); */
  nsresult SendMsg(MSG_DeliverMode deliverMode, nsIMsgIdentity identity, char *accountKey, nsIMsgWindow aMsgWindow, nsIMsgProgress progress);

  /* void CloseWindow (in boolean reclycleIt); */
  nsresult CloseWindow(PRBool reclycleIt);

  /* void abort (); */
  nsresult Abort();

  /* void quoteMessage (in string msgURI); */
  nsresult QuoteMessage(char *msgURI);

  /* AUTF8String AttachmentPrettyName (in string url, in string charset); */
  nsresult AttachmentPrettyName(char *url, char *charset, nsACString * _retval);

  /* unsigned long CheckAndPopulateRecipients (in boolean populateMailList, in boolean returnNonHTMLRecipients, out wstring nonHTMLRecipients); */
  nsresult CheckAndPopulateRecipients(PRBool populateMailList, PRBool returnNonHTMLRecipients, PRUnichar **nonHTMLRecipients, PRUint32 *_retval);

  /* long bodyConvertible (); */
  nsresult BodyConvertible(PRInt32 *_retval);

  /* void SetSignature (in nsIMsgIdentity identity); */
  nsresult SetSignature(nsIMsgIdentity identity);

  /* boolean checkCharsetConversion (in nsIMsgIdentity identity, out string fallbackCharset); */
  nsresult CheckCharsetConversion(nsIMsgIdentity identity, char **fallbackCharset, PRBool *_retval);

  /* readonly attribute nsIMsgSend messageSend; */
  nsresult GetMessageSend(nsIMsgSend  *aMessageSend);

  /* readonly attribute nsIEditor editor; */
  nsresult GetEditor(nsIEditor  *aEditor);

  /* readonly attribute nsIDOMWindowInternal domWindow; */
  nsresult GetDomWindow(nsIDOMWindowInternal  *aDomWindow);

  /* readonly attribute nsIMsgCompFields compFields; */
  nsresult GetCompFields(nsIMsgCompFields  *aCompFields);

  /* readonly attribute boolean composeHTML; */
  nsresult GetComposeHTML(PRBool *aComposeHTML);

  /* attribute MSG_ComposeType type; */
  nsresult GetType(MSG_ComposeType *aType);
  nsresult SetType(MSG_ComposeType aType);

  /* readonly attribute long wrapLength; */
  nsresult GetWrapLength(PRInt32 *aWrapLength);

  /* attribute boolean bodyModified; */
  nsresult GetBodyModified(PRBool *aBodyModified);
  nsresult SetBodyModified(PRBool aBodyModified);

  /**
   *  Init the editor THIS USED TO BE [noscript]
   *  Now, this is called after editor is created,
   *  which is triggered by loading startup url from JS.
   *  The completion of document loading is detected by observing 
   *  the "obs_documentCreated" command
   */
  /* void initEditor (in nsIEditor editor, in nsIDOMWindow contentWindow); */
  nsresult InitEditor(nsIEditor editor, nsIDOMWindow contentWindow);

  /* [noscript] void clearEditor (); */
  nsresult ClearEditor();

  /* [noscript] void setCiteReference (in nsString citeReference); */
  nsresult SetCiteReference(nsString citeReference);

  /* [noscript] attribute string savedFolderURI; */
  nsresult GetSavedFolderURI(char * *aSavedFolderURI);
  nsresult SetSavedFolderURI(char * aSavedFolderURI);

  /* [noscript] void processSignature (in nsIMsgIdentity identity, in boolean aQuoted, inout nsString aMsgBody); */
  nsresult ProcessSignature(nsIMsgIdentity identity, PRBool aQuoted, nsString *aMsgBody);

  /* [noscript] void processReplyFlags (); */
  nsresult ProcessReplyFlags();

  /* [noscript] void rememberQueuedDisposition (); */
  nsresult RememberQueuedDisposition();

  /* [noscript] void convertAndLoadComposeWindow (in nsStringRef aPrefix, in nsStringRef aBuf, in nsStringRef aSignature, in boolean aQuoted, in boolean aHTMLEditor); */
  nsresult ConvertAndLoadComposeWindow(nsString * aPrefix, nsString * aBuf, nsString * aSignature, PRBool aQuoted, PRBool aHTMLEditor);

  /* [noscript] void notifyStateListeners (in TStateListenerNotification aNotificationType, in nsresult aResult); */
  nsresult NotifyStateListeners(TStateListenerNotification aNotificationType, nsresult aResult);

  /* readonly attribute nsIMsgProgress progress; */
  nsresult GetProgress(nsIMsgProgress  *aProgress);

  /* nsIMsgSendListener getExternalSendListener (); */
  nsresult GetExternalSendListener(nsIMsgSendListener *_retval);

  /* [noscript] void buildBodyMessageAndSignature (); */
  nsresult BuildBodyMessageAndSignature();

  /* [noscript] void buildQuotedMessageAndSignature (); */
  nsresult BuildQuotedMessageAndSignature();

  /* [noscript] void getQuotingToFollow (out boolean quotingToFollow); */
  nsresult GetQuotingToFollow(PRBool *quotingToFollow);

  /* attribute nsIMsgComposeRecyclingListener recyclingListener; */
  nsresult GetRecyclingListener(nsIMsgComposeRecyclingListener  *aRecyclingListener);
  nsresult SetRecyclingListener(nsIMsgComposeRecyclingListener  aRecyclingListener);

  /* attribute boolean recycledWindow; */
  nsresult GetRecycledWindow(PRBool *aRecycledWindow);
  nsresult SetRecycledWindow(PRBool aRecycledWindow);

  /* readonly attribute string originalMsgURI; */
  nsresult GetOriginalMsgURI(char * *aOriginalMsgURI);

  /* attribute boolean deleteDraft; */
  nsresult GetDeleteDraft(PRBool *aDeleteDraft);
  nsresult SetDeleteDraft(PRBool aDeleteDraft);

}


/* starting interface:    nsIMsgComposeSendListener */
const char[] NS_IMSGCOMPOSESENDLISTENER_IID_STR = "acc72780-2cea-11d5-9daa-bacdeac1eefc";

const nsIID NS_IMSGCOMPOSESENDLISTENER_IID= 
  {0xacc72780, 0x2cea, 0x11d5, 
    [ 0x9d, 0xaa, 0xba, 0xcd, 0xea, 0xc1, 0xee, 0xfc ]};

extern(Windows)
interface nsIMsgComposeSendListener : nsISupports {
  static const char[] IID_STR = NS_IMSGCOMPOSESENDLISTENER_IID_STR;
  static const nsIID IID = NS_IMSGCOMPOSESENDLISTENER_IID;

  /* void setMsgCompose (in nsIMsgCompose msgCompose); */
  nsresult SetMsgCompose(nsIMsgCompose msgCompose);

  /* void setDeliverMode (in MSG_DeliverMode deliverMode); */
  nsresult SetDeliverMode(MSG_DeliverMode deliverMode);

}

