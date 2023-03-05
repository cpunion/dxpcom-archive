/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgWindow.idl
 */

module mozilla.dxpcom.nsIMsgWindowD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgWindow;


public import mozilla.dxpcom.nsIMsgWindowD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIMsgStatusFeedback;
public import mozilla.dxpcom.nsIMsgStatusFeedbackD;
public import mozilla.xpcom.nsIMsgFolder;
public import mozilla.dxpcom.nsIMsgFolderD;
public import mozilla.xpcom.nsIMimeMiscStatus;
public import mozilla.dxpcom.nsIMimeMiscStatusD;

public import mozilla.xpcom.nsITransactionManager;

public import mozilla.dxpcom.nsITransactionManagerD;

public import mozilla.xpcom.nsIDocShell;

public import mozilla.dxpcom.nsIDocShellD;

public import mozilla.xpcom.nsIDOMWindowInternal;

public import mozilla.dxpcom.nsIDOMWindowInternalD;

public import mozilla.xpcom.nsIPrompt;

public import mozilla.dxpcom.nsIPromptD;

public import mozilla.xpcom.nsIAuthPrompt;

public import mozilla.dxpcom.nsIAuthPromptD;


/* starting wrapper class:    nsIMsgMessagePaneController */
class nsIMsgMessagePaneControllerD : public nsISupportsD {

  static const nsIID IID = NS_IMSGMESSAGEPANECONTROLLER_IID;


  alias nsIMsgMessagePaneController InnerType;

  this(nsIMsgMessagePaneController intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgMessagePaneController opCast() {
    return inner;
  }

  void opAssign(nsIMsgMessagePaneController value) {
    inner = value;
  }

  /* void clearMsgPane (); */
  void ClearMsgPane(){
    nsresult __result = inner.ClearMsgPane();
    CheckException(__result);
  }

private:
  nsIMsgMessagePaneController inner;

}


/* starting wrapper class:    nsIMsgWindow */
class nsIMsgWindowD : public nsISupportsD {

  static const nsIID IID = NS_IMSGWINDOW_IID;


  alias nsIMsgWindow InnerType;

