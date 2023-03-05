/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMessenger.idl
 */

module mozilla.dxpcom.nsIMessengerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMessenger;


public import mozilla.dxpcom.nsIMessengerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsrootidl;
public import mozilla.dxpcom.nsrootidlD;
public import mozilla.xpcom.nsIRDFCompositeDataSource;
public import mozilla.dxpcom.nsIRDFCompositeDataSourceD;
public import mozilla.xpcom.nsIMsgWindow;
public import mozilla.dxpcom.nsIMsgWindowD;
public import mozilla.xpcom.nsIMsgIdentity;
public import mozilla.dxpcom.nsIMsgIdentityD;
public import mozilla.xpcom.nsIMsgThread;
public import mozilla.dxpcom.nsIMsgThreadD;
public import mozilla.xpcom.nsIMsgFolder;
public import mozilla.dxpcom.nsIMsgFolderD;

public import mozilla.xpcom.nsIMsgHdr;

import mozilla.dxpcom.nsIMsgHdrD;

public import mozilla.xpcom.nsIDOMWindowInternal;

public import mozilla.dxpcom.nsIDOMWindowInternalD;

public import mozilla.xpcom.nsITransactionManager;

public import mozilla.dxpcom.nsITransactionManagerD;

public import mozilla.xpcom.nsIMsgMessageService;

public import mozilla.dxpcom.nsIMsgMessageServiceD;


/* starting wrapper class:    nsIMessenger */
class nsIMessengerD : public nsISupportsD {

  static const nsIID IID = NS_IMESSENGER_IID;


  alias nsIMessenger InnerType;

  this(nsIMessenger intr){
    super(intr);
    this.inner = intr;
  }

  nsIMessenger opCast() {
    return inner;
  }

  void opAssign(nsIMessenger value) {
    inner = value;
  }

  enum { eUnknown = 0 }

  enum { eDeleteMsg = 1 }

  enum { eMoveMsg = 2 }

  enum { eCopyMsg = 3 }

  /* void setDisplayCharset (in string aCharset); */
  void SetDisplayCharset(char*aCharset){
    nsresult __result = inner.SetDisplayCharset(aCharset);
    CheckException(__result);
  }

  /* readonly attribute nsITransactionManager transactionManager; */
  nsITransactionManagerD  TransactionManager(){
    nsITransactionManager value;
    nsresult __result = inner.GetTransactionManager(&value);
    CheckException(__result);
    return new nsITransactionManagerD(value);
  }

  /* void SetWindow (in nsIDOMWindowInternal ptr, in nsIMsgWindow msgWindow); */
  void SetWindow(nsIDOMWindowInternalD ptr, nsIMsgWindowD msgWindow){
    nsresult __result = inner.SetWindow(ptr ? cast(nsIDOMWindowInternal)ptr : null, msgWindow ? cast(nsIMsgWindow)msgWindow : null);
    CheckException(__result);
  }

  /* void DeleteFolders (in nsIRDFCompositeDataSource db, in nsIRDFResource parentFolder, in nsIRDFResource folder); */
  void DeleteFolders(nsIRDFCompositeDataSourceD db, nsIRDFResourceD parentFolder, nsIRDFResourceD folder){
    nsresult __result = inner.DeleteFolders(db ? cast(nsIRDFCompositeDataSource)db : null, parentFolder ? cast(nsIRDFResource)parentFolder : null, folder ? cast(nsIRDFResource)folder : null);
    CheckException(__result);
  }

  /* void CopyMessages (in nsIRDFCompositeDataSource database, in nsIRDFResource srcResource, in nsIRDFResource dstResource, in nsISupportsArray messages, in boolean isMove); */
  void CopyMessages(nsIRDFCompositeDataSourceD database, nsIRDFResourceD srcResource, nsIRDFResourceD dstResource, nsISupportsArrayD messages, PRBool isMove){
    nsresult __result = inner.CopyMessages(database ? cast(nsIRDFCompositeDataSource)database : null, srcResource ? cast(nsIRDFResource)srcResource : null, dstResource ? cast(nsIRDFResource)dstResource : null, messages ? cast(nsISupportsArray)messages : null, isMove);
    CheckException(__result);
  }

  /* void CopyFolders (in nsIRDFCompositeDataSource database, in nsIRDFResource dstResource, in nsISupportsArray folders, in boolean isMoveFolder); */
  void CopyFolders(nsIRDFCompositeDataSourceD database, nsIRDFResourceD dstResource, nsISupportsArrayD folders, PRBool isMoveFolder){
    nsresult __result = inner.CopyFolders(database ? cast(nsIRDFCompositeDataSource)database : null, dstResource ? cast(nsIRDFResource)dstResource : null, folders ? cast(nsISupportsArray)folders : null, isMoveFolder);
    CheckException(__result);
  }

  /* void OpenURL (in string aURL); */
  void OpenURL(char*aURL){
    nsresult __result = inner.OpenURL(aURL);
    CheckException(__result);
  }

