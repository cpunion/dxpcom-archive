/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgCompose.idl
 */

module mozilla.dxpcom.nsIMsgComposeD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgCompose;


public import mozilla.dxpcom.nsIMsgComposeD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIMsgCompFields;
public import mozilla.dxpcom.nsIMsgCompFieldsD;
public import mozilla.xpcom.nsIMsgComposeParams;
public import mozilla.dxpcom.nsIMsgComposeParamsD;

public import mozilla.xpcom.nsIMsgSend;

public import mozilla.dxpcom.nsIMsgSendD;

public import mozilla.xpcom.nsIMsgIdentity;

public import mozilla.dxpcom.nsIMsgIdentityD;

public import mozilla.xpcom.nsIMsgProgress;

public import mozilla.dxpcom.nsIMsgProgressD;

public import mozilla.xpcom.nsIDOMWindowInternal;

public import mozilla.dxpcom.nsIDOMWindowInternalD;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.dxpcom.nsIDOMWindowD;

public import mozilla.xpcom.nsIDOMNode;

public import mozilla.dxpcom.nsIDOMNodeD;

public import mozilla.xpcom.nsIEditor;

public import mozilla.dxpcom.nsIEditorD;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;


/* starting wrapper class:    nsIMsgCompSaveType */
class nsIMsgCompSaveTypeD {

  static const nsIID IID = NS_IMSGCOMPSAVETYPE_IID;


  alias nsIMsgCompSaveType InnerType;

  this(nsIMsgCompSaveType intr){
    this.inner = intr;
  }

  nsIMsgCompSaveType opCast() {
    return inner;
  }

  void opAssign(nsIMsgCompSaveType value) {
    inner = value;
  }

  enum { File = 0 }

  enum { Template = 1 }

  enum { Draft = 2 }

private:
  nsIMsgCompSaveType inner;

}


/* starting wrapper class:    nsIMsgCompDeliverMode */
class nsIMsgCompDeliverModeD {

  static const nsIID IID = NS_IMSGCOMPDELIVERMODE_IID;


  alias nsIMsgCompDeliverMode InnerType;

  this(nsIMsgCompDeliverMode intr){
    this.inner = intr;
  }

  nsIMsgCompDeliverMode opCast() {
    return inner;
  }

  void opAssign(nsIMsgCompDeliverMode value) {
    inner = value;
  }

  enum { Now = 0 }

  enum { Later = 1 }

  enum { Save = 2 }

  enum { SaveAs = 3 }

  enum { SaveAsDraft = 4 }

  enum { SaveAsTemplate = 5 }

  enum { SendUnsent = 6 }

  enum { AutoSaveAsDraft = 7 }

private:
  nsIMsgCompDeliverMode inner;

}


/* starting wrapper class:    nsIMsgCompSendFormat */
class nsIMsgCompSendFormatD {

  static const nsIID IID = NS_IMSGCOMPSENDFORMAT_IID;


  alias nsIMsgCompSendFormat InnerType;

  this(nsIMsgCompSendFormat intr){
    this.inner = intr;
  }

  nsIMsgCompSendFormat opCast() {
    return inner;
  }

  void opAssign(nsIMsgCompSendFormat value) {
    inner = value;
  }

  enum { AskUser = 4 }

  enum { PlainText = 1 }

  enum { HTML = 2 }

  enum { Both = 3 }

private:
  nsIMsgCompSendFormat inner;

}


/* starting wrapper class:    nsIMsgCompConvertible */
class nsIMsgCompConvertibleD {

  static const nsIID IID = NS_IMSGCOMPCONVERTIBLE_IID;


  alias nsIMsgCompConvertible InnerType;

  this(nsIMsgCompConvertible intr){
    this.inner = intr;
  }

  nsIMsgCompConvertible opCast() {
    return inner;
  }

  void opAssign(nsIMsgCompConvertible value) {
    inner = value;
  }

  enum { Plain = 1 }

  enum { Yes = 2 }

  enum { Altering = 3 }

