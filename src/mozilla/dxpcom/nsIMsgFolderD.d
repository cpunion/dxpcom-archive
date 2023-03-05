/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgFolder.idl
 */

module mozilla.dxpcom.nsIMsgFolderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgFolder;


public import mozilla.dxpcom.nsIMsgFolderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsICollection;
public import mozilla.dxpcom.nsICollectionD;
public import mozilla.xpcom.nsIFolderListener;
public import mozilla.dxpcom.nsIFolderListenerD;
public import mozilla.xpcom.nsIMsgThread;
public import mozilla.dxpcom.nsIMsgThreadD;
public import mozilla.xpcom.nsIMsgIncomingServer;
public import mozilla.dxpcom.nsIMsgIncomingServerD;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.dxpcom.nsISupportsArrayD;
public import mozilla.xpcom.nsIMsgCopyServiceListener;
public import mozilla.dxpcom.nsIMsgCopyServiceListenerD;
public import mozilla.xpcom.nsIUrlListener;
public import mozilla.dxpcom.nsIUrlListenerD;
public import mozilla.xpcom.nsIEnumerator;
public import mozilla.dxpcom.nsIEnumeratorD;
public import mozilla.xpcom.nsISimpleEnumerator;
public import mozilla.dxpcom.nsISimpleEnumeratorD;

public import mozilla.xpcom.nsIMsgHdr;

import mozilla.dxpcom.nsIMsgHdrD;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;

public import mozilla.xpcom.nsIMsgDatabase;

public import mozilla.dxpcom.nsIMsgDatabaseD;

public import mozilla.xpcom.nsIDBFolderInfo;

public import mozilla.dxpcom.nsIDBFolderInfoD;

public import mozilla.xpcom.nsIMsgFilterList;

public import mozilla.dxpcom.nsIMsgFilterListD;

public import mozilla.xpcom.nsIMsgFolderCacheElement;

public import mozilla.dxpcom.nsIMsgFolderCacheElementD;

public import mozilla.xpcom.nsITransport;

public import mozilla.dxpcom.nsITransportD;

public import mozilla.xpcom.nsIFileSpec;

public import mozilla.dxpcom.nsIFileSpecD;

public import mozilla.xpcom.nsIOutputStream;

public import mozilla.dxpcom.nsIOutputStreamD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;

public import mozilla.xpcom.nsILocalFile;

public import mozilla.dxpcom.nsILocalFileD;

public import mozilla.xpcom.nsIMsgIdentity;

public import mozilla.dxpcom.nsIMsgIdentityD;


/* starting wrapper class:    nsIMsgFolder */
class nsIMsgFolderD : public nsICollectionD {

  static const nsIID IID = NS_IMSGFOLDER_IID;


  alias nsIMsgFolder InnerType;

