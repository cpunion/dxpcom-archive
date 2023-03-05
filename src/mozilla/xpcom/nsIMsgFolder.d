/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgFolder.idl
 */

module mozilla.xpcom.nsIMsgFolder;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsICollection;
public import mozilla.xpcom.nsIFolderListener;
public import mozilla.xpcom.nsIMsgThread;
public import mozilla.xpcom.nsIMsgIncomingServer;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.xpcom.nsIMsgCopyServiceListener;
public import mozilla.xpcom.nsIUrlListener;
public import mozilla.xpcom.nsIEnumerator;
public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.xpcom.nsIMsgHdr;

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */

public import mozilla.xpcom.nsIMsgDatabase; /* forward declaration */

public import mozilla.xpcom.nsIDBFolderInfo; /* forward declaration */

public import mozilla.xpcom.nsIMsgFilterList; /* forward declaration */

public import mozilla.xpcom.nsIMsgFolderCacheElement; /* forward declaration */

public import mozilla.xpcom.nsITransport; /* forward declaration */

public import mozilla.xpcom.nsIFileSpec; /* forward declaration */

public import mozilla.xpcom.nsIOutputStream; /* forward declaration */

public import mozilla.xpcom.nsIInputStream; /* forward declaration */

public import mozilla.xpcom.nsILocalFile; /* forward declaration */

public import mozilla.xpcom.nsIMsgIdentity; /* forward declaration */

alias PRInt32 nsMsgBiffState;

alias PRInt32 nsMsgDispositionState;


/* starting interface:    nsIMsgFolder */
const char[] NS_IMSGFOLDER_IID_STR = "4c4ecec2-4bc7-4c9a-82ce-db74a28f9e03";

const nsIID NS_IMSGFOLDER_IID= 
  {0x4c4ecec2, 0x4bc7, 0x4c9a, 
    [ 0x82, 0xce, 0xdb, 0x74, 0xa2, 0x8f, 0x9e, 0x03 ]};

extern(Windows)
interface nsIMsgFolder : nsICollection {
  static const char[] IID_STR = NS_IMSGFOLDER_IID_STR;
  static const nsIID IID = NS_IMSGFOLDER_IID;

  enum { nsMsgBiffState_NewMail = 0 };

  enum { nsMsgBiffState_NoMail = 1 };

  enum { nsMsgBiffState_Unknown = 2 };

  /* nsISimpleEnumerator getMessages (in nsIMsgWindow aMsgWindow); */
  nsresult GetMessages(nsIMsgWindow aMsgWindow, nsISimpleEnumerator *_retval);

  /* void startFolderLoading (); */
  nsresult StartFolderLoading();

  /* void endFolderLoading (); */
  nsresult EndFolderLoading();

  /* void updateFolder (in nsIMsgWindow aWindow); */
  nsresult UpdateFolder(nsIMsgWindow aWindow);

  /* readonly attribute wstring prettiestName; */
  nsresult GetPrettiestName(PRUnichar * *aPrettiestName);

  /**
   * URL for this folder
   */
  /* readonly attribute string folderURL; */
  nsresult GetFolderURL(char * *aFolderURL);

  /**
   * should probably move to the server
   */
  /* readonly attribute boolean showDeletedMessages; */
  nsresult GetShowDeletedMessages(PRBool *aShowDeletedMessages);

  /**
   * this folder's parent server
   */
  /* readonly attribute nsIMsgIncomingServer server; */
  nsresult GetServer(nsIMsgIncomingServer  *aServer);

  /**
   * is this folder the "phantom" server folder?
   */
  /* readonly attribute boolean isServer; */
  nsresult GetIsServer(PRBool *aIsServer);

  /* readonly attribute boolean canSubscribe; */
  nsresult GetCanSubscribe(PRBool *aCanSubscribe);

  /* readonly attribute boolean canFileMessages; */
  nsresult GetCanFileMessages(PRBool *aCanFileMessages);

  /* readonly attribute boolean noSelect; */
  nsresult GetNoSelect(PRBool *aNoSelect);

  /* readonly attribute boolean imapShared; */
  nsresult GetImapShared(PRBool *aImapShared);