  enum { No = 4 }

private:
  nsIMsgCompConvertible inner;

}


/* starting wrapper class:    nsIMsgComposeStateListener */
class nsIMsgComposeStateListenerD : public nsISupportsD {

  static const nsIID IID = NS_IMSGCOMPOSESTATELISTENER_IID;


  alias nsIMsgComposeStateListener InnerType;

  this(nsIMsgComposeStateListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgComposeStateListener opCast() {
    return inner;
  }

  void opAssign(nsIMsgComposeStateListener value) {
    inner = value;
  }

  /* void NotifyComposeFieldsReady (); */
  void NotifyComposeFieldsReady(){
    nsresult __result = inner.NotifyComposeFieldsReady();
    CheckException(__result);
  }

  /* void ComposeProcessDone (in nsresult aResult); */
  void ComposeProcessDone(nsresult aResult){
    nsresult __result = inner.ComposeProcessDone(aResult);
    CheckException(__result);
  }

  /* void SaveInFolderDone (in string folderName); */
  void SaveInFolderDone(char*folderName){
    nsresult __result = inner.SaveInFolderDone(folderName);
    CheckException(__result);
  }

  /* void NotifyComposeBodyReady (); */
  void NotifyComposeBodyReady(){
    nsresult __result = inner.NotifyComposeBodyReady();
    CheckException(__result);
  }

private:
  nsIMsgComposeStateListener inner;

}


/* starting wrapper class:    nsIMsgComposeRecyclingListener */
class nsIMsgComposeRecyclingListenerD : public nsISupportsD {

  static const nsIID IID = NS_IMSGCOMPOSERECYCLINGLISTENER_IID;


  alias nsIMsgComposeRecyclingListener InnerType;

  this(nsIMsgComposeRecyclingListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgComposeRecyclingListener opCast() {
    return inner;
  }

  void opAssign(nsIMsgComposeRecyclingListener value) {
    inner = value;
  }

  /* void onClose (); */
  void OnClose(){
    nsresult __result = inner.OnClose();
    CheckException(__result);
  }

  /* void onReopen (in nsIMsgComposeParams params); */
  void OnReopen(nsIMsgComposeParamsD params){
    nsresult __result = inner.OnReopen(params ? cast(nsIMsgComposeParams)params : null);
    CheckException(__result);
  }

private:
  nsIMsgComposeRecyclingListener inner;

}


/* starting wrapper class:    nsIMsgCompose */
class nsIMsgComposeD : public nsISupportsD {

  static const nsIID IID = NS_IMSGCOMPOSE_IID;


  alias nsIMsgCompose InnerType;

