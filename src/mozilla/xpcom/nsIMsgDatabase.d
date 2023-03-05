/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgDatabase.idl
 */

module mozilla.xpcom.nsIMsgDatabase;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.MailNewsTypes2;
public import mozilla.xpcom.nsIDBChangeAnnouncer;
public import mozilla.xpcom.nsIMsgDBView;

public import mozilla.xpcom.nsIFileSpec; /* forward declaration */

public import mozilla.xpcom.nsIDBChangeListener; /* forward declaration */

public import mozilla.xpcom.nsIMsgHdr;

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */

public import mozilla.xpcom.nsIMsgThread; /* forward declaration */

public import mozilla.xpcom.nsIDBFolderInfo; /* forward declaration */

public import mozilla.xpcom.nsIMsgOfflineImapOperation; /* forward declaration */

public import mozilla.xpcom.nsIMsgFolder; /* forward declaration */

public import mozilla.xpcom.nsIUrlListener; /* forward declaration */

public import mozilla.xpcom.nsISupportsArray; /* forward declaration */

alias PRUint32 nsMsgRetainByPreference;


/* starting interface:    nsIMsgRetentionSettings */
const char[] NS_IMSGRETENTIONSETTINGS_IID_STR = "063bd2ac-de85-11d4-a5b6-0060b0fc04b7";

const nsIID NS_IMSGRETENTIONSETTINGS_IID= 
  {0x063bd2ac, 0xde85, 0x11d4, 
    [ 0xa5, 0xb6, 0x00, 0x60, 0xb0, 0xfc, 0x04, 0xb7 ]};

extern(Windows)
interface nsIMsgRetentionSettings : nsISupports {
  static const char[] IID_STR = NS_IMSGRETENTIONSETTINGS_IID_STR;
  static const nsIID IID = NS_IMSGRETENTIONSETTINGS_IID;

  enum { nsMsgRetainAll = 1U };

  enum { nsMsgRetainByAge = 2U };

  enum { nsMsgRetainByNumHeaders = 3U };

  /* attribute boolean useServerDefaults; */
  nsresult GetUseServerDefaults(PRBool *aUseServerDefaults);
  nsresult SetUseServerDefaults(PRBool aUseServerDefaults);

  /* attribute nsMsgRetainByPreference retainByPreference; */
  nsresult GetRetainByPreference(nsMsgRetainByPreference *aRetainByPreference);
  nsresult SetRetainByPreference(nsMsgRetainByPreference aRetainByPreference);

  /* attribute unsigned long daysToKeepHdrs; */
  nsresult GetDaysToKeepHdrs(PRUint32 *aDaysToKeepHdrs);
  nsresult SetDaysToKeepHdrs(PRUint32 aDaysToKeepHdrs);

  /* attribute unsigned long numHeadersToKeep; */
  nsresult GetNumHeadersToKeep(PRUint32 *aNumHeadersToKeep);
  nsresult SetNumHeadersToKeep(PRUint32 aNumHeadersToKeep);

  /* attribute boolean keepUnreadMessagesOnly; */
  nsresult GetKeepUnreadMessagesOnly(PRBool *aKeepUnreadMessagesOnly);
  nsresult SetKeepUnreadMessagesOnly(PRBool aKeepUnreadMessagesOnly);

  /* attribute boolean cleanupBodiesByDays; */
  nsresult GetCleanupBodiesByDays(PRBool *aCleanupBodiesByDays);
  nsresult SetCleanupBodiesByDays(PRBool aCleanupBodiesByDays);

  /* attribute unsigned long daysToKeepBodies; */
  nsresult GetDaysToKeepBodies(PRUint32 *aDaysToKeepBodies);
  nsresult SetDaysToKeepBodies(PRUint32 aDaysToKeepBodies);

}


/* starting interface:    nsIMsgDownloadSettings */
const char[] NS_IMSGDOWNLOADSETTINGS_IID_STR = "86a9da90-14f1-11d5-a5c0-0060b0fc04b7";

const nsIID NS_IMSGDOWNLOADSETTINGS_IID= 
  {0x86a9da90, 0x14f1, 0x11d5, 
    [ 0xa5, 0xc0, 0x00, 0x60, 0xb0, 0xfc, 0x04, 0xb7 ]};