  /* readonly attribute boolean canDeleteMessages; */
  nsresult GetCanDeleteMessages(PRBool *aCanDeleteMessages);

  /**
   * does this folder allow subfolders?
   * for example, newsgroups cannot have subfolders, and the INBOX
   * on some IMAP servers cannot have subfolders
   */
  /* readonly attribute boolean canCreateSubfolders; */
  nsresult GetCanCreateSubfolders(PRBool *aCanCreateSubfolders);

  /**
   * can you change the name of this folder?
   * for example, newsgroups
   * and some special folders can't be renamed
   */
  /* readonly attribute boolean canRename; */
  nsresult GetCanRename(PRBool *aCanRename);

  /* readonly attribute boolean canCompact; */
  nsresult GetCanCompact(PRBool *aCanCompact);

  /**
   * the phantom server folder
   */
  /* readonly attribute nsIMsgFolder rootFolder; */
  nsresult GetRootFolder(nsIMsgFolder  *aRootFolder);

  /**
   * function to get the filter list on folder's server 
   * (or in the case of news, the filter list for this newsgroup)'
   */
  /* nsIMsgFilterList getFilterList (in nsIMsgWindow msgWindow); */
  nsresult GetFilterList(nsIMsgWindow msgWindow, nsIMsgFilterList *_retval);

  /* void setFilterList (in nsIMsgFilterList filterList); */
  nsresult SetFilterList(nsIMsgFilterList filterList);

  /* void ForceDBClosed (); */
  nsresult ForceDBClosed();

  /* void Delete (); */
  nsresult Delete();

  /* void deleteSubFolders (in nsISupportsArray folders, in nsIMsgWindow msgWindow); */
  nsresult DeleteSubFolders(nsISupportsArray folders, nsIMsgWindow msgWindow);

  /* void propagateDelete (in nsIMsgFolder folder, in boolean deleteStorage, in nsIMsgWindow msgWindow); */
  nsresult PropagateDelete(nsIMsgFolder folder, PRBool deleteStorage, nsIMsgWindow msgWindow);

  /* void recursiveDelete (in boolean deleteStorage, in nsIMsgWindow msgWindow); */
  nsresult RecursiveDelete(PRBool deleteStorage, nsIMsgWindow msgWindow);

  /* void createSubfolder (in wstring folderName, in nsIMsgWindow msgWindow); */
  nsresult CreateSubfolder(PRUnichar *folderName, nsIMsgWindow msgWindow);

  /* nsIMsgFolder addSubfolder (in AString folderName); */
  nsresult AddSubfolder(nsAString * folderName, nsIMsgFolder *_retval);

  /* void createStorageIfMissing (in nsIUrlListener urlListener); */
  nsresult CreateStorageIfMissing(nsIUrlListener urlListener);

  /* void compact (in nsIUrlListener aListener, in nsIMsgWindow aMsgWindow); */
  nsresult Compact(nsIUrlListener aListener, nsIMsgWindow aMsgWindow);

  /* void compactAll (in nsIUrlListener aListener, in nsIMsgWindow aMsgWindow, in nsISupportsArray aFolderArray, in boolean aCompactOfflineAlso, in nsISupportsArray aOfflineFolderArray); */
  nsresult CompactAll(nsIUrlListener aListener, nsIMsgWindow aMsgWindow, nsISupportsArray aFolderArray, PRBool aCompactOfflineAlso, nsISupportsArray aOfflineFolderArray);

  /* void compactAllOfflineStores (in nsIMsgWindow aMsgWindow, in nsISupportsArray aOfflineFolderArray); */
  nsresult CompactAllOfflineStores(nsIMsgWindow aMsgWindow, nsISupportsArray aOfflineFolderArray);

  /* void emptyTrash (in nsIMsgWindow aMsgWindow, in nsIUrlListener aListener); */
  nsresult EmptyTrash(nsIMsgWindow aMsgWindow, nsIUrlListener aListener);

  /**
   * change the name of the folder
   *
   * @param name the new name of the folder
   */
  /* void rename (in wstring name, in nsIMsgWindow msgWindow); */
  nsresult Rename(PRUnichar *name, nsIMsgWindow msgWindow);