  this(nsIMsgWindow intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgWindow opCast() {
    return inner;
  }

  void opAssign(nsIMsgWindow value) {
    inner = value;
  }

  /* attribute nsIMsgMessagePaneController messagePaneController; */
  nsIMsgMessagePaneControllerD  MessagePaneController(){
    nsIMsgMessagePaneController value;
    nsresult __result = inner.GetMessagePaneController(&value);
    CheckException(__result);
    return new nsIMsgMessagePaneControllerD(value);
  }
  void MessagePaneController(nsIMsgMessagePaneControllerD  aMessagePaneController){
    nsIMsgMessagePaneController value;
    nsresult __result = inner.SetMessagePaneController(value);
    CheckException(__result);
  }

  /* attribute nsIMsgStatusFeedback statusFeedback; */
  nsIMsgStatusFeedbackD  StatusFeedback(){
    nsIMsgStatusFeedback value;
    nsresult __result = inner.GetStatusFeedback(&value);
    CheckException(__result);
    return new nsIMsgStatusFeedbackD(value);
  }
  void StatusFeedback(nsIMsgStatusFeedbackD  aStatusFeedback){
    nsIMsgStatusFeedback value;
    nsresult __result = inner.SetStatusFeedback(value);
    CheckException(__result);
  }

  /* attribute nsIMsgHeaderSink msgHeaderSink; */
  nsIMsgHeaderSinkD  MsgHeaderSink(){
    nsIMsgHeaderSink value;
    nsresult __result = inner.GetMsgHeaderSink(&value);
    CheckException(__result);
    return new nsIMsgHeaderSinkD(value);
  }
  void MsgHeaderSink(nsIMsgHeaderSinkD  aMsgHeaderSink){
    nsIMsgHeaderSink value;
    nsresult __result = inner.SetMsgHeaderSink(value);
    CheckException(__result);
  }

  /* attribute nsITransactionManager transactionManager; */
  nsITransactionManagerD  TransactionManager(){
    nsITransactionManager value;
    nsresult __result = inner.GetTransactionManager(&value);
    CheckException(__result);
    return new nsITransactionManagerD(value);
  }
  void TransactionManager(nsITransactionManagerD  aTransactionManager){
    nsITransactionManager value;
    nsresult __result = inner.SetTransactionManager(value);
    CheckException(__result);
  }

  /* attribute nsIMsgFolder openFolder; */
  nsIMsgFolderD  OpenFolder(){
    nsIMsgFolder value;
    nsresult __result = inner.GetOpenFolder(&value);
    CheckException(__result);
    return new nsIMsgFolderD(value);
  }
  void OpenFolder(nsIMsgFolderD  aOpenFolder){
    nsIMsgFolder value;
    nsresult __result = inner.SetOpenFolder(value);
    CheckException(__result);
  }

  /* attribute nsIDocShell rootDocShell; */
  nsIDocShellD  RootDocShell(){
    nsIDocShell value;
    nsresult __result = inner.GetRootDocShell(&value);
    CheckException(__result);
    return new nsIDocShellD(value);
  }
  void RootDocShell(nsIDocShellD  aRootDocShell){
    nsIDocShell value;
    nsresult __result = inner.SetRootDocShell(value);
    CheckException(__result);
  }

  /* void displayHTMLInMessagePane (in wstring title, in wstring body, in boolean clearMsgHdr); */
  void DisplayHTMLInMessagePane(PRUnichar*title, PRUnichar*body_, PRBool clearMsgHdr){
    nsresult __result = inner.DisplayHTMLInMessagePane(title, body_, clearMsgHdr);
    CheckException(__result);
  }

  /* readonly attribute nsIPrompt promptDialog; */
  nsIPromptD  PromptDialog(){
    nsIPrompt value;
    nsresult __result = inner.GetPromptDialog(&value);
    CheckException(__result);
    return new nsIPromptD(value);
  }

  /* attribute string mailCharacterSet; */
  char* MailCharacterSet(){
    char* value;
    nsresult __result = inner.GetMailCharacterSet(&value);
    CheckException(__result);
    return value;
  }
  void MailCharacterSet(char* aMailCharacterSet){
    nsresult __result = inner.SetMailCharacterSet(aMailCharacterSet);
    CheckException(__result);
  }

  /* attribute boolean charsetOverride; */
  PRBool CharsetOverride(){
    PRBool value;
    nsresult __result = inner.GetCharsetOverride(&value);
    CheckException(__result);
    return value;
  }
  void CharsetOverride(PRBool aCharsetOverride){
    nsresult __result = inner.SetCharsetOverride(aCharsetOverride);
    CheckException(__result);
  }

  /* attribute boolean stopped; */
  PRBool Stopped(){
    PRBool value;
    nsresult __result = inner.GetStopped(&value);
    CheckException(__result);
    return value;
  }
  void Stopped(PRBool aStopped){
    nsresult __result = inner.SetStopped(aStopped);
    CheckException(__result);
  }

  /* void SetDOMWindow (in nsIDOMWindowInternal window); */
  void SetDOMWindow(nsIDOMWindowInternalD window){
    nsresult __result = inner.SetDOMWindow(window ? cast(nsIDOMWindowInternal)window : null);
    CheckException(__result);
  }

  /* void StopUrls (); */
  void StopUrls(){
    nsresult __result = inner.StopUrls();
    CheckException(__result);
  }

  /* void SelectFolder (in string folderUri); */
  void SelectFolder(char*folderUri){
    nsresult __result = inner.SelectFolder(folderUri);
    CheckException(__result);
  }

  /* void SelectMessage (in string messageUri); */
  void SelectMessage(char*messageUri){
    nsresult __result = inner.SelectMessage(messageUri);
    CheckException(__result);
  }

  /* void closeWindow (); */
  void CloseWindow(){
    nsresult __result = inner.CloseWindow();
    CheckException(__result);
  }

private:
  nsIMsgWindow inner;

}


/* starting wrapper class:    nsIMsgWindowCommands */
class nsIMsgWindowCommandsD : public nsISupportsD {

  static const nsIID IID = NS_IMSGWINDOWCOMMANDS_IID;


  alias nsIMsgWindowCommands InnerType;

  this(nsIMsgWindowCommands intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgWindowCommands opCast() {
    return inner;
  }

  void opAssign(nsIMsgWindowCommands value) {
    inner = value;
  }

  /* void SelectFolder (in string folderUri); */
  void SelectFolder(char*folderUri){
    nsresult __result = inner.SelectFolder(folderUri);
    CheckException(__result);
  }

  /* void SelectMessage (in string messageUri); */
  void SelectMessage(char*messageUri){
    nsresult __result = inner.SelectMessage(messageUri);
    CheckException(__result);
  }

private:
  nsIMsgWindowCommands inner;

}