extern(Windows)
interface nsIMsgDownloadSettings : nsISupports {
  static const char[] IID_STR = NS_IMSGDOWNLOADSETTINGS_IID_STR;
  static const nsIID IID = NS_IMSGDOWNLOADSETTINGS_IID;

  /* attribute boolean useServerDefaults; */
  nsresult GetUseServerDefaults(PRBool *aUseServerDefaults);
  nsresult SetUseServerDefaults(PRBool aUseServerDefaults);

  /* attribute boolean downloadByDate; */
  nsresult GetDownloadByDate(PRBool *aDownloadByDate);
  nsresult SetDownloadByDate(PRBool aDownloadByDate);

  /* attribute boolean downloadUnreadOnly; */
  nsresult GetDownloadUnreadOnly(PRBool *aDownloadUnreadOnly);
  nsresult SetDownloadUnreadOnly(PRBool aDownloadUnreadOnly);

  /* attribute unsigned long ageLimitOfMsgsToDownload; */
  nsresult GetAgeLimitOfMsgsToDownload(PRUint32 *aAgeLimitOfMsgsToDownload);
  nsresult SetAgeLimitOfMsgsToDownload(PRUint32 aAgeLimitOfMsgsToDownload);

}

alias PRInt32 nsMsgDBCommit;


/* starting interface:    nsMsgDBCommitType */
const char[] NS_MSGDBCOMMITTYPE_IID_STR = "aa4d45d0-3956-11d3-8d76-00805f8a6617";

const nsIID NS_MSGDBCOMMITTYPE_IID= 
  {0xaa4d45d0, 0x3956, 0x11d3, 
    [ 0x8d, 0x76, 0x00, 0x80, 0x5f, 0x8a, 0x66, 0x17 ]};

extern(Windows)
interface nsMsgDBCommitType {
  static const char[] IID_STR = NS_MSGDBCOMMITTYPE_IID_STR;
  static const nsIID IID = NS_MSGDBCOMMITTYPE_IID;

  enum { kSmallCommit = 0 };

  enum { kLargeCommit = 1 };

  enum { kSessionCommit = 2 };

  enum { kCompressCommit = 3 };

}


/* starting interface:    nsIMsgDBService */
const char[] NS_IMSGDBSERVICE_IID_STR = "03223c50-1e88-45e8-ba1a-7ce792dc3fc3";

const nsIID NS_IMSGDBSERVICE_IID= 
  {0x03223c50, 0x1e88, 0x45e8, 
    [ 0xba, 0x1a, 0x7c, 0xe7, 0x92, 0xdc, 0x3f, 0xc3 ]};

extern(Windows)
interface nsIMsgDBService : nsISupports {
  static const char[] IID_STR = NS_IMSGDBSERVICE_IID_STR;
  static const nsIID IID = NS_IMSGDBSERVICE_IID;

  /* nsIMsgDatabase openFolderDB (in nsIMsgFolder aFolder, in boolean aCreate, in boolean aLeaveInvalidDB); */
  nsresult OpenFolderDB(nsIMsgFolder aFolder, PRBool aCreate, PRBool aLeaveInvalidDB, nsIMsgDatabase *_retval);

  /* nsIMsgDatabase openMailDBFromFileSpec (in nsIFileSpec aFolderName, in boolean aCreate, in boolean aLeaveInvalidDB); */
  nsresult OpenMailDBFromFileSpec(nsIFileSpec aFolderName, PRBool aCreate, PRBool aLeaveInvalidDB, nsIMsgDatabase *_retval);

  /* void registerPendingListener (in nsIMsgFolder aFolder, in nsIDBChangeListener aListener); */
  nsresult RegisterPendingListener(nsIMsgFolder aFolder, nsIDBChangeListener aListener);

  /* void unregisterPendingListener (in nsIDBChangeListener aListener); */
  nsresult UnregisterPendingListener(nsIDBChangeListener aListener);

}


/* starting interface:    nsIMsgDatabase */
const char[] NS_IMSGDATABASE_IID_STR = "6393fef1-d6c6-444a-90b8-bec84e8bd8d7";

const nsIID NS_IMSGDATABASE_IID= 
  {0x6393fef1, 0xd6c6, 0x444a, 
    [ 0x90, 0xb8, 0xbe, 0xc8, 0x4e, 0x8b, 0xd8, 0xd7 ]};