  /* void renameSubFolders (in nsIMsgWindow msgWindow, in nsIMsgFolder oldFolder); */
  nsresult RenameSubFolders(nsIMsgWindow msgWindow, nsIMsgFolder oldFolder);

  /**
   * looks in immediate children of this folder for the given name
   *
   * @param name the name of the target subfolder
   */
  /* boolean containsChildNamed (in wstring name); */
  nsresult ContainsChildNamed(PRUnichar *name, PRBool *_retval);

  /* boolean isAncestorOf (in nsIMsgFolder folder); */
  nsresult IsAncestorOf(nsIMsgFolder folder, PRBool *_retval);

  /* wstring generateUniqueSubfolderName (in wstring prefix, in nsIMsgFolder otherFolder); */
  nsresult GenerateUniqueSubfolderName(PRUnichar *prefix, nsIMsgFolder otherFolder, PRUnichar **_retval);

  /* void updateSummaryTotals (in boolean force); */
  nsresult UpdateSummaryTotals(PRBool force);

  /* void summaryChanged (); */
  nsresult SummaryChanged();

  /**
   * get the total number of unread messages in this folder,
   * or in all subfolders
   *
   * @param deep if true, descends into all subfolders and gets a grand total
   */
  /* long getNumUnread (in boolean deep); */
  nsresult GetNumUnread(PRBool deep, PRInt32 *_retval);

  /**
   * get the total number of messages in this folder,
   * or in all subfolders
   *
   * @param deep if true, descends into all subfolders and gets a grand total
   */
  /* long getTotalMessages (in boolean deep); */
  nsresult GetTotalMessages(PRBool deep, PRInt32 *_retval);

  /**
  * does this folder have new messages
  *
  */
  /* attribute boolean hasNewMessages; */
  nsresult GetHasNewMessages(PRBool *aHasNewMessages);
  nsresult SetHasNewMessages(PRBool aHasNewMessages);

  /**
   * return the first new message in the folder
   *
   */
  /* readonly attribute nsIMsgDBHdr firstNewMessage; */
  nsresult GetFirstNewMessage(nsIMsgDBHdr  *aFirstNewMessage);

  /**
   * clear new status flag of all of the new messages
   *
   */
  /* void clearNewMessages (); */
  nsresult ClearNewMessages();

  /* readonly attribute unsigned long expungedBytes; */
  nsresult GetExpungedBytes(PRUint32 *aExpungedBytes);

  /**
   * can this folder be deleted?
   * for example, special folders cannot be deleted
   */
  /* readonly attribute boolean deletable; */
  nsresult GetDeletable(PRBool *aDeletable);

  /**
   * should we be displaying recipients instead of the sender?
   * for example, in the Sent folder, recipients are more relevant
   * than the sender
   */
  /* readonly attribute boolean displayRecipients; */
  nsresult GetDisplayRecipients(PRBool *aDisplayRecipients);

  /**
   * used to determine if it will take a long time to download all
   * the headers in this folder - so that we can do folder notifications
   * synchronously instead of asynchronously
   */
  /* readonly attribute boolean manyHeadersToDownload; */
  nsresult GetManyHeadersToDownload(PRBool *aManyHeadersToDownload);

  /* readonly attribute boolean requiresCleanup; */
  nsresult GetRequiresCleanup(PRBool *aRequiresCleanup);

  /* void clearRequiresCleanup (); */
  nsresult ClearRequiresCleanup();

  /**
   * this should go into a news-specific interface
   */
  /* readonly attribute boolean knowsSearchNntpExtension; */
  nsresult GetKnowsSearchNntpExtension(PRBool *aKnowsSearchNntpExtension);

  /**
   * this should go into a news-specific interface
   */
  /* readonly attribute boolean allowsPosting; */
  nsresult GetAllowsPosting(PRBool *aAllowsPosting);

  /* readonly attribute string relativePathName; */
  nsresult GetRelativePathName(char * *aRelativePathName);