  this(nsIMsgFolder intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgFolder opCast() {
    return inner;
  }

  void opAssign(nsIMsgFolder value) {
    inner = value;
  }

  enum { nsMsgBiffState_NewMail = 0 }

  enum { nsMsgBiffState_NoMail = 1 }

  enum { nsMsgBiffState_Unknown = 2 }

  /* nsISimpleEnumerator getMessages (in nsIMsgWindow aMsgWindow); */
  nsISimpleEnumeratorD  GetMessages(nsIMsgWindowD aMsgWindow){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.GetMessages(aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, &_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

  /* void startFolderLoading (); */
  void StartFolderLoading(){
    nsresult __result = inner.StartFolderLoading();
    CheckException(__result);
  }

  /* void endFolderLoading (); */
  void EndFolderLoading(){
    nsresult __result = inner.EndFolderLoading();
    CheckException(__result);
  }

  /* void updateFolder (in nsIMsgWindow aWindow); */
  void UpdateFolder(nsIMsgWindowD aWindow){
    nsresult __result = inner.UpdateFolder(aWindow ? cast(nsIMsgWindow)aWindow : null);
    CheckException(__result);
  }

  /* readonly attribute wstring prettiestName; */
  PRUnichar* PrettiestName(){
    PRUnichar* value;
    nsresult __result = inner.GetPrettiestName(&value);
    CheckException(__result);
    return value;
  }

  /**
   * URL for this folder
   */
  /* readonly attribute string folderURL; */
  char* FolderURL(){
    char* value;
    nsresult __result = inner.GetFolderURL(&value);
    CheckException(__result);
    return value;
  }

  /**
   * should probably move to the server
   */
  /* readonly attribute boolean showDeletedMessages; */
  PRBool ShowDeletedMessages(){
    PRBool value;
    nsresult __result = inner.GetShowDeletedMessages(&value);
    CheckException(__result);
    return value;
  }

  /**
   * this folder's parent server
   */
  /* readonly attribute nsIMsgIncomingServer server; */
  nsIMsgIncomingServerD  Server(){
    nsIMsgIncomingServer value;
    nsresult __result = inner.GetServer(&value);
    CheckException(__result);
    return new nsIMsgIncomingServerD(value);
  }

  /**
   * is this folder the "phantom" server folder?
   */
  /* readonly attribute boolean isServer; */
  PRBool IsServer(){
    PRBool value;
    nsresult __result = inner.GetIsServer(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean canSubscribe; */
  PRBool CanSubscribe(){
    PRBool value;
    nsresult __result = inner.GetCanSubscribe(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean canFileMessages; */
  PRBool CanFileMessages(){
    PRBool value;
    nsresult __result = inner.GetCanFileMessages(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean noSelect; */
  PRBool NoSelect(){
    PRBool value;
    nsresult __result = inner.GetNoSelect(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean imapShared; */
  PRBool ImapShared(){
    PRBool value;
    nsresult __result = inner.GetImapShared(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean canDeleteMessages; */
  PRBool CanDeleteMessages(){
    PRBool value;
    nsresult __result = inner.GetCanDeleteMessages(&value);
    CheckException(__result);
    return value;
  }

  /**
   * does this folder allow subfolders?
   * for example, newsgroups cannot have subfolders, and the INBOX
   * on some IMAP servers cannot have subfolders
   */
  /* readonly attribute boolean canCreateSubfolders; */
  PRBool CanCreateSubfolders(){
    PRBool value;
    nsresult __result = inner.GetCanCreateSubfolders(&value);
    CheckException(__result);
    return value;
  }

  /**
   * can you change the name of this folder?
   * for example, newsgroups
   * and some special folders can't be renamed
   */
  /* readonly attribute boolean canRename; */
  PRBool CanRename(){
    PRBool value;
    nsresult __result = inner.GetCanRename(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean canCompact; */
  PRBool CanCompact(){
    PRBool value;
    nsresult __result = inner.GetCanCompact(&value);
    CheckException(__result);
    return value;
  }

  /**
   * the phantom server folder
   */
  /* readonly attribute nsIMsgFolder rootFolder; */
  nsIMsgFolderD  RootFolder(){
    nsIMsgFolder value;
    nsresult __result = inner.GetRootFolder(&value);
    CheckException(__result);
    return new nsIMsgFolderD(value);
  }

  /**
   * function to get the filter list on folder's server 
   * (or in the case of news, the filter list for this newsgroup)'
   */
  /* nsIMsgFilterList getFilterList (in nsIMsgWindow msgWindow); */
  nsIMsgFilterListD  GetFilterList(nsIMsgWindowD msgWindow){
    nsIMsgFilterList _retval;
    nsresult __result = inner.GetFilterList(msgWindow ? cast(nsIMsgWindow)msgWindow : null, &_retval);
    CheckException(__result);
    return new nsIMsgFilterListD(_retval);
  }

  /* void setFilterList (in nsIMsgFilterList filterList); */
  void SetFilterList(nsIMsgFilterListD filterList){
    nsresult __result = inner.SetFilterList(filterList ? cast(nsIMsgFilterList)filterList : null);
    CheckException(__result);
  }

  /* void ForceDBClosed (); */
  void ForceDBClosed(){
    nsresult __result = inner.ForceDBClosed();
    CheckException(__result);
  }

  /* void Delete (); */
  void Delete(){
    nsresult __result = inner.Delete();
    CheckException(__result);
  }

  /* void deleteSubFolders (in nsISupportsArray folders, in nsIMsgWindow msgWindow); */
  void DeleteSubFolders(nsISupportsArrayD folders, nsIMsgWindowD msgWindow){
    nsresult __result = inner.DeleteSubFolders(folders ? cast(nsISupportsArray)folders : null, msgWindow ? cast(nsIMsgWindow)msgWindow : null);
    CheckException(__result);
  }

  /* void propagateDelete (in nsIMsgFolder folder, in boolean deleteStorage, in nsIMsgWindow msgWindow); */
  void PropagateDelete(nsIMsgFolderD folder, PRBool deleteStorage, nsIMsgWindowD msgWindow){
    nsresult __result = inner.PropagateDelete(folder ? cast(nsIMsgFolder)folder : null, deleteStorage, msgWindow ? cast(nsIMsgWindow)msgWindow : null);
    CheckException(__result);
  }

  /* void recursiveDelete (in boolean deleteStorage, in nsIMsgWindow msgWindow); */
  void RecursiveDelete(PRBool deleteStorage, nsIMsgWindowD msgWindow){
    nsresult __result = inner.RecursiveDelete(deleteStorage, msgWindow ? cast(nsIMsgWindow)msgWindow : null);
    CheckException(__result);
  }

  /* void createSubfolder (in wstring folderName, in nsIMsgWindow msgWindow); */
  void CreateSubfolder(PRUnichar*folderName, nsIMsgWindowD msgWindow){
    nsresult __result = inner.CreateSubfolder(folderName, msgWindow ? cast(nsIMsgWindow)msgWindow : null);
    CheckException(__result);
  }

  /* nsIMsgFolder addSubfolder (in AString folderName); */
  nsIMsgFolderD  AddSubfolder(wchar[] folderName){
    scope auto _folderName = new AString(folderName);
    nsIMsgFolder _retval;
    nsresult __result = inner.AddSubfolder(cast(nsAString*)_folderName, &_retval);
    CheckException(__result);
    return new nsIMsgFolderD(_retval);
  }

  /* void createStorageIfMissing (in nsIUrlListener urlListener); */
  void CreateStorageIfMissing(nsIUrlListenerD urlListener){
    nsresult __result = inner.CreateStorageIfMissing(urlListener ? cast(nsIUrlListener)urlListener : null);
    CheckException(__result);
  }

  /* void compact (in nsIUrlListener aListener, in nsIMsgWindow aMsgWindow); */
  void Compact(nsIUrlListenerD aListener, nsIMsgWindowD aMsgWindow){
    nsresult __result = inner.Compact(aListener ? cast(nsIUrlListener)aListener : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null);
    CheckException(__result);
  }

  /* void compactAll (in nsIUrlListener aListener, in nsIMsgWindow aMsgWindow, in nsISupportsArray aFolderArray, in boolean aCompactOfflineAlso, in nsISupportsArray aOfflineFolderArray); */
  void CompactAll(nsIUrlListenerD aListener, nsIMsgWindowD aMsgWindow, nsISupportsArrayD aFolderArray, PRBool aCompactOfflineAlso, nsISupportsArrayD aOfflineFolderArray){
    nsresult __result = inner.CompactAll(aListener ? cast(nsIUrlListener)aListener : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aFolderArray ? cast(nsISupportsArray)aFolderArray : null, aCompactOfflineAlso, aOfflineFolderArray ? cast(nsISupportsArray)aOfflineFolderArray : null);
    CheckException(__result);
  }

  /* void compactAllOfflineStores (in nsIMsgWindow aMsgWindow, in nsISupportsArray aOfflineFolderArray); */
  void CompactAllOfflineStores(nsIMsgWindowD aMsgWindow, nsISupportsArrayD aOfflineFolderArray){
    nsresult __result = inner.CompactAllOfflineStores(aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aOfflineFolderArray ? cast(nsISupportsArray)aOfflineFolderArray : null);
    CheckException(__result);
  }

  /* void emptyTrash (in nsIMsgWindow aMsgWindow, in nsIUrlListener aListener); */
  void EmptyTrash(nsIMsgWindowD aMsgWindow, nsIUrlListenerD aListener){
    nsresult __result = inner.EmptyTrash(aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aListener ? cast(nsIUrlListener)aListener : null);
    CheckException(__result);
  }

  /**
   * change the name of the folder
   *
   * @param name the new name of the folder
   */
  /* void rename (in wstring name, in nsIMsgWindow msgWindow); */
  void Rename(PRUnichar*name, nsIMsgWindowD msgWindow){
    nsresult __result = inner.Rename(name, msgWindow ? cast(nsIMsgWindow)msgWindow : null);
    CheckException(__result);
  }

  /* void renameSubFolders (in nsIMsgWindow msgWindow, in nsIMsgFolder oldFolder); */
  void RenameSubFolders(nsIMsgWindowD msgWindow, nsIMsgFolderD oldFolder){
    nsresult __result = inner.RenameSubFolders(msgWindow ? cast(nsIMsgWindow)msgWindow : null, oldFolder ? cast(nsIMsgFolder)oldFolder : null);
    CheckException(__result);
  }

  /**
   * looks in immediate children of this folder for the given name
   *
   * @param name the name of the target subfolder
   */
  /* boolean containsChildNamed (in wstring name); */
  PRBool ContainsChildNamed(PRUnichar*name){
    PRBool _retval;
    nsresult __result = inner.ContainsChildNamed(name, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean isAncestorOf (in nsIMsgFolder folder); */
  PRBool IsAncestorOf(nsIMsgFolderD folder){
    PRBool _retval;
    nsresult __result = inner.IsAncestorOf(folder ? cast(nsIMsgFolder)folder : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* wstring generateUniqueSubfolderName (in wstring prefix, in nsIMsgFolder otherFolder); */
  PRUnichar* GenerateUniqueSubfolderName(PRUnichar*prefix, nsIMsgFolderD otherFolder){
    PRUnichar* _retval;
    nsresult __result = inner.GenerateUniqueSubfolderName(prefix, otherFolder ? cast(nsIMsgFolder)otherFolder : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void updateSummaryTotals (in boolean force); */
  void UpdateSummaryTotals(PRBool force){
    nsresult __result = inner.UpdateSummaryTotals(force);
    CheckException(__result);
  }

  /* void summaryChanged (); */
  void SummaryChanged(){
    nsresult __result = inner.SummaryChanged();
    CheckException(__result);
  }

  /**
   * get the total number of unread messages in this folder,
   * or in all subfolders
   *
   * @param deep if true, descends into all subfolders and gets a grand total
   */
  /* long getNumUnread (in boolean deep); */
  PRInt32 GetNumUnread(PRBool deep){
    PRInt32 _retval;
    nsresult __result = inner.GetNumUnread(deep, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * get the total number of messages in this folder,
   * or in all subfolders
   *
   * @param deep if true, descends into all subfolders and gets a grand total
   */
  /* long getTotalMessages (in boolean deep); */
  PRInt32 GetTotalMessages(PRBool deep){
    PRInt32 _retval;
    nsresult __result = inner.GetTotalMessages(deep, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
  * does this folder have new messages
  *
  */
  /* attribute boolean hasNewMessages; */
  PRBool HasNewMessages(){
    PRBool value;
    nsresult __result = inner.GetHasNewMessages(&value);
    CheckException(__result);
    return value;
  }
  void HasNewMessages(PRBool aHasNewMessages){
    nsresult __result = inner.SetHasNewMessages(aHasNewMessages);
    CheckException(__result);
  }

  /**
   * return the first new message in the folder
   *
   */
  /* readonly attribute nsIMsgDBHdr firstNewMessage; */
  nsIMsgDBHdrD  FirstNewMessage(){
    nsIMsgDBHdr value;
    nsresult __result = inner.GetFirstNewMessage(&value);
    CheckException(__result);
    return new nsIMsgDBHdrD(value);
  }

  /**
   * clear new status flag of all of the new messages
   *
   */
  /* void clearNewMessages (); */
  void ClearNewMessages(){
    nsresult __result = inner.ClearNewMessages();
    CheckException(__result);
  }

  /* readonly attribute unsigned long expungedBytes; */
  PRUint32 ExpungedBytes(){
    PRUint32 value;
    nsresult __result = inner.GetExpungedBytes(&value);
    CheckException(__result);
    return value;
  }

  /**
   * can this folder be deleted?
   * for example, special folders cannot be deleted
   */
  /* readonly attribute boolean deletable; */
  PRBool Deletable(){
    PRBool value;
    nsresult __result = inner.GetDeletable(&value);
    CheckException(__result);
    return value;
  }

  /**
   * should we be displaying recipients instead of the sender?
   * for example, in the Sent folder, recipients are more relevant
   * than the sender
   */
  /* readonly attribute boolean displayRecipients; */
  PRBool DisplayRecipients(){
    PRBool value;
    nsresult __result = inner.GetDisplayRecipients(&value);
    CheckException(__result);
    return value;
  }

  /**
   * used to determine if it will take a long time to download all
   * the headers in this folder - so that we can do folder notifications
   * synchronously instead of asynchronously
   */
  /* readonly attribute boolean manyHeadersToDownload; */
  PRBool ManyHeadersToDownload(){
    PRBool value;
    nsresult __result = inner.GetManyHeadersToDownload(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean requiresCleanup; */
  PRBool RequiresCleanup(){
    PRBool value;
    nsresult __result = inner.GetRequiresCleanup(&value);
    CheckException(__result);
    return value;
  }

  /* void clearRequiresCleanup (); */
  void ClearRequiresCleanup(){
    nsresult __result = inner.ClearRequiresCleanup();
    CheckException(__result);
  }

  /**
   * this should go into a news-specific interface
   */
  /* readonly attribute boolean knowsSearchNntpExtension; */
  PRBool KnowsSearchNntpExtension(){
    PRBool value;
    nsresult __result = inner.GetKnowsSearchNntpExtension(&value);
    CheckException(__result);
    return value;
  }

  /**
   * this should go into a news-specific interface
   */
  /* readonly attribute boolean allowsPosting; */
  PRBool AllowsPosting(){
    PRBool value;
    nsresult __result = inner.GetAllowsPosting(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute string relativePathName; */
  char* RelativePathName(){
    char* value;
    nsresult __result = inner.GetRelativePathName(&value);
    CheckException(__result);
    return value;
  }

  /**
   * size of this folder on disk (not including .msf file)
   * for imap, it's the sum of the size of the messages
   */
  /* attribute unsigned long sizeOnDisk; */
  PRUint32 SizeOnDisk(){
    PRUint32 value;
    nsresult __result = inner.GetSizeOnDisk(&value);
    CheckException(__result);
    return value;
  }
  void SizeOnDisk(PRUint32 aSizeOnDisk){
    nsresult __result = inner.SetSizeOnDisk(aSizeOnDisk);
    CheckException(__result);
  }

  /* readonly attribute string username; */
  char* Username(){
    char* value;
    nsresult __result = inner.GetUsername(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute string hostname; */
  char* Hostname(){
    char* value;
    nsresult __result = inner.GetHostname(&value);
    CheckException(__result);
    return value;
  }

  /* void setFlag (in unsigned long flag); */
  void SetFlag(PRUint32 flag){
    nsresult __result = inner.SetFlag(flag);
    CheckException(__result);
  }

  /* void clearFlag (in unsigned long flag); */
  void ClearFlag(PRUint32 flag){
    nsresult __result = inner.ClearFlag(flag);
    CheckException(__result);
  }

  /* boolean getFlag (in unsigned long flag); */
  PRBool GetFlag(PRUint32 flag){
    PRBool _retval;
    nsresult __result = inner.GetFlag(flag, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setPrefFlag (); */
  void SetPrefFlag(){
    nsresult __result = inner.SetPrefFlag();
    CheckException(__result);
  }

  /* void toggleFlag (in unsigned long flag); */
  void ToggleFlag(PRUint32 flag){
    nsresult __result = inner.ToggleFlag(flag);
    CheckException(__result);
  }

  /* void onFlagChange (in unsigned long flag); */
  void OnFlagChange(PRUint32 flag){
    nsresult __result = inner.OnFlagChange(flag);
    CheckException(__result);
  }

  /* attribute unsigned long flags; */
  PRUint32 Flags(){
    PRUint32 value;
    nsresult __result = inner.GetFlags(&value);
    CheckException(__result);
    return value;
  }
  void Flags(PRUint32 aFlags){
    nsresult __result = inner.SetFlags(aFlags);
    CheckException(__result);
  }

  /* nsIMsgFolder getFoldersWithFlag (in unsigned long flags, in unsigned long resultsize, out unsigned long numFolders); */
  nsIMsgFolderD  GetFoldersWithFlag(PRUint32 flags, PRUint32 resultsize, out PRUint32 numFolders){
    nsIMsgFolder _retval;
    nsresult __result = inner.GetFoldersWithFlag(flags, resultsize, &numFolders, &_retval);
    CheckException(__result);
    return new nsIMsgFolderD(_retval);
  }

  /* nsISupportsArray getAllFoldersWithFlag (in unsigned long aFlag); */
  nsISupportsArrayD  GetAllFoldersWithFlag(PRUint32 aFlag){
    nsISupportsArray _retval;
    nsresult __result = inner.GetAllFoldersWithFlag(aFlag, &_retval);
    CheckException(__result);
    return new nsISupportsArrayD(_retval);
  }

  /* void getExpansionArray (in nsISupportsArray expansionArray); */
  void GetExpansionArray(nsISupportsArrayD expansionArray){
    nsresult __result = inner.GetExpansionArray(expansionArray ? cast(nsISupportsArray)expansionArray : null);
    CheckException(__result);
  }

  /* string getUriForMsg (in nsIMsgDBHdr msgHdr); */
  char* GetUriForMsg(nsIMsgDBHdrD msgHdr){
    char* _retval;
    nsresult __result = inner.GetUriForMsg(msgHdr ? cast(nsIMsgDBHdr)msgHdr : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void deleteMessages (in nsISupportsArray messages, in nsIMsgWindow msgWindow, in boolean deleteStorage, in boolean isMove, in nsIMsgCopyServiceListener listener, in boolean allowUndo); */
  void DeleteMessages(nsISupportsArrayD messages, nsIMsgWindowD msgWindow, PRBool deleteStorage, PRBool isMove, nsIMsgCopyServiceListenerD listener, PRBool allowUndo){
    nsresult __result = inner.DeleteMessages(messages ? cast(nsISupportsArray)messages : null, msgWindow ? cast(nsIMsgWindow)msgWindow : null, deleteStorage, isMove, listener ? cast(nsIMsgCopyServiceListener)listener : null, allowUndo);
    CheckException(__result);
  }

  /* void copyMessages (in nsIMsgFolder srcFolder, in nsISupportsArray messages, in boolean isMove, in nsIMsgWindow msgWindow, in nsIMsgCopyServiceListener listener, in boolean isFolder, in boolean allowUndo); */
  void CopyMessages(nsIMsgFolderD srcFolder, nsISupportsArrayD messages, PRBool isMove, nsIMsgWindowD msgWindow, nsIMsgCopyServiceListenerD listener, PRBool isFolder, PRBool allowUndo){
    nsresult __result = inner.CopyMessages(srcFolder ? cast(nsIMsgFolder)srcFolder : null, messages ? cast(nsISupportsArray)messages : null, isMove, msgWindow ? cast(nsIMsgWindow)msgWindow : null, listener ? cast(nsIMsgCopyServiceListener)listener : null, isFolder, allowUndo);
    CheckException(__result);
  }

  /* void copyFolder (in nsIMsgFolder srcFolder, in boolean isMoveFolder, in nsIMsgWindow msgWindow, in nsIMsgCopyServiceListener listener); */
  void CopyFolder(nsIMsgFolderD srcFolder, PRBool isMoveFolder, nsIMsgWindowD msgWindow, nsIMsgCopyServiceListenerD listener){
    nsresult __result = inner.CopyFolder(srcFolder ? cast(nsIMsgFolder)srcFolder : null, isMoveFolder, msgWindow ? cast(nsIMsgWindow)msgWindow : null, listener ? cast(nsIMsgCopyServiceListener)listener : null);
    CheckException(__result);
  }

  /* void copyFileMessage (in nsIFileSpec fileSpec, in nsIMsgDBHdr msgToReplace, in boolean isDraft, in unsigned long newMsgFlags, in nsIMsgWindow msgWindow, in nsIMsgCopyServiceListener listener); */
  void CopyFileMessage(nsIFileSpecD fileSpec, nsIMsgDBHdrD msgToReplace, PRBool isDraft, PRUint32 newMsgFlags, nsIMsgWindowD msgWindow, nsIMsgCopyServiceListenerD listener){
    nsresult __result = inner.CopyFileMessage(fileSpec ? cast(nsIFileSpec)fileSpec : null, msgToReplace ? cast(nsIMsgDBHdr)msgToReplace : null, isDraft, newMsgFlags, msgWindow ? cast(nsIMsgWindow)msgWindow : null, listener ? cast(nsIMsgCopyServiceListener)listener : null);
    CheckException(__result);
  }

  /* void acquireSemaphore (in nsISupports semHolder); */
  void AcquireSemaphore(nsISupportsD semHolder){
    nsresult __result = inner.AcquireSemaphore(semHolder ? cast(nsISupports)semHolder : null);
    CheckException(__result);
  }

  /* void releaseSemaphore (in nsISupports semHolder); */
  void ReleaseSemaphore(nsISupportsD semHolder){
    nsresult __result = inner.ReleaseSemaphore(semHolder ? cast(nsISupports)semHolder : null);
    CheckException(__result);
  }

  /* boolean testSemaphore (in nsISupports semHolder); */
  PRBool TestSemaphore(nsISupportsD semHolder){
    PRBool _retval;
    nsresult __result = inner.TestSemaphore(semHolder ? cast(nsISupports)semHolder : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* readonly attribute boolean locked; */
  PRBool Locked(){
    PRBool value;
    nsresult __result = inner.GetLocked(&value);
    CheckException(__result);
    return value;
  }

  /* void getNewMessages (in nsIMsgWindow aWindow, in nsIUrlListener aListener); */
  void GetNewMessages(nsIMsgWindowD aWindow, nsIUrlListenerD aListener){
    nsresult __result = inner.GetNewMessages(aWindow ? cast(nsIMsgWindow)aWindow : null, aListener ? cast(nsIUrlListener)aListener : null);
    CheckException(__result);
  }

  /**
   * write out summary data for this folder
   * to the given folder cache (i.e. panacea.dat)
   */
  /* void writeToFolderCache (in nsIMsgFolderCache folderCache, in boolean deep); */
  void WriteToFolderCache(nsIMsgFolderCacheD folderCache, PRBool deep){
    nsresult __result = inner.WriteToFolderCache(folderCache ? cast(nsIMsgFolderCache)folderCache : null, deep);
    CheckException(__result);
  }

  /**
   * the charset of this folder
   */
  /* attribute string charset; */
  char* Charset(){
    char* value;
    nsresult __result = inner.GetCharset(&value);
    CheckException(__result);
    return value;
  }
  void Charset(char* aCharset){
    nsresult __result = inner.SetCharset(aCharset);
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

  /* attribute unsigned long biffState; */
  PRUint32 BiffState(){
    PRUint32 value;
    nsresult __result = inner.GetBiffState(&value);
    CheckException(__result);
    return value;
  }
  void BiffState(PRUint32 aBiffState){
    nsresult __result = inner.SetBiffState(aBiffState);
    CheckException(__result);
  }

  /**
   * the number of new messages since this folder was last visited
   * @param deep if true, descends into all subfolders and gets a grand total
   */
  /* long getNumNewMessages (in boolean deep); */
  PRInt32 GetNumNewMessages(PRBool deep){
    PRInt32 _retval;
    nsresult __result = inner.GetNumNewMessages(deep, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setNumNewMessages (in long numNewMessages); */
  void SetNumNewMessages(PRInt32 numNewMessages){
    nsresult __result = inner.SetNumNewMessages(numNewMessages);
    CheckException(__result);
  }

  /**
   * verbose description of the new messages in this folder
   */
  /* readonly attribute wstring newMessagesNotificationDescription; */
  PRUnichar* NewMessagesNotificationDescription(){
    PRUnichar* value;
    nsresult __result = inner.GetNewMessagesNotificationDescription(&value);
    CheckException(__result);
    return value;
  }

  /* attribute boolean gettingNewMessages; */
  PRBool GettingNewMessages(){
    PRBool value;
    nsresult __result = inner.GetGettingNewMessages(&value);
    CheckException(__result);
    return value;
  }
  void GettingNewMessages(PRBool aGettingNewMessages){
    nsresult __result = inner.SetGettingNewMessages(aGettingNewMessages);
    CheckException(__result);
  }

  /**
   * local path of this folder
   */
  /* attribute nsIFileSpec path; */
  nsIFileSpecD  Path(){
    nsIFileSpec value;
    nsresult __result = inner.GetPath(&value);
    CheckException(__result);
    return new nsIFileSpecD(value);
  }
  void Path(nsIFileSpecD  aPath){
    nsIFileSpec value;
    nsresult __result = inner.SetPath(value);
    CheckException(__result);
  }

  /* attribute nsILocalFile filePath; */
  nsILocalFileD  FilePath(){
    nsILocalFile value;
    nsresult __result = inner.GetFilePath(&value);
    CheckException(__result);
    return new nsILocalFileD(value);
  }
  void FilePath(nsILocalFileD  aFilePath){
    nsILocalFile value;
    nsresult __result = inner.SetFilePath(value);
    CheckException(__result);
  }

  /* readonly attribute string baseMessageURI; */
  char* BaseMessageURI(){
    char* value;
    nsresult __result = inner.GetBaseMessageURI(&value);
    CheckException(__result);
    return value;
  }

  /* string generateMessageURI (in nsMsgKey msgKey); */
  char* GenerateMessageURI(nsMsgKey msgKey){
    char* _retval;
    nsresult __result = inner.GenerateMessageURI(msgKey, &_retval);
    CheckException(__result);
    return _retval;
  }

  enum { nsMsgDispositionState_None = -1 }

  enum { nsMsgDispositionState_Replied = 0 }

  enum { nsMsgDispositionState_Forwarded = 1 }

  /* void addMessageDispositionState (in nsIMsgDBHdr aMessage, in nsMsgDispositionState aDispositionFlag); */
  void AddMessageDispositionState(nsIMsgDBHdrD aMessage, nsMsgDispositionState aDispositionFlag){
    nsresult __result = inner.AddMessageDispositionState(aMessage ? cast(nsIMsgDBHdr)aMessage : null, aDispositionFlag);
    CheckException(__result);
  }

  /* void markMessagesRead (in nsISupportsArray messages, in boolean markRead); */
  void MarkMessagesRead(nsISupportsArrayD messages, PRBool markRead){
    nsresult __result = inner.MarkMessagesRead(messages ? cast(nsISupportsArray)messages : null, markRead);
    CheckException(__result);
  }

  /* void markAllMessagesRead (); */
  void MarkAllMessagesRead(){
    nsresult __result = inner.MarkAllMessagesRead();
    CheckException(__result);
  }

  /* void markMessagesFlagged (in nsISupportsArray messages, in boolean markFlagged); */
  void MarkMessagesFlagged(nsISupportsArrayD messages, PRBool markFlagged){
    nsresult __result = inner.MarkMessagesFlagged(messages ? cast(nsISupportsArray)messages : null, markFlagged);
    CheckException(__result);
  }

  /* void markThreadRead (in nsIMsgThread thread); */
  void MarkThreadRead(nsIMsgThreadD thread){
    nsresult __result = inner.MarkThreadRead(thread ? cast(nsIMsgThread)thread : null);
    CheckException(__result);
  }

  /* void setLabelForMessages (in nsISupportsArray messages, in nsMsgLabelValue label); */
  void SetLabelForMessages(nsISupportsArrayD messages, nsMsgLabelValue label){
    nsresult __result = inner.SetLabelForMessages(messages ? cast(nsISupportsArray)messages : null, label);
    CheckException(__result);
  }

  /* nsIMsgDatabase getMsgDatabase (in nsIMsgWindow msgWindow); */
  nsIMsgDatabaseD  GetMsgDatabase(nsIMsgWindowD msgWindow){
    nsIMsgDatabase _retval;
    nsresult __result = inner.GetMsgDatabase(msgWindow ? cast(nsIMsgWindow)msgWindow : null, &_retval);
    CheckException(__result);
    return new nsIMsgDatabaseD(_retval);
  }

  /* void setMsgDatabase (in nsIMsgDatabase msgDatabase); */
  void SetMsgDatabase(nsIMsgDatabaseD msgDatabase){
    nsresult __result = inner.SetMsgDatabase(msgDatabase ? cast(nsIMsgDatabase)msgDatabase : null);
    CheckException(__result);
  }

  /* nsIMsgDatabase getDBFolderInfoAndDB (out nsIDBFolderInfo folderInfo); */
  nsIMsgDatabaseD  GetDBFolderInfoAndDB(out nsIDBFolderInfoD folderInfo){
    nsIDBFolderInfo _folderInfo;
    nsIMsgDatabase _retval;
    nsresult __result = inner.GetDBFolderInfoAndDB(&_folderInfo, &_retval);
    CheckException(__result);
    folderInfo = _folderInfo ? new nsIDBFolderInfoD(_folderInfo) : null;
    return new nsIMsgDatabaseD(_retval);
  }

  /* nsIMsgDBHdr GetMessageHeader (in nsMsgKey msgKey); */
  nsIMsgDBHdrD  GetMessageHeader(nsMsgKey msgKey){
    nsIMsgDBHdr _retval;
    nsresult __result = inner.GetMessageHeader(msgKey, &_retval);
    CheckException(__result);
    return new nsIMsgDBHdrD(_retval);
  }

  /* readonly attribute boolean supportsOffline; */
  PRBool SupportsOffline(){
    PRBool value;
    nsresult __result = inner.GetSupportsOffline(&value);
    CheckException(__result);
    return value;
  }

  /* boolean shouldStoreMsgOffline (in nsMsgKey msgKey); */
  PRBool ShouldStoreMsgOffline(nsMsgKey msgKey){
    PRBool _retval;
    nsresult __result = inner.ShouldStoreMsgOffline(msgKey, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean hasMsgOffline (in nsMsgKey msgKey); */
  PRBool HasMsgOffline(nsMsgKey msgKey){
    PRBool _retval;
    nsresult __result = inner.HasMsgOffline(msgKey, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsIInputStream getOfflineFileStream (in nsMsgKey msgKey, out PRUint32 offset, out PRUint32 size); */
  nsIInputStreamD  GetOfflineFileStream(nsMsgKey msgKey, out PRUint32 offset, out PRUint32 size){
    nsIInputStream _retval;
    nsresult __result = inner.GetOfflineFileStream(msgKey, &offset, &size, &_retval);
    CheckException(__result);
    return new nsIInputStreamD(_retval);
  }

  /* readonly attribute nsIOutputStream offlineStoreOutputStream; */
  nsIOutputStreamD  OfflineStoreOutputStream(){
    nsIOutputStream value;
    nsresult __result = inner.GetOfflineStoreOutputStream(&value);
    CheckException(__result);
    return new nsIOutputStreamD(value);
  }

  /* readonly attribute nsIInputStream offlineStoreInputStream; */
  nsIInputStreamD  OfflineStoreInputStream(){
    nsIInputStream value;
    nsresult __result = inner.GetOfflineStoreInputStream(&value);
    CheckException(__result);
    return new nsIInputStreamD(value);
  }

  /* void DownloadMessagesForOffline (in nsISupportsArray messages, in nsIMsgWindow window); */
  void DownloadMessagesForOffline(nsISupportsArrayD messages, nsIMsgWindowD window){
    nsresult __result = inner.DownloadMessagesForOffline(messages ? cast(nsISupportsArray)messages : null, window ? cast(nsIMsgWindow)window : null);
    CheckException(__result);
  }

  /* nsIMsgFolder getChildWithURI (in string uri, in boolean deep, in boolean caseInsensitive); */
  nsIMsgFolderD  GetChildWithURI(char*uri, PRBool deep, PRBool caseInsensitive){
    nsIMsgFolder _retval;
    nsresult __result = inner.GetChildWithURI(uri, deep, caseInsensitive, &_retval);
    CheckException(__result);
    return new nsIMsgFolderD(_retval);
  }

  /* void downloadAllForOffline (in nsIUrlListener listener, in nsIMsgWindow window); */
  void DownloadAllForOffline(nsIUrlListenerD listener, nsIMsgWindowD window){
    nsresult __result = inner.DownloadAllForOffline(listener ? cast(nsIUrlListener)listener : null, window ? cast(nsIMsgWindow)window : null);
    CheckException(__result);
  }

  /**
   *  Turn notifications on/off for various notification types. Currently only 
   *  supporting allMessageCountNotifications which refers to both total and 
   *  unread message counts.
   */
  enum { allMessageCountNotifications = 0U }

  /* void enableNotifications (in long notificationType, in boolean enable, in boolean dbBatching); */
  void EnableNotifications(PRInt32 notificationType, PRBool enable, PRBool dbBatching){
    nsresult __result = inner.EnableNotifications(notificationType, enable, dbBatching);
    CheckException(__result);
  }

  /* boolean isCommandEnabled (in string command); */
  PRBool IsCommandEnabled(char*command){
    PRBool _retval;
    nsresult __result = inner.IsCommandEnabled(command, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean matchOrChangeFilterDestination (in nsIMsgFolder folder, in boolean caseInsensitive); */
  PRBool MatchOrChangeFilterDestination(nsIMsgFolderD folder, PRBool caseInsensitive){
    PRBool _retval;
    nsresult __result = inner.MatchOrChangeFilterDestination(folder ? cast(nsIMsgFolder)folder : null, caseInsensitive, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean confirmFolderDeletionForFilter (in nsIMsgWindow msgWindow); */
  PRBool ConfirmFolderDeletionForFilter(nsIMsgWindowD msgWindow){
    PRBool _retval;
    nsresult __result = inner.ConfirmFolderDeletionForFilter(msgWindow ? cast(nsIMsgWindow)msgWindow : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void alertFilterChanged (in nsIMsgWindow msgWindow); */
  void AlertFilterChanged(nsIMsgWindowD msgWindow){
    nsresult __result = inner.AlertFilterChanged(msgWindow ? cast(nsIMsgWindow)msgWindow : null);
    CheckException(__result);
  }

  /* void throwAlertMsg (in string msgName, in nsIMsgWindow msgWindow); */
  void ThrowAlertMsg(char*msgName, nsIMsgWindowD msgWindow){
    nsresult __result = inner.ThrowAlertMsg(msgName, msgWindow ? cast(nsIMsgWindow)msgWindow : null);
    CheckException(__result);
  }

  /* wstring getStringWithFolderNameFromBundle (in string msgName); */
  PRUnichar* GetStringWithFolderNameFromBundle(char*msgName){
    PRUnichar* _retval;
    nsresult __result = inner.GetStringWithFolderNameFromBundle(msgName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void notifyCompactCompleted (); */
  void NotifyCompactCompleted(){
    nsresult __result = inner.NotifyCompactCompleted();
    CheckException(__result);
  }

  /* long compareSortKeys (in nsIMsgFolder msgFolder); */
  PRInt32 CompareSortKeys(nsIMsgFolderD msgFolder){
    PRInt32 _retval;
    nsresult __result = inner.CompareSortKeys(msgFolder ? cast(nsIMsgFolder)msgFolder : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] void getSortKey (out octet_ptr key, out unsigned long length); */
  void GetSortKey(out PRUint8 * key, out PRUint32 length){
    nsresult __result = inner.GetSortKey(&key, &length);
    CheckException(__result);
  }

  /* attribute nsIMsgRetentionSettings retentionSettings; */
  nsIMsgRetentionSettingsD  RetentionSettings(){
    nsIMsgRetentionSettings value;
    nsresult __result = inner.GetRetentionSettings(&value);
    CheckException(__result);
    return new nsIMsgRetentionSettingsD(value);
  }
  void RetentionSettings(nsIMsgRetentionSettingsD  aRetentionSettings){
    nsIMsgRetentionSettings value;
    nsresult __result = inner.SetRetentionSettings(value);
    CheckException(__result);
  }

  /* attribute nsIMsgDownloadSettings downloadSettings; */
  nsIMsgDownloadSettingsD  DownloadSettings(){
    nsIMsgDownloadSettings value;
    nsresult __result = inner.GetDownloadSettings(&value);
    CheckException(__result);
    return new nsIMsgDownloadSettingsD(value);
  }
  void DownloadSettings(nsIMsgDownloadSettingsD  aDownloadSettings){
    nsIMsgDownloadSettings value;
    nsresult __result = inner.SetDownloadSettings(value);
    CheckException(__result);
  }

  /* boolean callFilterPlugins (in nsIMsgWindow aMsgWindow); */
  PRBool CallFilterPlugins(nsIMsgWindowD aMsgWindow){
    PRBool _retval;
    nsresult __result = inner.CallFilterPlugins(aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * used for order in the folder pane, folder pickers, etc.
   */
  /* attribute long sortOrder; */
  PRInt32 SortOrder(){
    PRInt32 value;
    nsresult __result = inner.GetSortOrder(&value);
    CheckException(__result);
    return value;
  }
  void SortOrder(PRInt32 aSortOrder){
    nsresult __result = inner.SetSortOrder(aSortOrder);
    CheckException(__result);
  }

  /** 
   * used to determine if we persist the close / open state of this folder or not
   */
  /* [noscript] readonly attribute boolean persistElided; */
  PRBool PersistElided(){
    PRBool value;
    nsresult __result = inner.GetPersistElided(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsIMsgFolder parentMsgFolder; */
  nsIMsgFolderD  ParentMsgFolder(){
    nsIMsgFolder value;
    nsresult __result = inner.GetParentMsgFolder(&value);
    CheckException(__result);
    return new nsIMsgFolderD(value);
  }

  /* attribute nsIDBFolderInfo dBTransferInfo; */
  nsIDBFolderInfoD  DBTransferInfo(){
    nsIDBFolderInfo value;
    nsresult __result = inner.GetDBTransferInfo(&value);
    CheckException(__result);
    return new nsIDBFolderInfoD(value);
  }
  void DBTransferInfo(nsIDBFolderInfoD  aDBTransferInfo){
    nsIDBFolderInfo value;
    nsresult __result = inner.SetDBTransferInfo(value);
    CheckException(__result);
  }

  /* string getStringProperty (in string propertyName); */
  char* GetStringProperty(char*propertyName){
    char* _retval;
    nsresult __result = inner.GetStringProperty(propertyName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setStringProperty (in string propertyName, in string propertyValue); */
  void SetStringProperty(char*propertyName, char*propertyValue){
    nsresult __result = inner.SetStringProperty(propertyName, propertyValue);
    CheckException(__result);
  }

  /* attribute nsMsgKey lastMessageLoaded; */
  nsMsgKey LastMessageLoaded(){
    nsMsgKey value;
    nsresult __result = inner.GetLastMessageLoaded(&value);
    CheckException(__result);
    return value;
  }
  void LastMessageLoaded(nsMsgKey aLastMessageLoaded){
    nsMsgKey value;
    nsresult __result = inner.SetLastMessageLoaded(value);
    CheckException(__result);
  }

  /* readonly attribute string URI; */
  char* URI(){
    char* value;
    nsresult __result = inner.GetURI(&value);
    CheckException(__result);
    return value;
  }

  /* attribute wstring name; */
  PRUnichar* Name(){
    PRUnichar* value;
    nsresult __result = inner.GetName(&value);
    CheckException(__result);
    return value;
  }
  void Name(PRUnichar* aName){
    nsresult __result = inner.SetName(aName);
    CheckException(__result);
  }

  /* attribute wstring prettyName; */
  PRUnichar* PrettyName(){
    PRUnichar* value;
    nsresult __result = inner.GetPrettyName(&value);
    CheckException(__result);
    return value;
  }
  void PrettyName(PRUnichar* aPrettyName){
    nsresult __result = inner.SetPrettyName(aPrettyName);
    CheckException(__result);
  }

  /* readonly attribute wstring abbreviatedName; */
  PRUnichar* AbbreviatedName(){
    PRUnichar* value;
    nsresult __result = inner.GetAbbreviatedName(&value);
    CheckException(__result);
    return value;
  }

  /* nsISupports getChildNamed (in wstring name); */
  nsISupportsD  GetChildNamed(PRUnichar*name){
    nsISupports _retval;
    nsresult __result = inner.GetChildNamed(name, &_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

  /* attribute nsIMsgFolder parent; */
  nsIMsgFolderD  Parent(){
    nsIMsgFolder value;
    nsresult __result = inner.GetParent(&value);
    CheckException(__result);
    return new nsIMsgFolderD(value);
  }
  void Parent(nsIMsgFolderD  aParent){
    nsIMsgFolder value;
    nsresult __result = inner.SetParent(value);
    CheckException(__result);
  }

  /* nsIEnumerator GetSubFolders (); */
  nsIEnumeratorD  GetSubFolders(){
    nsIEnumerator _retval;
    nsresult __result = inner.GetSubFolders(&_retval);
    CheckException(__result);
    return new nsIEnumeratorD(_retval);
  }

  /* readonly attribute boolean hasSubFolders; */
  PRBool HasSubFolders(){
    PRBool value;
    nsresult __result = inner.GetHasSubFolders(&value);
    CheckException(__result);
    return value;
  }

  /* void AddFolderListener (in nsIFolderListener listener); */
  void AddFolderListener(nsIFolderListenerD listener){
    nsresult __result = inner.AddFolderListener(listener ? cast(nsIFolderListener)listener : null);
    CheckException(__result);
  }

  /* void RemoveFolderListener (in nsIFolderListener listener); */
  void RemoveFolderListener(nsIFolderListenerD listener){
    nsresult __result = inner.RemoveFolderListener(listener ? cast(nsIFolderListener)listener : null);
    CheckException(__result);
  }

  /* nsIMsgFolder FindSubFolder (in ACString escapedSubFolderName); */
  nsIMsgFolderD  FindSubFolder(char[] escapedSubFolderName){
    scope auto _escapedSubFolderName = new ACString(escapedSubFolderName);
    nsIMsgFolder _retval;
    nsresult __result = inner.FindSubFolder(cast(nsACString*)_escapedSubFolderName, &_retval);
    CheckException(__result);
    return new nsIMsgFolderD(_retval);
  }

  /* void NotifyPropertyChanged (in nsIAtom property, in string oldValue, in string newValue); */
  void NotifyPropertyChanged(nsIAtomD property, char*oldValue, char*newValue){
    nsresult __result = inner.NotifyPropertyChanged(property ? cast(nsIAtom)property : null, oldValue, newValue);
    CheckException(__result);
  }

  /* void NotifyIntPropertyChanged (in nsIAtom property, in long oldValue, in long newValue); */
  void NotifyIntPropertyChanged(nsIAtomD property, PRInt32 oldValue, PRInt32 newValue){
    nsresult __result = inner.NotifyIntPropertyChanged(property ? cast(nsIAtom)property : null, oldValue, newValue);
    CheckException(__result);
  }

  /* void NotifyBoolPropertyChanged (in nsIAtom property, in boolean oldValue, in boolean newValue); */
  void NotifyBoolPropertyChanged(nsIAtomD property, PRBool oldValue, PRBool newValue){
    nsresult __result = inner.NotifyBoolPropertyChanged(property ? cast(nsIAtom)property : null, oldValue, newValue);
    CheckException(__result);
  }

  /* void NotifyPropertyFlagChanged (in nsIMsgDBHdr item, in nsIAtom property, in unsigned long oldValue, in unsigned long newValue); */
  void NotifyPropertyFlagChanged(nsIMsgDBHdrD item, nsIAtomD property, PRUint32 oldValue, PRUint32 newValue){
    nsresult __result = inner.NotifyPropertyFlagChanged(item ? cast(nsIMsgDBHdr)item : null, property ? cast(nsIAtom)property : null, oldValue, newValue);
    CheckException(__result);
  }

  /* void NotifyUnicharPropertyChanged (in nsIAtom property, in wstring oldValue, in wstring newValue); */
  void NotifyUnicharPropertyChanged(nsIAtomD property, PRUnichar*oldValue, PRUnichar*newValue){
    nsresult __result = inner.NotifyUnicharPropertyChanged(property ? cast(nsIAtom)property : null, oldValue, newValue);
    CheckException(__result);
  }

  /* void NotifyItemAdded (in nsISupports item); */
  void NotifyItemAdded(nsISupportsD item){
    nsresult __result = inner.NotifyItemAdded(item ? cast(nsISupports)item : null);
    CheckException(__result);
  }

  /* void NotifyItemRemoved (in nsISupports item); */
  void NotifyItemRemoved(nsISupportsD item){
    nsresult __result = inner.NotifyItemRemoved(item ? cast(nsISupports)item : null);
    CheckException(__result);
  }

  /* void NotifyFolderEvent (in nsIAtom event); */
  void NotifyFolderEvent(nsIAtomD event){
    nsresult __result = inner.NotifyFolderEvent(event ? cast(nsIAtom)event : null);
    CheckException(__result);
  }

  /* void ListDescendents (in nsISupportsArray descendents); */
  void ListDescendents(nsISupportsArrayD descendents){
    nsresult __result = inner.ListDescendents(descendents ? cast(nsISupportsArray)descendents : null);
    CheckException(__result);
  }

  /* void Shutdown (in boolean shutdownChildren); */
  void Shutdown(PRBool shutdownChildren){
    nsresult __result = inner.Shutdown(shutdownChildren);
    CheckException(__result);
  }

  /* readonly attribute boolean inVFEditSearchScope; */
  PRBool InVFEditSearchScope(){
    PRBool value;
    nsresult __result = inner.GetInVFEditSearchScope(&value);
    CheckException(__result);
    return value;
  }

  /* void setInVFEditSearchScope (in boolean aSearchThisFolder, in boolean aSetOnSubFolders); */
  void SetInVFEditSearchScope(PRBool aSearchThisFolder, PRBool aSetOnSubFolders){
    nsresult __result = inner.SetInVFEditSearchScope(aSearchThisFolder, aSetOnSubFolders);
    CheckException(__result);
  }

  /* void copyDataToOutputStreamForAppend (in nsIInputStream aIStream, in long aLength, in nsIOutputStream outputStream); */
  void CopyDataToOutputStreamForAppend(nsIInputStreamD aIStream, PRInt32 aLength, nsIOutputStreamD outputStream){
    nsresult __result = inner.CopyDataToOutputStreamForAppend(aIStream ? cast(nsIInputStream)aIStream : null, aLength, outputStream ? cast(nsIOutputStream)outputStream : null);
    CheckException(__result);
  }

  /* void copyDataDone (); */
  void CopyDataDone(){
    nsresult __result = inner.CopyDataDone();
    CheckException(__result);
  }

  /* void setJunkScoreForMessages (in nsISupportsArray aMessages, in string aJunkScore); */
  void SetJunkScoreForMessages(nsISupportsArrayD aMessages, char*aJunkScore){
    nsresult __result = inner.SetJunkScoreForMessages(aMessages ? cast(nsISupportsArray)aMessages : null, aJunkScore);
    CheckException(__result);
  }

  /* void applyRetentionSettings (); */
  void ApplyRetentionSettings(){
    nsresult __result = inner.ApplyRetentionSettings();
    CheckException(__result);
  }

  /** 
   * Get the beginning of the message bodies for the passed in keys and store 
   * them in the msg hdr property "preview". This is intended for 
   * new mail alerts, title tips on folders with new messages, and perhaps 
   * titletips/message preview in the thread pane.
   *
   * @param aKeysToFetch   keys of msgs to fetch
   * @param aNumKeys       number of keys to fetch
   * @param aLocalOnly     whether to fetch msgs from server (imap msgs might 
   *                       be in memory cache from junk filter)
   * @param aUrlListener   url listener to notify if we run url to fetch msgs
   *
   * @result aAsyncResults if true, we ran a url to fetch one or more of msg bodies
   *
   */
  /* void fetchMsgPreviewText ([array, size_is (aNumKeys)] in nsMsgKey aKeysToFetch, in unsigned long aNumKeys, in boolean aLocalOnly, in nsIUrlListener aUrlListener, out boolean aAsyncResults); */
  void FetchMsgPreviewText(nsMsgKey *aKeysToFetch, PRUint32 aNumKeys, PRBool aLocalOnly, nsIUrlListenerD aUrlListener, out PRBool aAsyncResults){
    nsresult __result = inner.FetchMsgPreviewText(aKeysToFetch, aNumKeys, aLocalOnly, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, &aAsyncResults);
    CheckException(__result);
  }

  /* void addKeywordToMessages (in nsISupportsArray aMessages, in string aKeyword); */
  void AddKeywordToMessages(nsISupportsArrayD aMessages, char*aKeyword){
    nsresult __result = inner.AddKeywordToMessages(aMessages ? cast(nsISupportsArray)aMessages : null, aKeyword);
    CheckException(__result);
  }

  /* void removeKeywordFromMessages (in nsISupportsArray aMessages, in string aKeyword); */
  void RemoveKeywordFromMessages(nsISupportsArrayD aMessages, char*aKeyword){
    nsresult __result = inner.RemoveKeywordFromMessages(aMessages ? cast(nsISupportsArray)aMessages : null, aKeyword);
    CheckException(__result);
  }

  /* ACString getMsgTextFromStream (in nsIMsgDBHdr aMsgHdr, in nsIInputStream aStream, in long aBytesToRead, in long aMaxOutputLen); */
  char[] GetMsgTextFromStream(nsIMsgDBHdrD aMsgHdr, nsIInputStreamD aStream, PRInt32 aBytesToRead, PRInt32 aMaxOutputLen){
    scope auto _retval = new ACString;
    nsresult __result = inner.GetMsgTextFromStream(aMsgHdr ? cast(nsIMsgDBHdr)aMsgHdr : null, aStream ? cast(nsIInputStream)aStream : null, aBytesToRead, aMaxOutputLen, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* readonly attribute nsIMsgIdentity customIdentity; */
  nsIMsgIdentityD  CustomIdentity(){
    nsIMsgIdentity value;
    nsresult __result = inner.GetCustomIdentity(&value);
    CheckException(__result);
    return new nsIMsgIdentityD(value);
  }

private:
  nsIMsgFolder inner;

}