extern(Windows)
interface nsIMsgDatabase : nsIDBChangeAnnouncer {
  static const char[] IID_STR = NS_IMSGDATABASE_IID_STR;
  static const nsIID IID = NS_IMSGDATABASE_IID;

  /* void Open (in nsIFileSpec aFolderName, in boolean aCreate, in boolean aLeaveInvalidDB); */
  nsresult Open(nsIFileSpec aFolderName, PRBool aCreate, PRBool aLeaveInvalidDB);

  /* void forceFolderDBClosed (in nsIMsgFolder aFolder); */
  nsresult ForceFolderDBClosed(nsIMsgFolder aFolder);

  /* void Close (in boolean aForceCommit); */
  nsresult Close(PRBool aForceCommit);

  /* void Commit (in nsMsgDBCommit commitType); */
  nsresult Commit(nsMsgDBCommit commitType);

  /* void ForceClosed (); */
  nsresult ForceClosed();

  /* void clearCachedHdrs (); */
  nsresult ClearCachedHdrs();

  /* void resetHdrCacheSize (in unsigned long size); */
  nsresult ResetHdrCacheSize(PRUint32 size);

  /* readonly attribute nsIDBFolderInfo dBFolderInfo; */
  nsresult GetDBFolderInfo(nsIDBFolderInfo  *aDBFolderInfo);

  /* nsIMsgDBHdr GetMsgHdrForKey (in nsMsgKey key); */
  nsresult GetMsgHdrForKey(nsMsgKey key, nsIMsgDBHdr *_retval);

  /* nsIMsgDBHdr getMsgHdrForMessageID (in string messageID); */
  nsresult GetMsgHdrForMessageID(char *messageID, nsIMsgDBHdr *_retval);

  /* boolean ContainsKey (in nsMsgKey key); */
  nsresult ContainsKey(nsMsgKey key, PRBool *_retval);

  /* nsIMsgDBHdr CreateNewHdr (in nsMsgKey key); */
  nsresult CreateNewHdr(nsMsgKey key, nsIMsgDBHdr *_retval);

  /* void AddNewHdrToDB (in nsIMsgDBHdr newHdr, in boolean notify); */
  nsresult AddNewHdrToDB(nsIMsgDBHdr newHdr, PRBool notify);

  /* nsIMsgDBHdr CopyHdrFromExistingHdr (in nsMsgKey key, in nsIMsgDBHdr existingHdr, in boolean addHdrToDB); */
  nsresult CopyHdrFromExistingHdr(nsMsgKey key, nsIMsgDBHdr existingHdr, PRBool addHdrToDB, nsIMsgDBHdr *_retval);

  /* [noscript] void ListAllKeys (in nsMsgKeyArrayRef outputKeys); */
  nsresult ListAllKeys(nsMsgKeyArray * outputKeys);

  /* nsISimpleEnumerator EnumerateMessages (); */
  nsresult EnumerateMessages(nsISimpleEnumerator *_retval);

  /* nsISimpleEnumerator EnumerateThreads (); */
  nsresult EnumerateThreads(nsISimpleEnumerator *_retval);

  /* void syncCounts (); */
  nsresult SyncCounts();

  /* nsIMsgThread GetThreadContainingMsgHdr (in nsIMsgDBHdr msgHdr); */
  nsresult GetThreadContainingMsgHdr(nsIMsgDBHdr msgHdr, nsIMsgThread *_retval);

  /* void MarkHdrRead (in nsIMsgDBHdr msgHdr, in boolean bRead, in nsIDBChangeListener instigator); */
  nsresult MarkHdrRead(nsIMsgDBHdr msgHdr, PRBool bRead, nsIDBChangeListener instigator);

  /* void MarkHdrReplied (in nsIMsgDBHdr msgHdr, in boolean bReplied, in nsIDBChangeListener instigator); */
  nsresult MarkHdrReplied(nsIMsgDBHdr msgHdr, PRBool bReplied, nsIDBChangeListener instigator);

  /* void MarkHdrMarked (in nsIMsgDBHdr msgHdr, in boolean mark, in nsIDBChangeListener instigator); */
  nsresult MarkHdrMarked(nsIMsgDBHdr msgHdr, PRBool mark, nsIDBChangeListener instigator);