  /**
   * size of this folder on disk (not including .msf file)
   * for imap, it's the sum of the size of the messages
   */
  /* attribute unsigned long sizeOnDisk; */
  nsresult GetSizeOnDisk(PRUint32 *aSizeOnDisk);
  nsresult SetSizeOnDisk(PRUint32 aSizeOnDisk);

  /* readonly attribute string username; */
  nsresult GetUsername(char * *aUsername);

  /* readonly attribute string hostname; */
  nsresult GetHostname(char * *aHostname);

  /* void setFlag (in unsigned long flag); */
  nsresult SetFlag(PRUint32 flag);

  /* void clearFlag (in unsigned long flag); */
  nsresult ClearFlag(PRUint32 flag);

  /* boolean getFlag (in unsigned long flag); */
  nsresult GetFlag(PRUint32 flag, PRBool *_retval);

  /* void setPrefFlag (); */
  nsresult SetPrefFlag();

  /* void toggleFlag (in unsigned long flag); */
  nsresult ToggleFlag(PRUint32 flag);

  /* void onFlagChange (in unsigned long flag); */
  nsresult OnFlagChange(PRUint32 flag);

  /* attribute unsigned long flags; */
  nsresult GetFlags(PRUint32 *aFlags);
  nsresult SetFlags(PRUint32 aFlags);

  /* nsIMsgFolder getFoldersWithFlag (in unsigned long flags, in unsigned long resultsize, out unsigned long numFolders); */
  nsresult GetFoldersWithFlag(PRUint32 flags, PRUint32 resultsize, PRUint32 *numFolders, nsIMsgFolder *_retval);

  /* nsISupportsArray getAllFoldersWithFlag (in unsigned long aFlag); */
  nsresult GetAllFoldersWithFlag(PRUint32 aFlag, nsISupportsArray *_retval);

  /* void getExpansionArray (in nsISupportsArray expansionArray); */
  nsresult GetExpansionArray(nsISupportsArray expansionArray);

  /* string getUriForMsg (in nsIMsgDBHdr msgHdr); */
  nsresult GetUriForMsg(nsIMsgDBHdr msgHdr, char **_retval);

  /* void deleteMessages (in nsISupportsArray messages, in nsIMsgWindow msgWindow, in boolean deleteStorage, in boolean isMove, in nsIMsgCopyServiceListener listener, in boolean allowUndo); */
  nsresult DeleteMessages(nsISupportsArray messages, nsIMsgWindow msgWindow, PRBool deleteStorage, PRBool isMove, nsIMsgCopyServiceListener listener, PRBool allowUndo);

  /* void copyMessages (in nsIMsgFolder srcFolder, in nsISupportsArray messages, in boolean isMove, in nsIMsgWindow msgWindow, in nsIMsgCopyServiceListener listener, in boolean isFolder, in boolean allowUndo); */
  nsresult CopyMessages(nsIMsgFolder srcFolder, nsISupportsArray messages, PRBool isMove, nsIMsgWindow msgWindow, nsIMsgCopyServiceListener listener, PRBool isFolder, PRBool allowUndo);

  /* void copyFolder (in nsIMsgFolder srcFolder, in boolean isMoveFolder, in nsIMsgWindow msgWindow, in nsIMsgCopyServiceListener listener); */
  nsresult CopyFolder(nsIMsgFolder srcFolder, PRBool isMoveFolder, nsIMsgWindow msgWindow, nsIMsgCopyServiceListener listener);

  /* void copyFileMessage (in nsIFileSpec fileSpec, in nsIMsgDBHdr msgToReplace, in boolean isDraft, in unsigned long newMsgFlags, in nsIMsgWindow msgWindow, in nsIMsgCopyServiceListener listener); */
  nsresult CopyFileMessage(nsIFileSpec fileSpec, nsIMsgDBHdr msgToReplace, PRBool isDraft, PRUint32 newMsgFlags, nsIMsgWindow msgWindow, nsIMsgCopyServiceListener listener);

  /* void acquireSemaphore (in nsISupports semHolder); */
  nsresult AcquireSemaphore(nsISupports semHolder);

  /* void releaseSemaphore (in nsISupports semHolder); */
  nsresult ReleaseSemaphore(nsISupports semHolder);

