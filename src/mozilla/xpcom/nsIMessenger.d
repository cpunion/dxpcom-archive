/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMessenger.idl
 */

module mozilla.xpcom.nsIMessenger;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsrootidl;
public import mozilla.xpcom.nsIRDFCompositeDataSource;
public import mozilla.xpcom.nsIMsgWindow;
public import mozilla.xpcom.nsIMsgIdentity;
public import mozilla.xpcom.nsIMsgThread;
public import mozilla.xpcom.nsIMsgFolder;

public import mozilla.xpcom.nsIMsgHdr;

public import mozilla.xpcom.nsIDOMWindowInternal; /* forward declaration */

public import mozilla.xpcom.nsITransactionManager; /* forward declaration */

public import mozilla.xpcom.nsIMsgMessageService; /* forward declaration */


/* starting interface:    nsIMessenger */
const char[] NS_IMESSENGER_IID_STR = "0f6d0a77-aed8-4658-bedd-8753a008f0d8";

const nsIID NS_IMESSENGER_IID= 
  {0x0f6d0a77, 0xaed8, 0x4658, 
    [ 0xbe, 0xdd, 0x87, 0x53, 0xa0, 0x08, 0xf0, 0xd8 ]};

extern(Windows)
interface nsIMessenger : nsISupports {
  static const char[] IID_STR = NS_IMESSENGER_IID_STR;
  static const nsIID IID = NS_IMESSENGER_IID;

  enum { eUnknown = 0 };

  enum { eDeleteMsg = 1 };

  enum { eMoveMsg = 2 };

  enum { eCopyMsg = 3 };

  /* void setDisplayCharset (in string aCharset); */
  nsresult SetDisplayCharset(char *aCharset);

  /* readonly attribute nsITransactionManager transactionManager; */
  nsresult GetTransactionManager(nsITransactionManager  *aTransactionManager);

  /* void SetWindow (in nsIDOMWindowInternal ptr, in nsIMsgWindow msgWindow); */
  nsresult SetWindow(nsIDOMWindowInternal ptr, nsIMsgWindow msgWindow);

  /* void DeleteFolders (in nsIRDFCompositeDataSource db, in nsIRDFResource parentFolder, in nsIRDFResource folder); */
  nsresult DeleteFolders(nsIRDFCompositeDataSource db, nsIRDFResource parentFolder, nsIRDFResource folder);

  /* void CopyMessages (in nsIRDFCompositeDataSource database, in nsIRDFResource srcResource, in nsIRDFResource dstResource, in nsISupportsArray messages, in boolean isMove); */
  nsresult CopyMessages(nsIRDFCompositeDataSource database, nsIRDFResource srcResource, nsIRDFResource dstResource, nsISupportsArray messages, PRBool isMove);

  /* void CopyFolders (in nsIRDFCompositeDataSource database, in nsIRDFResource dstResource, in nsISupportsArray folders, in boolean isMoveFolder); */
  nsresult CopyFolders(nsIRDFCompositeDataSource database, nsIRDFResource dstResource, nsISupportsArray folders, PRBool isMoveFolder);

  /* void OpenURL (in string aURL); */
  nsresult OpenURL(char *aURL);

  /** load a custom message by url, e.g load a attachment as a email
      */
  /* void loadURL (in nsIDOMWindowInternal ptr, in string aURL); */
  nsresult LoadURL(nsIDOMWindowInternal ptr, char *aURL);

  /* void launchExternalURL (in string aURL); */
  nsresult LaunchExternalURL(char *aURL);

  /* void RenameFolder (in nsIRDFCompositeDataSource db, in nsIRDFResource folder, in wstring name); */
  nsresult RenameFolder(nsIRDFCompositeDataSource db, nsIRDFResource folder, PRUnichar *name);

  /* void CompactFolder (in nsIRDFCompositeDataSource db, in nsIRDFResource folder, in boolean forAll); */
  nsresult CompactFolder(nsIRDFCompositeDataSource db, nsIRDFResource folder, PRBool forAll);

  /* void EmptyTrash (in nsIRDFCompositeDataSource db, in nsIRDFResource folder); */
  nsresult EmptyTrash(nsIRDFCompositeDataSource db, nsIRDFResource folder);

  /* boolean CanUndo (); */
  nsresult CanUndo(PRBool *_retval);

  /* boolean CanRedo (); */
  nsresult CanRedo(PRBool *_retval);

  /* unsigned long GetUndoTransactionType (); */
  nsresult GetUndoTransactionType(PRUint32 *_retval);