  /* void MarkMDNNeeded (in nsMsgKey key, in boolean bNeeded, in nsIDBChangeListener instigator); */
  nsresult MarkMDNNeeded(nsMsgKey key, PRBool bNeeded, nsIDBChangeListener instigator);

  /* boolean IsMDNNeeded (in nsMsgKey key); */
  nsresult IsMDNNeeded(nsMsgKey key, PRBool *_retval);

  /* void MarkMDNSent (in nsMsgKey key, in boolean bNeeded, in nsIDBChangeListener instigator); */
  nsresult MarkMDNSent(nsMsgKey key, PRBool bNeeded, nsIDBChangeListener instigator);

  /* boolean IsMDNSent (in nsMsgKey key); */
  nsresult IsMDNSent(nsMsgKey key, PRBool *_retval);

  /* void MarkRead (in nsMsgKey key, in boolean bRead, in nsIDBChangeListener instigator); */
  nsresult MarkRead(nsMsgKey key, PRBool bRead, nsIDBChangeListener instigator);

  /* void MarkReplied (in nsMsgKey key, in boolean bReplied, in nsIDBChangeListener instigator); */
  nsresult MarkReplied(nsMsgKey key, PRBool bReplied, nsIDBChangeListener instigator);

  /* void MarkForwarded (in nsMsgKey key, in boolean bForwarded, in nsIDBChangeListener instigator); */
  nsresult MarkForwarded(nsMsgKey key, PRBool bForwarded, nsIDBChangeListener instigator);

  /* void MarkHasAttachments (in nsMsgKey key, in boolean bHasAttachments, in nsIDBChangeListener instigator); */
  nsresult MarkHasAttachments(nsMsgKey key, PRBool bHasAttachments, nsIDBChangeListener instigator);

  /* [noscript] void MarkThreadRead (in nsIMsgThread thread, in nsIDBChangeListener instigator, in nsMsgKeyArrayPtr thoseMarked); */
  nsresult MarkThreadRead(nsIMsgThread thread, nsIDBChangeListener instigator, nsMsgKeyArray * thoseMarked);

  /* void MarkThreadIgnored (in nsIMsgThread thread, in nsMsgKey threadKey, in boolean bIgnored, in nsIDBChangeListener instigator); */
  nsresult MarkThreadIgnored(nsIMsgThread thread, nsMsgKey threadKey, PRBool bIgnored, nsIDBChangeListener instigator);

  /* void MarkThreadWatched (in nsIMsgThread thread, in nsMsgKey threadKey, in boolean bWatched, in nsIDBChangeListener instigator); */
  nsresult MarkThreadWatched(nsIMsgThread thread, nsMsgKey threadKey, PRBool bWatched, nsIDBChangeListener instigator);

  /* boolean IsRead (in nsMsgKey key); */
  nsresult IsRead(nsMsgKey key, PRBool *_retval);

  /* boolean IsIgnored (in nsMsgKey key); */
  nsresult IsIgnored(nsMsgKey key, PRBool *_retval);

  /* boolean IsMarked (in nsMsgKey key); */
  nsresult IsMarked(nsMsgKey key, PRBool *_retval);

  /* boolean HasAttachments (in nsMsgKey key); */
  nsresult HasAttachments(nsMsgKey key, PRBool *_retval);

  /* [noscript] void MarkAllRead (in nsMsgKeyArrayPtr thoseMarked); */
  nsresult MarkAllRead(nsMsgKeyArray * thoseMarked);

  /* [noscript] void MarkReadByDate (in PRTime startDate, in PRTime endDate, in nsMsgKeyArrayPtr markedIds); */
  nsresult MarkReadByDate(PRTime startDate, PRTime endDate, nsMsgKeyArray * markedIds);

  /* [noscript] void DeleteMessages (in nsMsgKeyArrayPtr nsMsgKeys, in nsIDBChangeListener instigator); */
  nsresult DeleteMessages(nsMsgKeyArray * nsMsgKeys, nsIDBChangeListener instigator);

  /* void DeleteMessage (in nsMsgKey key, in nsIDBChangeListener instigator, in boolean commit); */
  nsresult DeleteMessage(nsMsgKey key, nsIDBChangeListener instigator, PRBool commit);