  /* boolean testSemaphore (in nsISupports semHolder); */
  nsresult TestSemaphore(nsISupports semHolder, PRBool *_retval);

  /* readonly attribute boolean locked; */
  nsresult GetLocked(PRBool *aLocked);

  /* void getNewMessages (in nsIMsgWindow aWindow, in nsIUrlListener aListener); */
  nsresult GetNewMessages(nsIMsgWindow aWindow, nsIUrlListener aListener);

  /**
   * write out summary data for this folder
   * to the given folder cache (i.e. panacea.dat)
   */
  /* void writeToFolderCache (in nsIMsgFolderCache folderCache, in boolean deep); */
  nsresult WriteToFolderCache(nsIMsgFolderCache folderCache, PRBool deep);

  /**
   * the charset of this folder
   */
  /* attribute string charset; */
  nsresult GetCharset(char * *aCharset);
  nsresult SetCharset(char * aCharset);

  /* attribute boolean charsetOverride; */
  nsresult GetCharsetOverride(PRBool *aCharsetOverride);
  nsresult SetCharsetOverride(PRBool aCharsetOverride);

  /* attribute unsigned long biffState; */
  nsresult GetBiffState(PRUint32 *aBiffState);
  nsresult SetBiffState(PRUint32 aBiffState);

  /**
   * the number of new messages since this folder was last visited
   * @param deep if true, descends into all subfolders and gets a grand total
   */
  /* long getNumNewMessages (in boolean deep); */
  nsresult GetNumNewMessages(PRBool deep, PRInt32 *_retval);

  /* void setNumNewMessages (in long numNewMessages); */
  nsresult SetNumNewMessages(PRInt32 numNewMessages);

  /**
   * verbose description of the new messages in this folder
   */
  /* readonly attribute wstring newMessagesNotificationDescription; */
  nsresult GetNewMessagesNotificationDescription(PRUnichar * *aNewMessagesNotificationDescription);

  /* attribute boolean gettingNewMessages; */
  nsresult GetGettingNewMessages(PRBool *aGettingNewMessages);
  nsresult SetGettingNewMessages(PRBool aGettingNewMessages);

  /**
   * local path of this folder
   */
  /* attribute nsIFileSpec path; */
  nsresult GetPath(nsIFileSpec  *aPath);
  nsresult SetPath(nsIFileSpec  aPath);

  /* attribute nsILocalFile filePath; */
  nsresult GetFilePath(nsILocalFile  *aFilePath);
  nsresult SetFilePath(nsILocalFile  aFilePath);

  /* readonly attribute string baseMessageURI; */
  nsresult GetBaseMessageURI(char * *aBaseMessageURI);

  /* string generateMessageURI (in nsMsgKey msgKey); */
  nsresult GenerateMessageURI(nsMsgKey msgKey, char **_retval);

  enum { nsMsgDispositionState_None = -1 };

  enum { nsMsgDispositionState_Replied = 0 };

  enum { nsMsgDispositionState_Forwarded = 1 };

  /* void addMessageDispositionState (in nsIMsgDBHdr aMessage, in nsMsgDispositionState aDispositionFlag); */
  nsresult AddMessageDispositionState(nsIMsgDBHdr aMessage, nsMsgDispositionState aDispositionFlag);

  /* void markMessagesRead (in nsISupportsArray messages, in boolean markRead); */
  nsresult MarkMessagesRead(nsISupportsArray messages, PRBool markRead);

  /* void markAllMessagesRead (); */
  nsresult MarkAllMessagesRead();

  /* void markMessagesFlagged (in nsISupportsArray messages, in boolean markFlagged); */
  nsresult MarkMessagesFlagged(nsISupportsArray messages, PRBool markFlagged);

  /* void markThreadRead (in nsIMsgThread thread); */
  nsresult MarkThreadRead(nsIMsgThread thread);

  /* void setLabelForMessages (in nsISupportsArray messages, in nsMsgLabelValue label); */
  nsresult SetLabelForMessages(nsISupportsArray messages, nsMsgLabelValue label);