  /** load a custom message by url, e.g load a attachment as a email
      */
  /* void loadURL (in nsIDOMWindowInternal ptr, in string aURL); */
  void LoadURL(nsIDOMWindowInternalD ptr, char*aURL){
    nsresult __result = inner.LoadURL(ptr ? cast(nsIDOMWindowInternal)ptr : null, aURL);
    CheckException(__result);
  }

  /* void launchExternalURL (in string aURL); */
  void LaunchExternalURL(char*aURL){
    nsresult __result = inner.LaunchExternalURL(aURL);
    CheckException(__result);
  }

  /* void RenameFolder (in nsIRDFCompositeDataSource db, in nsIRDFResource folder, in wstring name); */
  void RenameFolder(nsIRDFCompositeDataSourceD db, nsIRDFResourceD folder, PRUnichar*name){
    nsresult __result = inner.RenameFolder(db ? cast(nsIRDFCompositeDataSource)db : null, folder ? cast(nsIRDFResource)folder : null, name);
    CheckException(__result);
  }

  /* void CompactFolder (in nsIRDFCompositeDataSource db, in nsIRDFResource folder, in boolean forAll); */
  void CompactFolder(nsIRDFCompositeDataSourceD db, nsIRDFResourceD folder, PRBool forAll){
    nsresult __result = inner.CompactFolder(db ? cast(nsIRDFCompositeDataSource)db : null, folder ? cast(nsIRDFResource)folder : null, forAll);
    CheckException(__result);
  }

  /* void EmptyTrash (in nsIRDFCompositeDataSource db, in nsIRDFResource folder); */
  void EmptyTrash(nsIRDFCompositeDataSourceD db, nsIRDFResourceD folder){
    nsresult __result = inner.EmptyTrash(db ? cast(nsIRDFCompositeDataSource)db : null, folder ? cast(nsIRDFResource)folder : null);
    CheckException(__result);
  }