  /* void DeleteHeader (in nsIMsgDBHdr msgHdr, in nsIDBChangeListener instigator, in boolean commit, in boolean notify); */
  nsresult DeleteHeader(nsIMsgDBHdr msgHdr, nsIDBChangeListener instigator, PRBool commit, PRBool notify);

  /* void RemoveHeaderMdbRow (in nsIMsgDBHdr msgHdr); */
  nsresult RemoveHeaderMdbRow(nsIMsgDBHdr msgHdr);

  /* void UndoDelete (in nsIMsgDBHdr msgHdr); */
  nsresult UndoDelete(nsIMsgDBHdr msgHdr);

  /* void MarkMarked (in nsMsgKey key, in boolean mark, in nsIDBChangeListener instigator); */
  nsresult MarkMarked(nsMsgKey key, PRBool mark, nsIDBChangeListener instigator);

  /* void MarkOffline (in nsMsgKey key, in boolean offline, in nsIDBChangeListener instigator); */
  nsresult MarkOffline(nsMsgKey key, PRBool offline, nsIDBChangeListener instigator);

  /* void SetLabel (in nsMsgKey key, in nsMsgLabelValue label); */
  nsresult SetLabel(nsMsgKey key, nsMsgLabelValue label);

  /* void setStringProperty (in nsMsgKey aKey, in string aProperty, in string aValue); */
  nsresult SetStringProperty(nsMsgKey aKey, char *aProperty, char *aValue);

  /* void MarkImapDeleted (in nsMsgKey key, in boolean deleted, in nsIDBChangeListener instigator); */
  nsresult MarkImapDeleted(nsMsgKey key, PRBool deleted, nsIDBChangeListener instigator);

  /* readonly attribute nsMsgKey FirstNew; */
  nsresult GetFirstNew(nsMsgKey *aFirstNew);

  /* attribute nsIMsgRetentionSettings msgRetentionSettings; */
  nsresult GetMsgRetentionSettings(nsIMsgRetentionSettings  *aMsgRetentionSettings);
  nsresult SetMsgRetentionSettings(nsIMsgRetentionSettings  aMsgRetentionSettings);

  /* void applyRetentionSettings (in nsIMsgRetentionSettings aMsgRetentionSettings, in boolean aDeleteViaFolder); */
  nsresult ApplyRetentionSettings(nsIMsgRetentionSettings aMsgRetentionSettings, PRBool aDeleteViaFolder);

  /* attribute nsIMsgDownloadSettings msgDownloadSettings; */
  nsresult GetMsgDownloadSettings(nsIMsgDownloadSettings  *aMsgDownloadSettings);
  nsresult SetMsgDownloadSettings(nsIMsgDownloadSettings  aMsgDownloadSettings);

  /* boolean HasNew (); */
  nsresult HasNew(PRBool *_retval);

  /* void ClearNewList (in boolean notify); */
  nsresult ClearNewList(PRBool notify);

  /* void AddToNewList (in nsMsgKey key); */
  nsresult AddToNewList(nsMsgKey key);

  /* attribute boolean summaryValid; */
  nsresult GetSummaryValid(PRBool *aSummaryValid);
  nsresult SetSummaryValid(PRBool aSummaryValid);

  /* void StartBatch (); */
  nsresult StartBatch();

  /* void EndBatch (); */
  nsresult EndBatch();

  /* nsIMsgOfflineImapOperation GetOfflineOpForKey (in nsMsgKey messageKey, in boolean create); */
  nsresult GetOfflineOpForKey(nsMsgKey messageKey, PRBool create, nsIMsgOfflineImapOperation *_retval);

  /* void RemoveOfflineOp (in nsIMsgOfflineImapOperation op); */
  nsresult RemoveOfflineOp(nsIMsgOfflineImapOperation op);

  /* nsISimpleEnumerator EnumerateOfflineOps (); */
  nsresult EnumerateOfflineOps(nsISimpleEnumerator *_retval);

  /* [noscript] void ListAllOfflineOpIds (in nsMsgKeyArrayPtr offlineOpIds); */
  nsresult ListAllOfflineOpIds(nsMsgKeyArray * offlineOpIds);

  /* [noscript] void ListAllOfflineDeletes (in nsMsgKeyArrayPtr offlineDeletes); */
  nsresult ListAllOfflineDeletes(nsMsgKeyArray * offlineDeletes);