  /* nsIMsgDatabase getMsgDatabase (in nsIMsgWindow msgWindow); */
  nsresult GetMsgDatabase(nsIMsgWindow msgWindow, nsIMsgDatabase *_retval);

  /* void setMsgDatabase (in nsIMsgDatabase msgDatabase); */
  nsresult SetMsgDatabase(nsIMsgDatabase msgDatabase);

  /* nsIMsgDatabase getDBFolderInfoAndDB (out nsIDBFolderInfo folderInfo); */
  nsresult GetDBFolderInfoAndDB(nsIDBFolderInfo *folderInfo, nsIMsgDatabase *_retval);

  /* nsIMsgDBHdr GetMessageHeader (in nsMsgKey msgKey); */
  nsresult GetMessageHeader(nsMsgKey msgKey, nsIMsgDBHdr *_retval);

  /* readonly attribute boolean supportsOffline; */
  nsresult GetSupportsOffline(PRBool *aSupportsOffline);

  /* boolean shouldStoreMsgOffline (in nsMsgKey msgKey); */
  nsresult ShouldStoreMsgOffline(nsMsgKey msgKey, PRBool *_retval);

  /* boolean hasMsgOffline (in nsMsgKey msgKey); */
  nsresult HasMsgOffline(nsMsgKey msgKey, PRBool *_retval);

  /* nsIInputStream getOfflineFileStream (in nsMsgKey msgKey, out PRUint32 offset, out PRUint32 size); */
  nsresult GetOfflineFileStream(nsMsgKey msgKey, PRUint32 *offset, PRUint32 *size, nsIInputStream *_retval);

  /* readonly attribute nsIOutputStream offlineStoreOutputStream; */
  nsresult GetOfflineStoreOutputStream(nsIOutputStream  *aOfflineStoreOutputStream);

  /* readonly attribute nsIInputStream offlineStoreInputStream; */
  nsresult GetOfflineStoreInputStream(nsIInputStream  *aOfflineStoreInputStream);

  /* void DownloadMessagesForOffline (in nsISupportsArray messages, in nsIMsgWindow window); */
  nsresult DownloadMessagesForOffline(nsISupportsArray messages, nsIMsgWindow window);

  /* nsIMsgFolder getChildWithURI (in string uri, in boolean deep, in boolean caseInsensitive); */
  nsresult GetChildWithURI(char *uri, PRBool deep, PRBool caseInsensitive, nsIMsgFolder *_retval);

  /* void downloadAllForOffline (in nsIUrlListener listener, in nsIMsgWindow window); */
  nsresult DownloadAllForOffline(nsIUrlListener listener, nsIMsgWindow window);

  /**
   *  Turn notifications on/off for various notification types. Currently only 
   *  supporting allMessageCountNotifications which refers to both total and 
   *  unread message counts.
   */
  enum { allMessageCountNotifications = 0U };

  /* void enableNotifications (in long notificationType, in boolean enable, in boolean dbBatching); */
  nsresult EnableNotifications(PRInt32 notificationType, PRBool enable, PRBool dbBatching);

  /* boolean isCommandEnabled (in string command); */
  nsresult IsCommandEnabled(char *command, PRBool *_retval);

  /* boolean matchOrChangeFilterDestination (in nsIMsgFolder folder, in boolean caseInsensitive); */
  nsresult MatchOrChangeFilterDestination(nsIMsgFolder folder, PRBool caseInsensitive, PRBool *_retval);

  /* boolean confirmFolderDeletionForFilter (in nsIMsgWindow msgWindow); */
  nsresult ConfirmFolderDeletionForFilter(nsIMsgWindow msgWindow, PRBool *_retval);

  /* void alertFilterChanged (in nsIMsgWindow msgWindow); */
  nsresult AlertFilterChanged(nsIMsgWindow msgWindow);

  /* void throwAlertMsg (in string msgName, in nsIMsgWindow msgWindow); */
  nsresult ThrowAlertMsg(char *msgName, nsIMsgWindow msgWindow);

  /* wstring getStringWithFolderNameFromBundle (in string msgName); */
  nsresult GetStringWithFolderNameFromBundle(char *msgName, PRUnichar **_retval);