  /* boolean CanUndo (); */
  PRBool CanUndo(){
    PRBool _retval;
    nsresult __result = inner.CanUndo(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean CanRedo (); */
  PRBool CanRedo(){
    PRBool _retval;
    nsresult __result = inner.CanRedo(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* unsigned long GetUndoTransactionType (); */
  PRUint32 GetUndoTransactionType(){
    PRUint32 _retval;
    nsresult __result = inner.GetUndoTransactionType(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* unsigned long GetRedoTransactionType (); */
  PRUint32 GetRedoTransactionType(){
    PRUint32 _retval;
    nsresult __result = inner.GetRedoTransactionType(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void Undo (in nsIMsgWindow msgWindow); */
  void Undo(nsIMsgWindowD msgWindow){
    nsresult __result = inner.Undo(msgWindow ? cast(nsIMsgWindow)msgWindow : null);
    CheckException(__result);
  }

  /* void Redo (in nsIMsgWindow msgWindow); */
  void Redo(nsIMsgWindowD msgWindow){
    nsresult __result = inner.Redo(msgWindow ? cast(nsIMsgWindow)msgWindow : null);
    CheckException(__result);
  }

  /* void sendUnsentMessages (in nsIMsgIdentity aIdentity, in nsIMsgWindow aMsgWindow); */
  void SendUnsentMessages(nsIMsgIdentityD aIdentity, nsIMsgWindowD aMsgWindow){
    nsresult __result = inner.SendUnsentMessages(aIdentity ? cast(nsIMsgIdentity)aIdentity : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null);
    CheckException(__result);
  }

  /* void SetDocumentCharset (in string characterSet); */
  void SetDocumentCharset(char*characterSet){
    nsresult __result = inner.SetDocumentCharset(characterSet);
    CheckException(__result);
  }

  /* void saveAs (in string aURI, in boolean aAsFile, in nsIMsgIdentity aIdentity, in wstring aMsgFilename); */
  void SaveAs(char*aURI, PRBool aAsFile, nsIMsgIdentityD aIdentity, PRUnichar*aMsgFilename){
    nsresult __result = inner.SaveAs(aURI, aAsFile, aIdentity ? cast(nsIMsgIdentity)aIdentity : null, aMsgFilename);
    CheckException(__result);
  }

  /* void openAttachment (in string contentTpe, in string url, in string displayName, in string messageUri, in boolean isExternalAttachment); */
  void OpenAttachment(char*contentTpe, char*url, char*displayName, char*messageUri, PRBool isExternalAttachment){
    nsresult __result = inner.OpenAttachment(contentTpe, url, displayName, messageUri, isExternalAttachment);
    CheckException(__result);
  }

  /* void saveAttachment (in string contentTpe, in string url, in string displayName, in string messageUri, in boolean isExternalAttachment); */
  void SaveAttachment(char*contentTpe, char*url, char*displayName, char*messageUri, PRBool isExternalAttachment){
    nsresult __result = inner.SaveAttachment(contentTpe, url, displayName, messageUri, isExternalAttachment);
    CheckException(__result);
  }

  /* void saveAllAttachments (in unsigned long count, [array, size_is (count)] in string contentTypeArray, [array, size_is (count)] in string urlArray, [array, size_is (count)] in string displayNameArray, [array, size_is (count)] in string messageUriArray); */
  void SaveAllAttachments(PRUint32 count, char**contentTypeArray, char**urlArray, char**displayNameArray, char**messageUriArray){
    nsresult __result = inner.SaveAllAttachments(count, contentTypeArray, urlArray, displayNameArray, messageUriArray);
    CheckException(__result);
  }

  /* void detachAttachment (in string contentTpe, in string url, in string displayName, in string messageUri, in boolean saveFirst); */
  void DetachAttachment(char*contentTpe, char*url, char*displayName, char*messageUri, PRBool saveFirst){
    nsresult __result = inner.DetachAttachment(contentTpe, url, displayName, messageUri, saveFirst);
    CheckException(__result);
  }

  /* void detachAllAttachments (in unsigned long count, [array, size_is (count)] in string contentTypeArray, [array, size_is (count)] in string urlArray, [array, size_is (count)] in string displayNameArray, [array, size_is (count)] in string messageUriArray, in boolean saveFirst); */
  void DetachAllAttachments(PRUint32 count, char**contentTypeArray, char**urlArray, char**displayNameArray, char**messageUriArray, PRBool saveFirst){
    nsresult __result = inner.DetachAllAttachments(count, contentTypeArray, urlArray, displayNameArray, messageUriArray, saveFirst);
    CheckException(__result);
  }

  /* nsILocalFile saveAttachmentToFolder (in string contentType, in string url, in string displayName, in string messageUri, in nsILocalFile aDestFolder); */
  nsILocalFileD  SaveAttachmentToFolder(char*contentType, char*url, char*displayName, char*messageUri, nsILocalFileD aDestFolder){
    nsILocalFile _retval;
    nsresult __result = inner.SaveAttachmentToFolder(contentType, url, displayName, messageUri, aDestFolder ? cast(nsILocalFile)aDestFolder : null, &_retval);
    CheckException(__result);
    return new nsILocalFileD(_retval);
  }

  /* attribute boolean sendingUnsentMsgs; */
  PRBool SendingUnsentMsgs(){
    PRBool value;
    nsresult __result = inner.GetSendingUnsentMsgs(&value);
    CheckException(__result);
    return value;
  }
  void SendingUnsentMsgs(PRBool aSendingUnsentMsgs){
    nsresult __result = inner.SetSendingUnsentMsgs(aSendingUnsentMsgs);
    CheckException(__result);
  }

  /* readonly attribute string lastDisplayedMessageUri; */
  char* LastDisplayedMessageUri(){
    char* value;
    nsresult __result = inner.GetLastDisplayedMessageUri(&value);
    CheckException(__result);
    return value;
  }

  /* nsIMsgMessageService messageServiceFromURI (in string aUri); */
  nsIMsgMessageServiceD  MessageServiceFromURI(char*aUri){
    nsIMsgMessageService _retval;
    nsresult __result = inner.MessageServiceFromURI(aUri, &_retval);
    CheckException(__result);
    return new nsIMsgMessageServiceD(_retval);
  }

  /* nsIMsgDBHdr msgHdrFromURI (in string aUri); */
  nsIMsgDBHdrD  MsgHdrFromURI(char*aUri){
    nsIMsgDBHdr _retval;
    nsresult __result = inner.MsgHdrFromURI(aUri, &_retval);
    CheckException(__result);
    return new nsIMsgDBHdrD(_retval);
  }

  /* string getMsgUriAtNavigatePos (in long aPos); */
  char* GetMsgUriAtNavigatePos(PRInt32 aPos){
    char* _retval;
    nsresult __result = inner.GetMsgUriAtNavigatePos(aPos, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* string getFolderUriAtNavigatePos (in long aPos); */
  char* GetFolderUriAtNavigatePos(PRInt32 aPos){
    char* _retval;
    nsresult __result = inner.GetFolderUriAtNavigatePos(aPos, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* attribute long navigatePos; */
  PRInt32 NavigatePos(){
    PRInt32 value;
    nsresult __result = inner.GetNavigatePos(&value);
    CheckException(__result);
    return value;
  }
  void NavigatePos(PRInt32 aNavigatePos){
    nsresult __result = inner.SetNavigatePos(aNavigatePos);
    CheckException(__result);
  }

  /* void getNavigateHistory (out unsigned long aCurPos, out unsigned long aCount, [array, size_is (aCount)] out string aHistory); */
  void GetNavigateHistory(out PRUint32 aCurPos, out PRUint32 aCount, out char**aHistory){
    nsresult __result = inner.GetNavigateHistory(&aCurPos, &aCount, &aHistory);
    CheckException(__result);
  }

private:
  nsIMessenger inner;

}