  /* [noscript] void ListAllOfflineMsgs (in nsMsgKeyArrayPtr offlineMsgs); */
  nsresult ListAllOfflineMsgs(nsMsgKeyArray * offlineMsgs);

  /* void setAttributesOnPendingHdr (in nsIMsgDBHdr pendingHdr, in string property, in string propertyVal, in long flags); */
  nsresult SetAttributesOnPendingHdr(nsIMsgDBHdr pendingHdr, char *property, char *propertyVal, PRInt32 flags);

  /* readonly attribute nsMsgKey lowWaterArticleNum; */
  nsresult GetLowWaterArticleNum(nsMsgKey *aLowWaterArticleNum);

  /* readonly attribute nsMsgKey highWaterArticleNum; */
  nsresult GetHighWaterArticleNum(nsMsgKey *aHighWaterArticleNum);

  /* attribute nsMsgKey nextPseudoMsgKey; */
  nsresult GetNextPseudoMsgKey(nsMsgKey *aNextPseudoMsgKey);
  nsresult SetNextPseudoMsgKey(nsMsgKey aNextPseudoMsgKey);

  /* readonly attribute nsMsgKey nextFakeOfflineMsgKey; */
  nsresult GetNextFakeOfflineMsgKey(nsMsgKey *aNextFakeOfflineMsgKey);

  /* [noscript] void createCollationKey (in AString sourceString, out octetPtr key, out unsigned long len); */
  nsresult CreateCollationKey(nsAString * sourceString, PRUint8 * *key, PRUint32 *len);

  /* [noscript] long compareCollationKeys (in octetPtr key1, in unsigned long len1, in octetPtr key2, in unsigned long len2); */
  nsresult CompareCollationKeys(PRUint8 * key1, PRUint32 len1, PRUint8 * key2, PRUint32 len2, PRInt32 *_retval);

  /* readonly attribute nsMsgViewFlagsTypeValue defaultViewFlags; */
  nsresult GetDefaultViewFlags(nsMsgViewFlagsTypeValue *aDefaultViewFlags);

  /* readonly attribute nsMsgViewSortTypeValue defaultSortType; */
  nsresult GetDefaultSortType(nsMsgViewSortTypeValue *aDefaultSortType);

  /* attribute unsigned long msgHdrCacheSize; */
  nsresult GetMsgHdrCacheSize(PRUint32 *aMsgHdrCacheSize);
  nsresult SetMsgHdrCacheSize(PRUint32 aMsgHdrCacheSize);

  /* attribute nsIOFileStream folderStream; */
  nsresult GetFolderStream(nsIOFileStream  *aFolderStream);
  nsresult SetFolderStream(nsIOFileStream  aFolderStream);

  /**
   * The list of messages currently in the NEW state.
   * 
   * If there are no such messages, a null pointer may be returned.
   * the caller should free when done using nsMemory::Free.
   */
  /* void getNewList (out unsigned long count, [array, size_is (count)] out nsMsgKey newKeys); */
  nsresult GetNewList(PRUint32 *count, nsMsgKey **newKeys);

  /* nsISimpleEnumerator getCachedHits (in string aSearchFolderUri); */
  nsresult GetCachedHits(char *aSearchFolderUri, nsISimpleEnumerator *_retval);

  /* void refreshCache (in string aSearchFolderUri, in unsigned long aNumKeys, [array, size_is (aNumKeys)] in nsMsgKey aNewHits, out unsigned long aNumBadHits, [array, size_is (aNumBadHits)] out nsMsgKey aStaleHits); */
  nsresult RefreshCache(char *aSearchFolderUri, PRUint32 aNumKeys, nsMsgKey *aNewHits, PRUint32 *aNumBadHits, nsMsgKey **aStaleHits);

  /* void updateHdrInCache (in string aSearchFolderUri, in nsIMsgDBHdr aHdr, in boolean aAdd); */
  nsresult UpdateHdrInCache(char *aSearchFolderUri, nsIMsgDBHdr aHdr, PRBool aAdd);

  /* boolean hdrIsInCache (in string aSearchFolderUri, in nsIMsgDBHdr aHdr); */
  nsresult HdrIsInCache(char *aSearchFolderUri, nsIMsgDBHdr aHdr, PRBool *_retval);

}