  /* void notifyCompactCompleted (); */
  nsresult NotifyCompactCompleted();

  /* long compareSortKeys (in nsIMsgFolder msgFolder); */
  nsresult CompareSortKeys(nsIMsgFolder msgFolder, PRInt32 *_retval);

  /* [noscript] void getSortKey (out octet_ptr key, out unsigned long length); */
  nsresult GetSortKey(PRUint8 * *key, PRUint32 *length);

  /* attribute nsIMsgRetentionSettings retentionSettings; */
  nsresult GetRetentionSettings(nsIMsgRetentionSettings  *aRetentionSettings);
  nsresult SetRetentionSettings(nsIMsgRetentionSettings  aRetentionSettings);

  /* attribute nsIMsgDownloadSettings downloadSettings; */
  nsresult GetDownloadSettings(nsIMsgDownloadSettings  *aDownloadSettings);
  nsresult SetDownloadSettings(nsIMsgDownloadSettings  aDownloadSettings);

  /* boolean callFilterPlugins (in nsIMsgWindow aMsgWindow); */
  nsresult CallFilterPlugins(nsIMsgWindow aMsgWindow, PRBool *_retval);

  /**
   * used for order in the folder pane, folder pickers, etc.
   */
  /* attribute long sortOrder; */
  nsresult GetSortOrder(PRInt32 *aSortOrder);
  nsresult SetSortOrder(PRInt32 aSortOrder);

  /** 
   * used to determine if we persist the close / open state of this folder or not
   */
  /* [noscript] readonly attribute boolean persistElided; */
  nsresult GetPersistElided(PRBool *aPersistElided);

  /* readonly attribute nsIMsgFolder parentMsgFolder; */
  nsresult GetParentMsgFolder(nsIMsgFolder  *aParentMsgFolder);

  /* attribute nsIDBFolderInfo dBTransferInfo; */
  nsresult GetDBTransferInfo(nsIDBFolderInfo  *aDBTransferInfo);
  nsresult SetDBTransferInfo(nsIDBFolderInfo  aDBTransferInfo);

  /* string getStringProperty (in string propertyName); */
  nsresult GetStringProperty(char *propertyName, char **_retval);

  /* void setStringProperty (in string propertyName, in string propertyValue); */
  nsresult SetStringProperty(char *propertyName, char *propertyValue);

  /* attribute nsMsgKey lastMessageLoaded; */
  nsresult GetLastMessageLoaded(nsMsgKey *aLastMessageLoaded);
  nsresult SetLastMessageLoaded(nsMsgKey aLastMessageLoaded);

  /* readonly attribute string URI; */
  nsresult GetURI(char * *aURI);

  /* attribute wstring name; */
  nsresult GetName(PRUnichar * *aName);
  nsresult SetName(PRUnichar * aName);

  /* attribute wstring prettyName; */
  nsresult GetPrettyName(PRUnichar * *aPrettyName);
  nsresult SetPrettyName(PRUnichar * aPrettyName);

  /* readonly attribute wstring abbreviatedName; */
  nsresult GetAbbreviatedName(PRUnichar * *aAbbreviatedName);

  /* nsISupports getChildNamed (in wstring name); */
  nsresult GetChildNamed(PRUnichar *name, nsISupports *_retval);

  /* attribute nsIMsgFolder parent; */
  nsresult GetParent(nsIMsgFolder  *aParent);
  nsresult SetParent(nsIMsgFolder  aParent);

  /* nsIEnumerator GetSubFolders (); */
  nsresult GetSubFolders(nsIEnumerator *_retval);

  /* readonly attribute boolean hasSubFolders; */
  nsresult GetHasSubFolders(PRBool *aHasSubFolders);

  /* void AddFolderListener (in nsIFolderListener listener); */
  nsresult AddFolderListener(nsIFolderListener listener);

  /* void RemoveFolderListener (in nsIFolderListener listener); */
  nsresult RemoveFolderListener(nsIFolderListener listener);

  /* nsIMsgFolder FindSubFolder (in ACString escapedSubFolderName); */
  nsresult FindSubFolder(nsACString * escapedSubFolderName, nsIMsgFolder *_retval);