  this(nsIMsgCompose intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgCompose opCast() {
    return inner;
  }

  void opAssign(nsIMsgCompose value) {
    inner = value;
  }

  /* void Initialize (in nsIDOMWindowInternal aWindow, in nsIMsgComposeParams aParams); */
  void Initialize(nsIDOMWindowInternalD aWindow, nsIMsgComposeParamsD aParams){
    nsresult __result = inner.Initialize(aWindow ? cast(nsIDOMWindowInternal)aWindow : null, aParams ? cast(nsIMsgComposeParams)aParams : null);
    CheckException(__result);
  }

  /* void SetDocumentCharset (in string charset); */
  void SetDocumentCharset(char*charset){
    nsresult __result = inner.SetDocumentCharset(charset);
    CheckException(__result);
  }

  /* void RegisterStateListener (in nsIMsgComposeStateListener stateListener); */
  void RegisterStateListener(nsIMsgComposeStateListenerD stateListener){
    nsresult __result = inner.RegisterStateListener(stateListener ? cast(nsIMsgComposeStateListener)stateListener : null);
    CheckException(__result);
  }

  /* void UnregisterStateListener (in nsIMsgComposeStateListener stateListener); */
  void UnregisterStateListener(nsIMsgComposeStateListenerD stateListener){
    nsresult __result = inner.UnregisterStateListener(stateListener ? cast(nsIMsgComposeStateListener)stateListener : null);
    CheckException(__result);
  }

  /* void SendMsg (in MSG_DeliverMode deliverMode, in nsIMsgIdentity identity, in string accountKey, in nsIMsgWindow aMsgWindow, in nsIMsgProgress progress); */
  void SendMsg(MSG_DeliverMode deliverMode, nsIMsgIdentityD identity, char*accountKey, nsIMsgWindowD aMsgWindow, nsIMsgProgressD progress){
    nsresult __result = inner.SendMsg(deliverMode, identity ? cast(nsIMsgIdentity)identity : null, accountKey, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, progress ? cast(nsIMsgProgress)progress : null);
    CheckException(__result);
  }

  /* void CloseWindow (in boolean reclycleIt); */
  void CloseWindow(PRBool reclycleIt){
    nsresult __result = inner.CloseWindow(reclycleIt);
    CheckException(__result);
  }

  /* void abort (); */
  void Abort(){
    nsresult __result = inner.Abort();
    CheckException(__result);
  }

  /* void quoteMessage (in string msgURI); */
  void QuoteMessage(char*msgURI){
    nsresult __result = inner.QuoteMessage(msgURI);
    CheckException(__result);
  }

  /* AUTF8String AttachmentPrettyName (in string url, in string charset); */
  char[] AttachmentPrettyName(char*url, char*charset){
    scope auto _retval = new ACString;
    nsresult __result = inner.AttachmentPrettyName(url, charset, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* unsigned long CheckAndPopulateRecipients (in boolean populateMailList, in boolean returnNonHTMLRecipients, out wstring nonHTMLRecipients); */
  PRUint32 CheckAndPopulateRecipients(PRBool populateMailList, PRBool returnNonHTMLRecipients, out PRUnichar*nonHTMLRecipients){
    PRUint32 _retval;
    nsresult __result = inner.CheckAndPopulateRecipients(populateMailList, returnNonHTMLRecipients, &nonHTMLRecipients, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* long bodyConvertible (); */
  PRInt32 BodyConvertible(){
    PRInt32 _retval;
    nsresult __result = inner.BodyConvertible(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void SetSignature (in nsIMsgIdentity identity); */
  void SetSignature(nsIMsgIdentityD identity){
    nsresult __result = inner.SetSignature(identity ? cast(nsIMsgIdentity)identity : null);
    CheckException(__result);
  }

  /* boolean checkCharsetConversion (in nsIMsgIdentity identity, out string fallbackCharset); */
  PRBool CheckCharsetConversion(nsIMsgIdentityD identity, out char*fallbackCharset){
    PRBool _retval;
    nsresult __result = inner.CheckCharsetConversion(identity ? cast(nsIMsgIdentity)identity : null, &fallbackCharset, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* readonly attribute nsIMsgSend messageSend; */
  nsIMsgSendD  MessageSend(){
    nsIMsgSend value;
    nsresult __result = inner.GetMessageSend(&value);
    CheckException(__result);
    return new nsIMsgSendD(value);
  }

  /* readonly attribute nsIEditor editor; */
  nsIEditorD  Editor(){
    nsIEditor value;
    nsresult __result = inner.GetEditor(&value);
    CheckException(__result);
    return new nsIEditorD(value);
  }

  /* readonly attribute nsIDOMWindowInternal domWindow; */
  nsIDOMWindowInternalD  DomWindow(){
    nsIDOMWindowInternal value;
    nsresult __result = inner.GetDomWindow(&value);
    CheckException(__result);
    return new nsIDOMWindowInternalD(value);
  }

  /* readonly attribute nsIMsgCompFields compFields; */
  nsIMsgCompFieldsD  CompFields(){
    nsIMsgCompFields value;
    nsresult __result = inner.GetCompFields(&value);
    CheckException(__result);
    return new nsIMsgCompFieldsD(value);
  }

  /* readonly attribute boolean composeHTML; */
  PRBool ComposeHTML(){
    PRBool value;
    nsresult __result = inner.GetComposeHTML(&value);
    CheckException(__result);
    return value;
  }

  /* attribute MSG_ComposeType type; */
  MSG_ComposeType Type(){
    MSG_ComposeType value;
    nsresult __result = inner.GetType(&value);
    CheckException(__result);
    return value;
  }
  void Type(MSG_ComposeType aType){
    MSG_ComposeType value;
    nsresult __result = inner.SetType(value);
    CheckException(__result);
  }

  /* readonly attribute long wrapLength; */
  PRInt32 WrapLength(){
    PRInt32 value;
    nsresult __result = inner.GetWrapLength(&value);
    CheckException(__result);
    return value;
  }

  /* attribute boolean bodyModified; */
  PRBool BodyModified(){
    PRBool value;
    nsresult __result = inner.GetBodyModified(&value);
    CheckException(__result);
    return value;
  }
  void BodyModified(PRBool aBodyModified){
    nsresult __result = inner.SetBodyModified(aBodyModified);
    CheckException(__result);
  }

  /**
   *  Init the editor THIS USED TO BE [noscript]
   *  Now, this is called after editor is created,
   *  which is triggered by loading startup url from JS.
   *  The completion of document loading is detected by observing 
   *  the "obs_documentCreated" command
   */
  /* void initEditor (in nsIEditor editor, in nsIDOMWindow contentWindow); */
  void InitEditor(nsIEditorD editor, nsIDOMWindowD contentWindow){
    nsresult __result = inner.InitEditor(editor ? cast(nsIEditor)editor : null, contentWindow ? cast(nsIDOMWindow)contentWindow : null);
    CheckException(__result);
  }

  /* [noscript] void clearEditor (); */
  void ClearEditor(){
    nsresult __result = inner.ClearEditor();
    CheckException(__result);
  }

  /* [noscript] void setCiteReference (in nsString citeReference); */
  void SetCiteReference(nsString citeReference){
    nsresult __result = inner.SetCiteReference(citeReference);
    CheckException(__result);
  }

  /* [noscript] attribute string savedFolderURI; */
  char* SavedFolderURI(){
    char* value;
    nsresult __result = inner.GetSavedFolderURI(&value);
    CheckException(__result);
    return value;
  }
  void SavedFolderURI(char* aSavedFolderURI){
    nsresult __result = inner.SetSavedFolderURI(aSavedFolderURI);
    CheckException(__result);
  }

  /* [noscript] void processSignature (in nsIMsgIdentity identity, in boolean aQuoted, inout nsString aMsgBody); */
  void ProcessSignature(nsIMsgIdentityD identity, PRBool aQuoted, out nsString aMsgBody){
    nsresult __result = inner.ProcessSignature(identity ? cast(nsIMsgIdentity)identity : null, aQuoted, &aMsgBody);
    CheckException(__result);
  }

  /* [noscript] void processReplyFlags (); */
  void ProcessReplyFlags(){
    nsresult __result = inner.ProcessReplyFlags();
    CheckException(__result);
  }

  /* [noscript] void rememberQueuedDisposition (); */
  void RememberQueuedDisposition(){
    nsresult __result = inner.RememberQueuedDisposition();
    CheckException(__result);
  }

  /* [noscript] void convertAndLoadComposeWindow (in nsStringRef aPrefix, in nsStringRef aBuf, in nsStringRef aSignature, in boolean aQuoted, in boolean aHTMLEditor); */
  void ConvertAndLoadComposeWindow(nsString * aPrefix, nsString * aBuf, nsString * aSignature, PRBool aQuoted, PRBool aHTMLEditor){
    nsresult __result = inner.ConvertAndLoadComposeWindow(aPrefix, aBuf, aSignature, aQuoted, aHTMLEditor);
    CheckException(__result);
  }

  /* [noscript] void notifyStateListeners (in TStateListenerNotification aNotificationType, in nsresult aResult); */
  void NotifyStateListeners(TStateListenerNotification aNotificationType, nsresult aResult){
    nsresult __result = inner.NotifyStateListeners(aNotificationType, aResult);
    CheckException(__result);
  }

  /* readonly attribute nsIMsgProgress progress; */
  nsIMsgProgressD  Progress(){
    nsIMsgProgress value;
    nsresult __result = inner.GetProgress(&value);
    CheckException(__result);
    return new nsIMsgProgressD(value);
  }

  /* nsIMsgSendListener getExternalSendListener (); */
  nsIMsgSendListenerD  GetExternalSendListener(){
    nsIMsgSendListener _retval;
    nsresult __result = inner.GetExternalSendListener(&_retval);
    CheckException(__result);
    return new nsIMsgSendListenerD(_retval);
  }

  /* [noscript] void buildBodyMessageAndSignature (); */
  void BuildBodyMessageAndSignature(){
    nsresult __result = inner.BuildBodyMessageAndSignature();
    CheckException(__result);
  }

  /* [noscript] void buildQuotedMessageAndSignature (); */
  void BuildQuotedMessageAndSignature(){
    nsresult __result = inner.BuildQuotedMessageAndSignature();
    CheckException(__result);
  }

  /* [noscript] void getQuotingToFollow (out boolean quotingToFollow); */
  void GetQuotingToFollow(out PRBool quotingToFollow){
    nsresult __result = inner.GetQuotingToFollow(&quotingToFollow);
    CheckException(__result);
  }

  /* attribute nsIMsgComposeRecyclingListener recyclingListener; */
  nsIMsgComposeRecyclingListenerD  RecyclingListener(){
    nsIMsgComposeRecyclingListener value;
    nsresult __result = inner.GetRecyclingListener(&value);
    CheckException(__result);
    return new nsIMsgComposeRecyclingListenerD(value);
  }
  void RecyclingListener(nsIMsgComposeRecyclingListenerD  aRecyclingListener){
    nsIMsgComposeRecyclingListener value;
    nsresult __result = inner.SetRecyclingListener(value);
    CheckException(__result);
  }

  /* attribute boolean recycledWindow; */
  PRBool RecycledWindow(){
    PRBool value;
    nsresult __result = inner.GetRecycledWindow(&value);
    CheckException(__result);
    return value;
  }
  void RecycledWindow(PRBool aRecycledWindow){
    nsresult __result = inner.SetRecycledWindow(aRecycledWindow);
    CheckException(__result);
  }

  /* readonly attribute string originalMsgURI; */
  char* OriginalMsgURI(){
    char* value;
    nsresult __result = inner.GetOriginalMsgURI(&value);
    CheckException(__result);
    return value;
  }

  /* attribute boolean deleteDraft; */
  PRBool DeleteDraft(){
    PRBool value;
    nsresult __result = inner.GetDeleteDraft(&value);
    CheckException(__result);
    return value;
  }
  void DeleteDraft(PRBool aDeleteDraft){
    nsresult __result = inner.SetDeleteDraft(aDeleteDraft);
    CheckException(__result);
  }

private:
  nsIMsgCompose inner;

}


/* starting wrapper class:    nsIMsgComposeSendListener */
class nsIMsgComposeSendListenerD : public nsISupportsD {

  static const nsIID IID = NS_IMSGCOMPOSESENDLISTENER_IID;


  alias nsIMsgComposeSendListener InnerType;

  this(nsIMsgComposeSendListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgComposeSendListener opCast() {
    return inner;
  }

  void opAssign(nsIMsgComposeSendListener value) {
    inner = value;
  }

  /* void setMsgCompose (in nsIMsgCompose msgCompose); */
  void SetMsgCompose(nsIMsgComposeD msgCompose){
    nsresult __result = inner.SetMsgCompose(msgCompose ? cast(nsIMsgCompose)msgCompose : null);
    CheckException(__result);
  }

  /* void setDeliverMode (in MSG_DeliverMode deliverMode); */
  void SetDeliverMode(MSG_DeliverMode deliverMode){
    nsresult __result = inner.SetDeliverMode(deliverMode);
    CheckException(__result);
  }

private:
  nsIMsgComposeSendListener inner;

}