  /* unsigned long GetRedoTransactionType (); */
  nsresult GetRedoTransactionType(PRUint32 *_retval);

  /* void Undo (in nsIMsgWindow msgWindow); */
  nsresult Undo(nsIMsgWindow msgWindow);

  /* void Redo (in nsIMsgWindow msgWindow); */
  nsresult Redo(nsIMsgWindow msgWindow);

  /* void sendUnsentMessages (in nsIMsgIdentity aIdentity, in nsIMsgWindow aMsgWindow); */
  nsresult SendUnsentMessages(nsIMsgIdentity aIdentity, nsIMsgWindow aMsgWindow);

  /* void SetDocumentCharset (in string characterSet); */
  nsresult SetDocumentCharset(char *characterSet);

  /* void saveAs (in string aURI, in boolean aAsFile, in nsIMsgIdentity aIdentity, in wstring aMsgFilename); */
  nsresult SaveAs(char *aURI, PRBool aAsFile, nsIMsgIdentity aIdentity, PRUnichar *aMsgFilename);

  /* void openAttachment (in string contentTpe, in string url, in string displayName, in string messageUri, in boolean isExternalAttachment); */
  nsresult OpenAttachment(char *contentTpe, char *url, char *displayName, char *messageUri, PRBool isExternalAttachment);

  /* void saveAttachment (in string contentTpe, in string url, in string displayName, in string messageUri, in boolean isExternalAttachment); */
  nsresult SaveAttachment(char *contentTpe, char *url, char *displayName, char *messageUri, PRBool isExternalAttachment);

  /* void saveAllAttachments (in unsigned long count, [array, size_is (count)] in string contentTypeArray, [array, size_is (count)] in string urlArray, [array, size_is (count)] in string displayNameArray, [array, size_is (count)] in string messageUriArray); */
  nsresult SaveAllAttachments(PRUint32 count, char **contentTypeArray, char **urlArray, char **displayNameArray, char **messageUriArray);

  /* void detachAttachment (in string contentTpe, in string url, in string displayName, in string messageUri, in boolean saveFirst); */
  nsresult DetachAttachment(char *contentTpe, char *url, char *displayName, char *messageUri, PRBool saveFirst);

  /* void detachAllAttachments (in unsigned long count, [array, size_is (count)] in string contentTypeArray, [array, size_is (count)] in string urlArray, [array, size_is (count)] in string displayNameArray, [array, size_is (count)] in string messageUriArray, in boolean saveFirst); */
  nsresult DetachAllAttachments(PRUint32 count, char **contentTypeArray, char **urlArray, char **displayNameArray, char **messageUriArray, PRBool saveFirst);

  /* nsILocalFile saveAttachmentToFolder (in string contentType, in string url, in string displayName, in string messageUri, in nsILocalFile aDestFolder); */
  nsresult SaveAttachmentToFolder(char *contentType, char *url, char *displayName, char *messageUri, nsILocalFile aDestFolder, nsILocalFile *_retval);

  /* attribute boolean sendingUnsentMsgs; */
  nsresult GetSendingUnsentMsgs(PRBool *aSendingUnsentMsgs);
  nsresult SetSendingUnsentMsgs(PRBool aSendingUnsentMsgs);

  /* readonly attribute string lastDisplayedMessageUri; */
  nsresult GetLastDisplayedMessageUri(char * *aLastDisplayedMessageUri);

  /* nsIMsgMessageService messageServiceFromURI (in string aUri); */
  nsresult MessageServiceFromURI(char *aUri, nsIMsgMessageService *_retval);

  /* nsIMsgDBHdr msgHdrFromURI (in string aUri); */
  nsresult MsgHdrFromURI(char *aUri, nsIMsgDBHdr *_retval);

  /* string getMsgUriAtNavigatePos (in long aPos); */
  nsresult GetMsgUriAtNavigatePos(PRInt32 aPos, char **_retval);

  /* string getFolderUriAtNavigatePos (in long aPos); */
  nsresult GetFolderUriAtNavigatePos(PRInt32 aPos, char **_retval);

  /* attribute long navigatePos; */
  nsresult GetNavigatePos(PRInt32 *aNavigatePos);
  nsresult SetNavigatePos(PRInt32 aNavigatePos);

  /* void getNavigateHistory (out unsigned long aCurPos, out unsigned long aCount, [array, size_is (aCount)] out string aHistory); */
  nsresult GetNavigateHistory(PRUint32 *aCurPos, PRUint32 *aCount, char ***aHistory);

}