  /* void NotifyPropertyChanged (in nsIAtom property, in string oldValue, in string newValue); */
  nsresult NotifyPropertyChanged(nsIAtom property, char *oldValue, char *newValue);

  /* void NotifyIntPropertyChanged (in nsIAtom property, in long oldValue, in long newValue); */
  nsresult NotifyIntPropertyChanged(nsIAtom property, PRInt32 oldValue, PRInt32 newValue);

  /* void NotifyBoolPropertyChanged (in nsIAtom property, in boolean oldValue, in boolean newValue); */
  nsresult NotifyBoolPropertyChanged(nsIAtom property, PRBool oldValue, PRBool newValue);

  /* void NotifyPropertyFlagChanged (in nsIMsgDBHdr item, in nsIAtom property, in unsigned long oldValue, in unsigned long newValue); */
  nsresult NotifyPropertyFlagChanged(nsIMsgDBHdr item, nsIAtom property, PRUint32 oldValue, PRUint32 newValue);

  /* void NotifyUnicharPropertyChanged (in nsIAtom property, in wstring oldValue, in wstring newValue); */
  nsresult NotifyUnicharPropertyChanged(nsIAtom property, PRUnichar *oldValue, PRUnichar *newValue);

  /* void NotifyItemAdded (in nsISupports item); */
  nsresult NotifyItemAdded(nsISupports item);

  /* void NotifyItemRemoved (in nsISupports item); */
  nsresult NotifyItemRemoved(nsISupports item);

  /* void NotifyFolderEvent (in nsIAtom event); */
  nsresult NotifyFolderEvent(nsIAtom event);

  /* void ListDescendents (in nsISupportsArray descendents); */
  nsresult ListDescendents(nsISupportsArray descendents);

  /* void Shutdown (in boolean shutdownChildren); */
  nsresult Shutdown(PRBool shutdownChildren);

  /* readonly attribute boolean inVFEditSearchScope; */
  nsresult GetInVFEditSearchScope(PRBool *aInVFEditSearchScope);

  /* void setInVFEditSearchScope (in boolean aSearchThisFolder, in boolean aSetOnSubFolders); */
  nsresult SetInVFEditSearchScope(PRBool aSearchThisFolder, PRBool aSetOnSubFolders);

  /* void copyDataToOutputStreamForAppend (in nsIInputStream aIStream, in long aLength, in nsIOutputStream outputStream); */
  nsresult CopyDataToOutputStreamForAppend(nsIInputStream aIStream, PRInt32 aLength, nsIOutputStream outputStream);

  /* void copyDataDone (); */
  nsresult CopyDataDone();

  /* void setJunkScoreForMessages (in nsISupportsArray aMessages, in string aJunkScore); */
  nsresult SetJunkScoreForMessages(nsISupportsArray aMessages, char *aJunkScore);

  /* void applyRetentionSettings (); */
  nsresult ApplyRetentionSettings();

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
  nsresult FetchMsgPreviewText(nsMsgKey *aKeysToFetch, PRUint32 aNumKeys, PRBool aLocalOnly, nsIUrlListener aUrlListener, PRBool *aAsyncResults);

  /* void addKeywordToMessages (in nsISupportsArray aMessages, in string aKeyword); */
  nsresult AddKeywordToMessages(nsISupportsArray aMessages, char *aKeyword);

  /* void removeKeywordFromMessages (in nsISupportsArray aMessages, in string aKeyword); */
  nsresult RemoveKeywordFromMessages(nsISupportsArray aMessages, char *aKeyword);

  /* ACString getMsgTextFromStream (in nsIMsgDBHdr aMsgHdr, in nsIInputStream aStream, in long aBytesToRead, in long aMaxOutputLen); */
  nsresult GetMsgTextFromStream(nsIMsgDBHdr aMsgHdr, nsIInputStream aStream, PRInt32 aBytesToRead, PRInt32 aMaxOutputLen, nsACString * _retval);

  /* readonly attribute nsIMsgIdentity customIdentity; */
  nsresult GetCustomIdentity(nsIMsgIdentity  *aCustomIdentity);

}

