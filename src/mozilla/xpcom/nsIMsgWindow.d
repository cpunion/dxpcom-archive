/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgWindow.idl
 */

module mozilla.xpcom.nsIMsgWindow;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIMsgStatusFeedback;
public import mozilla.xpcom.nsIMsgFolder;
public import mozilla.xpcom.nsIMimeMiscStatus;

public import mozilla.xpcom.nsITransactionManager; /* forward declaration */

public import mozilla.xpcom.nsIDocShell; /* forward declaration */

public import mozilla.xpcom.nsIDOMWindowInternal; /* forward declaration */

public import mozilla.xpcom.nsIPrompt; /* forward declaration */

public import mozilla.xpcom.nsIAuthPrompt; /* forward declaration */


/* starting interface:    nsIMsgMessagePaneController */
const char[] NS_IMSGMESSAGEPANECONTROLLER_IID_STR = "923de63d-eeb9-4574-850b-322c1a4667ed";

const nsIID NS_IMSGMESSAGEPANECONTROLLER_IID= 
  {0x923de63d, 0xeeb9, 0x4574, 
    [ 0x85, 0x0b, 0x32, 0x2c, 0x1a, 0x46, 0x67, 0xed ]};

extern(Windows)
interface nsIMsgMessagePaneController : nsISupports {
  static const char[] IID_STR = NS_IMSGMESSAGEPANECONTROLLER_IID_STR;
  static const nsIID IID = NS_IMSGMESSAGEPANECONTROLLER_IID;

  /* void clearMsgPane (); */
  nsresult ClearMsgPane();

}


/* starting interface:    nsIMsgWindow */
const char[] NS_IMSGWINDOW_IID_STR = "bce0ab71-11ff-428e-9edc-69abad73b697";

const nsIID NS_IMSGWINDOW_IID= 
  {0xbce0ab71, 0x11ff, 0x428e, 
    [ 0x9e, 0xdc, 0x69, 0xab, 0xad, 0x73, 0xb6, 0x97 ]};

extern(Windows)
interface nsIMsgWindow : nsISupports {
  static const char[] IID_STR = NS_IMSGWINDOW_IID_STR;
  static const nsIID IID = NS_IMSGWINDOW_IID;

  /* attribute nsIMsgMessagePaneController messagePaneController; */
  nsresult GetMessagePaneController(nsIMsgMessagePaneController  *aMessagePaneController);
  nsresult SetMessagePaneController(nsIMsgMessagePaneController  aMessagePaneController);

  /* attribute nsIMsgStatusFeedback statusFeedback; */
  nsresult GetStatusFeedback(nsIMsgStatusFeedback  *aStatusFeedback);
  nsresult SetStatusFeedback(nsIMsgStatusFeedback  aStatusFeedback);

  /* attribute nsIMsgHeaderSink msgHeaderSink; */
  nsresult GetMsgHeaderSink(nsIMsgHeaderSink  *aMsgHeaderSink);
  nsresult SetMsgHeaderSink(nsIMsgHeaderSink  aMsgHeaderSink);

  /* attribute nsITransactionManager transactionManager; */
  nsresult GetTransactionManager(nsITransactionManager  *aTransactionManager);
  nsresult SetTransactionManager(nsITransactionManager  aTransactionManager);

  /* attribute nsIMsgFolder openFolder; */
  nsresult GetOpenFolder(nsIMsgFolder  *aOpenFolder);
  nsresult SetOpenFolder(nsIMsgFolder  aOpenFolder);

  /* attribute nsIDocShell rootDocShell; */
  nsresult GetRootDocShell(nsIDocShell  *aRootDocShell);
  nsresult SetRootDocShell(nsIDocShell  aRootDocShell);

  /* void displayHTMLInMessagePane (in wstring title, in wstring body, in boolean clearMsgHdr); */
  nsresult DisplayHTMLInMessagePane(PRUnichar *title, PRUnichar *body_, PRBool clearMsgHdr);

  /* readonly attribute nsIPrompt promptDialog; */
  nsresult GetPromptDialog(nsIPrompt  *aPromptDialog);

  /* attribute string mailCharacterSet; */
  nsresult GetMailCharacterSet(char * *aMailCharacterSet);
  nsresult SetMailCharacterSet(char * aMailCharacterSet);

  /* attribute boolean charsetOverride; */
  nsresult GetCharsetOverride(PRBool *aCharsetOverride);
  nsresult SetCharsetOverride(PRBool aCharsetOverride);

  /* attribute boolean stopped; */
  nsresult GetStopped(PRBool *aStopped);
  nsresult SetStopped(PRBool aStopped);

  /* void SetDOMWindow (in nsIDOMWindowInternal window); */
  nsresult SetDOMWindow(nsIDOMWindowInternal window);

  /* void StopUrls (); */
  nsresult StopUrls();

  /* void SelectFolder (in string folderUri); */
  nsresult SelectFolder(char *folderUri);

  /* void SelectMessage (in string messageUri); */
  nsresult SelectMessage(char *messageUri);

  /* void closeWindow (); */
  nsresult CloseWindow();

}


/* starting interface:    nsIMsgWindowCommands */
const char[] NS_IMSGWINDOWCOMMANDS_IID_STR = "fad93c80-1ac6-11d4-a8f6-006097222b83";

const nsIID NS_IMSGWINDOWCOMMANDS_IID= 
  {0xfad93c80, 0x1ac6, 0x11d4, 
    [ 0xa8, 0xf6, 0x00, 0x60, 0x97, 0x22, 0x2b, 0x83 ]};

extern(Windows)
interface nsIMsgWindowCommands : nsISupports {
  static const char[] IID_STR = NS_IMSGWINDOWCOMMANDS_IID_STR;
  static const nsIID IID = NS_IMSGWINDOWCOMMANDS_IID;

  /* void SelectFolder (in string folderUri); */
  nsresult SelectFolder(char *folderUri);

  /* void SelectMessage (in string messageUri); */
  nsresult SelectMessage(char *messageUri);

}

