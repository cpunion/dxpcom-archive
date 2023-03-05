/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgDatabase.idl
 */

module mozilla.dxpcom.nsIMsgDatabaseD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgDatabase;


public import mozilla.dxpcom.nsIMsgDatabaseD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.MailNewsTypes2;
public import mozilla.dxpcom.MailNewsTypes2D;
public import mozilla.xpcom.nsIDBChangeAnnouncer;
public import mozilla.dxpcom.nsIDBChangeAnnouncerD;
public import mozilla.xpcom.nsIMsgDBView;
public import mozilla.dxpcom.nsIMsgDBViewD;

public import mozilla.xpcom.nsIFileSpec;

public import mozilla.dxpcom.nsIFileSpecD;

public import mozilla.xpcom.nsIDBChangeListener;

public import mozilla.dxpcom.nsIDBChangeListenerD;

public import mozilla.xpcom.nsIMsgHdr;

import mozilla.dxpcom.nsIMsgHdrD;

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;

public import mozilla.xpcom.nsIMsgThread;

public import mozilla.dxpcom.nsIMsgThreadD;

public import mozilla.xpcom.nsIDBFolderInfo;

public import mozilla.dxpcom.nsIDBFolderInfoD;

public import mozilla.xpcom.nsIMsgOfflineImapOperation;

public import mozilla.dxpcom.nsIMsgOfflineImapOperationD;

public import mozilla.xpcom.nsIMsgFolder;

public import mozilla.dxpcom.nsIMsgFolderD;

public import mozilla.xpcom.nsIUrlListener;

public import mozilla.dxpcom.nsIUrlListenerD;

public import mozilla.xpcom.nsISupportsArray;

public import mozilla.dxpcom.nsISupportsArrayD;


/* starting wrapper class:    nsIMsgRetentionSettings */
class nsIMsgRetentionSettingsD : public nsISupportsD {

  static const nsIID IID = NS_IMSGRETENTIONSETTINGS_IID;


  alias nsIMsgRetentionSettings InnerType;

  this(nsIMsgRetentionSettings intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgRetentionSettings opCast() {
    return inner;
  }

  void opAssign(nsIMsgRetentionSettings value) {
    inner = value;
  }

  enum { nsMsgRetainAll = 1U }

  enum { nsMsgRetainByAge = 2U }

  enum { nsMsgRetainByNumHeaders = 3U }

  /* attribute boolean useServerDefaults; */
  PRBool UseServerDefaults(){
    PRBool value;
    nsresult __result = inner.GetUseServerDefaults(&value);
    CheckException(__result);
    return value;
  }
  void UseServerDefaults(PRBool aUseServerDefaults){
    nsresult __result = inner.SetUseServerDefaults(aUseServerDefaults);
    CheckException(__result);
  }

  /* attribute nsMsgRetainByPreference retainByPreference; */
  nsMsgRetainByPreference RetainByPreference(){
    nsMsgRetainByPreference value;
    nsresult __result = inner.GetRetainByPreference(&value);
    CheckException(__result);
    return value;
  }
  void RetainByPreference(nsMsgRetainByPreference aRetainByPreference){
    nsMsgRetainByPreference value;
    nsresult __result = inner.SetRetainByPreference(value);
    CheckException(__result);
  }

  /* attribute unsigned long daysToKeepHdrs; */
  PRUint32 DaysToKeepHdrs(){
    PRUint32 value;
    nsresult __result = inner.GetDaysToKeepHdrs(&value);
    CheckException(__result);
    return value;
  }
  void DaysToKeepHdrs(PRUint32 aDaysToKeepHdrs){
    nsresult __result = inner.SetDaysToKeepHdrs(aDaysToKeepHdrs);
    CheckException(__result);
  }

  /* attribute unsigned long numHeadersToKeep; */
  PRUint32 NumHeadersToKeep(){
    PRUint32 value;
    nsresult __result = inner.GetNumHeadersToKeep(&value);
    CheckException(__result);
    return value;
  }
  void NumHeadersToKeep(PRUint32 aNumHeadersToKeep){
    nsresult __result = inner.SetNumHeadersToKeep(aNumHeadersToKeep);
    CheckException(__result);
  }

  /* attribute boolean keepUnreadMessagesOnly; */
  PRBool KeepUnreadMessagesOnly(){
    PRBool value;
    nsresult __result = inner.GetKeepUnreadMessagesOnly(&value);
    CheckException(__result);
    return value;
  }
  void KeepUnreadMessagesOnly(PRBool aKeepUnreadMessagesOnly){
    nsresult __result = inner.SetKeepUnreadMessagesOnly(aKeepUnreadMessagesOnly);
    CheckException(__result);
  }

  /* attribute boolean cleanupBodiesByDays; */
  PRBool CleanupBodiesByDays(){
    PRBool value;
    nsresult __result = inner.GetCleanupBodiesByDays(&value);
    CheckException(__result);
    return value;
  }
  void CleanupBodiesByDays(PRBool aCleanupBodiesByDays){
    nsresult __result = inner.SetCleanupBodiesByDays(aCleanupBodiesByDays);
    CheckException(__result);
  }

  /* attribute unsigned long daysToKeepBodies; */
  PRUint32 DaysToKeepBodies(){
    PRUint32 value;
    nsresult __result = inner.GetDaysToKeepBodies(&value);
    CheckException(__result);
    return value;
  }
  void DaysToKeepBodies(PRUint32 aDaysToKeepBodies){
    nsresult __result = inner.SetDaysToKeepBodies(aDaysToKeepBodies);
    CheckException(__result);
  }

private:
  nsIMsgRetentionSettings inner;

}


/* starting wrapper class:    nsIMsgDownloadSettings */
class nsIMsgDownloadSettingsD : public nsISupportsD {

  static const nsIID IID = NS_IMSGDOWNLOADSETTINGS_IID;


  alias nsIMsgDownloadSettings InnerType;

  this(nsIMsgDownloadSettings intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgDownloadSettings opCast() {
    return inner;
  }

  void opAssign(nsIMsgDownloadSettings value) {
    inner = value;
  }

  /* attribute boolean useServerDefaults; */
  PRBool UseServerDefaults(){
    PRBool value;
    nsresult __result = inner.GetUseServerDefaults(&value);
    CheckException(__result);
    return value;
  }
  void UseServerDefaults(PRBool aUseServerDefaults){
    nsresult __result = inner.SetUseServerDefaults(aUseServerDefaults);
    CheckException(__result);
  }

  /* attribute boolean downloadByDate; */
  PRBool DownloadByDate(){
    PRBool value;
    nsresult __result = inner.GetDownloadByDate(&value);
    CheckException(__result);
    return value;
  }
  void DownloadByDate(PRBool aDownloadByDate){
    nsresult __result = inner.SetDownloadByDate(aDownloadByDate);
    CheckException(__result);
  }

  /* attribute boolean downloadUnreadOnly; */
  PRBool DownloadUnreadOnly(){
    PRBool value;
    nsresult __result = inner.GetDownloadUnreadOnly(&value);
    CheckException(__result);
    return value;
  }
  void DownloadUnreadOnly(PRBool aDownloadUnreadOnly){
    nsresult __result = inner.SetDownloadUnreadOnly(aDownloadUnreadOnly);
    CheckException(__result);
  }

  /* attribute unsigned long ageLimitOfMsgsToDownload; */
  PRUint32 AgeLimitOfMsgsToDownload(){
    PRUint32 value;
    nsresult __result = inner.GetAgeLimitOfMsgsToDownload(&value);
    CheckException(__result);
    return value;
  }
  void AgeLimitOfMsgsToDownload(PRUint32 aAgeLimitOfMsgsToDownload){
    nsresult __result = inner.SetAgeLimitOfMsgsToDownload(aAgeLimitOfMsgsToDownload);
    CheckException(__result);
  }

private:
  nsIMsgDownloadSettings inner;

}


/* starting wrapper class:    nsMsgDBCommitType */
class nsMsgDBCommitTypeD {

  static const nsIID IID = NS_MSGDBCOMMITTYPE_IID;


  alias nsMsgDBCommitType InnerType;

  this(nsMsgDBCommitType intr){
    this.inner = intr;
  }

  nsMsgDBCommitType opCast() {
    return inner;
  }

  void opAssign(nsMsgDBCommitType value) {
    inner = value;
  }

  enum { kSmallCommit = 0 }

  enum { kLargeCommit = 1 }

  enum { kSessionCommit = 2 }

  enum { kCompressCommit = 3 }

private:
  nsMsgDBCommitType inner;

}


/* starting wrapper class:    nsIMsgDBService */
class nsIMsgDBServiceD : public nsISupportsD {

  static const nsIID IID = NS_IMSGDBSERVICE_IID;


  alias nsIMsgDBService InnerType;

  this(nsIMsgDBService intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgDBService opCast() {
    return inner;
  }

  void opAssign(nsIMsgDBService value) {
    inner = value;
  }

  /* nsIMsgDatabase openFolderDB (in nsIMsgFolder aFolder, in boolean aCreate, in boolean aLeaveInvalidDB); */
  nsIMsgDatabaseD  OpenFolderDB(nsIMsgFolderD aFolder, PRBool aCreate, PRBool aLeaveInvalidDB){
    nsIMsgDatabase _retval;
    nsresult __result = inner.OpenFolderDB(aFolder ? cast(nsIMsgFolder)aFolder : null, aCreate, aLeaveInvalidDB, &_retval);
    CheckException(__result);
    return new nsIMsgDatabaseD(_retval);
  }

  /* nsIMsgDatabase openMailDBFromFileSpec (in nsIFileSpec aFolderName, in boolean aCreate, in boolean aLeaveInvalidDB); */
  nsIMsgDatabaseD  OpenMailDBFromFileSpec(nsIFileSpecD aFolderName, PRBool aCreate, PRBool aLeaveInvalidDB){
    nsIMsgDatabase _retval;
    nsresult __result = inner.OpenMailDBFromFileSpec(aFolderName ? cast(nsIFileSpec)aFolderName : null, aCreate, aLeaveInvalidDB, &_retval);
    CheckException(__result);
    return new nsIMsgDatabaseD(_retval);
  }

  /* void registerPendingListener (in nsIMsgFolder aFolder, in nsIDBChangeListener aListener); */
  void RegisterPendingListener(nsIMsgFolderD aFolder, nsIDBChangeListenerD aListener){
    nsresult __result = inner.RegisterPendingListener(aFolder ? cast(nsIMsgFolder)aFolder : null, aListener ? cast(nsIDBChangeListener)aListener : null);
    CheckException(__result);
  }

  /* void unregisterPendingListener (in nsIDBChangeListener aListener); */
  void UnregisterPendingListener(nsIDBChangeListenerD aListener){
    nsresult __result = inner.UnregisterPendingListener(aListener ? cast(nsIDBChangeListener)aListener : null);
    CheckException(__result);
  }

private:
  nsIMsgDBService inner;

}


/* starting wrapper class:    nsIMsgDatabase */
class nsIMsgDatabaseD : public nsIDBChangeAnnouncerD {

  static const nsIID IID = NS_IMSGDATABASE_IID;


  alias nsIMsgDatabase InnerType;

  this(nsIMsgDatabase intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgDatabase opCast() {
    return inner;
  }

  void opAssign(nsIMsgDatabase value) {
    inner = value;
  }

  /* void Open (in nsIFileSpec aFolderName, in boolean aCreate, in boolean aLeaveInvalidDB); */
  void Open(nsIFileSpecD aFolderName, PRBool aCreate, PRBool aLeaveInvalidDB){
    nsresult __result = inner.Open(aFolderName ? cast(nsIFileSpec)aFolderName : null, aCreate, aLeaveInvalidDB);
    CheckException(__result);
  }

  /* void forceFolderDBClosed (in nsIMsgFolder aFolder); */
  void ForceFolderDBClosed(nsIMsgFolderD aFolder){
    nsresult __result = inner.ForceFolderDBClosed(aFolder ? cast(nsIMsgFolder)aFolder : null);
    CheckException(__result);
  }

  /* void Close (in boolean aForceCommit); */
  void Close(PRBool aForceCommit){
    nsresult __result = inner.Close(aForceCommit);
    CheckException(__result);
  }

  /* void Commit (in nsMsgDBCommit commitType); */
  void Commit(nsMsgDBCommit commitType){
    nsresult __result = inner.Commit(commitType);
    CheckException(__result);
  }

  /* void ForceClosed (); */
  void ForceClosed(){
    nsresult __result = inner.ForceClosed();
    CheckException(__result);
  }

  /* void clearCachedHdrs (); */
  void ClearCachedHdrs(){
    nsresult __result = inner.ClearCachedHdrs();
    CheckException(__result);
  }

  /* void resetHdrCacheSize (in unsigned long size); */
  void ResetHdrCacheSize(PRUint32 size){
    nsresult __result = inner.ResetHdrCacheSize(size);
    CheckException(__result);
  }

  /* readonly attribute nsIDBFolderInfo dBFolderInfo; */
  nsIDBFolderInfoD  DBFolderInfo(){
    nsIDBFolderInfo value;
    nsresult __result = inner.GetDBFolderInfo(&value);
    CheckException(__result);
    return new nsIDBFolderInfoD(value);
  }

  /* nsIMsgDBHdr GetMsgHdrForKey (in nsMsgKey key); */
  nsIMsgDBHdrD  GetMsgHdrForKey(nsMsgKey key){
    nsIMsgDBHdr _retval;
    nsresult __result = inner.GetMsgHdrForKey(key, &_retval);
    CheckException(__result);
    return new nsIMsgDBHdrD(_retval);
  }

  /* nsIMsgDBHdr getMsgHdrForMessageID (in string messageID); */
  nsIMsgDBHdrD  GetMsgHdrForMessageID(char*messageID){
    nsIMsgDBHdr _retval;
    nsresult __result = inner.GetMsgHdrForMessageID(messageID, &_retval);
    CheckException(__result);
    return new nsIMsgDBHdrD(_retval);
  }

  /* boolean ContainsKey (in nsMsgKey key); */
  PRBool ContainsKey(nsMsgKey key){
    PRBool _retval;
    nsresult __result = inner.ContainsKey(key, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsIMsgDBHdr CreateNewHdr (in nsMsgKey key); */
  nsIMsgDBHdrD  CreateNewHdr(nsMsgKey key){
    nsIMsgDBHdr _retval;
    nsresult __result = inner.CreateNewHdr(key, &_retval);
    CheckException(__result);
    return new nsIMsgDBHdrD(_retval);
  }

  /* void AddNewHdrToDB (in nsIMsgDBHdr newHdr, in boolean notify); */
  void AddNewHdrToDB(nsIMsgDBHdrD newHdr, PRBool notify){
    nsresult __result = inner.AddNewHdrToDB(newHdr ? cast(nsIMsgDBHdr)newHdr : null, notify);
    CheckException(__result);
  }

  /* nsIMsgDBHdr CopyHdrFromExistingHdr (in nsMsgKey key, in nsIMsgDBHdr existingHdr, in boolean addHdrToDB); */
  nsIMsgDBHdrD  CopyHdrFromExistingHdr(nsMsgKey key, nsIMsgDBHdrD existingHdr, PRBool addHdrToDB){
    nsIMsgDBHdr _retval;
    nsresult __result = inner.CopyHdrFromExistingHdr(key, existingHdr ? cast(nsIMsgDBHdr)existingHdr : null, addHdrToDB, &_retval);
    CheckException(__result);
    return new nsIMsgDBHdrD(_retval);
  }

  /* [noscript] void ListAllKeys (in nsMsgKeyArrayRef outputKeys); */
  void ListAllKeys(nsMsgKeyArray * outputKeys){
    nsresult __result = inner.ListAllKeys(outputKeys);
    CheckException(__result);
  }

  /* nsISimpleEnumerator EnumerateMessages (); */
  nsISimpleEnumeratorD  EnumerateMessages(){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.EnumerateMessages(&_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

  /* nsISimpleEnumerator EnumerateThreads (); */
  nsISimpleEnumeratorD  EnumerateThreads(){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.EnumerateThreads(&_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

  /* void syncCounts (); */
  void SyncCounts(){
    nsresult __result = inner.SyncCounts();
    CheckException(__result);
  }

  /* nsIMsgThread GetThreadContainingMsgHdr (in nsIMsgDBHdr msgHdr); */
  nsIMsgThreadD  GetThreadContainingMsgHdr(nsIMsgDBHdrD msgHdr){
    nsIMsgThread _retval;
    nsresult __result = inner.GetThreadContainingMsgHdr(msgHdr ? cast(nsIMsgDBHdr)msgHdr : null, &_retval);
    CheckException(__result);
    return new nsIMsgThreadD(_retval);
  }

  /* void MarkHdrRead (in nsIMsgDBHdr msgHdr, in boolean bRead, in nsIDBChangeListener instigator); */
  void MarkHdrRead(nsIMsgDBHdrD msgHdr, PRBool bRead, nsIDBChangeListenerD instigator){
    nsresult __result = inner.MarkHdrRead(msgHdr ? cast(nsIMsgDBHdr)msgHdr : null, bRead, instigator ? cast(nsIDBChangeListener)instigator : null);
    CheckException(__result);
  }

  /* void MarkHdrReplied (in nsIMsgDBHdr msgHdr, in boolean bReplied, in nsIDBChangeListener instigator); */
  void MarkHdrReplied(nsIMsgDBHdrD msgHdr, PRBool bReplied, nsIDBChangeListenerD instigator){
    nsresult __result = inner.MarkHdrReplied(msgHdr ? cast(nsIMsgDBHdr)msgHdr : null, bReplied, instigator ? cast(nsIDBChangeListener)instigator : null);
    CheckException(__result);
  }

  /* void MarkHdrMarked (in nsIMsgDBHdr msgHdr, in boolean mark, in nsIDBChangeListener instigator); */
  void MarkHdrMarked(nsIMsgDBHdrD msgHdr, PRBool mark, nsIDBChangeListenerD instigator){
    nsresult __result = inner.MarkHdrMarked(msgHdr ? cast(nsIMsgDBHdr)msgHdr : null, mark, instigator ? cast(nsIDBChangeListener)instigator : null);
    CheckException(__result);
  }

  /* void MarkMDNNeeded (in nsMsgKey key, in boolean bNeeded, in nsIDBChangeListener instigator); */
  void MarkMDNNeeded(nsMsgKey key, PRBool bNeeded, nsIDBChangeListenerD instigator){
    nsresult __result = inner.MarkMDNNeeded(key, bNeeded, instigator ? cast(nsIDBChangeListener)instigator : null);
    CheckException(__result);
  }

  /* boolean IsMDNNeeded (in nsMsgKey key); */
  PRBool IsMDNNeeded(nsMsgKey key){
    PRBool _retval;
    nsresult __result = inner.IsMDNNeeded(key, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void MarkMDNSent (in nsMsgKey key, in boolean bNeeded, in nsIDBChangeListener instigator); */
  void MarkMDNSent(nsMsgKey key, PRBool bNeeded, nsIDBChangeListenerD instigator){
    nsresult __result = inner.MarkMDNSent(key, bNeeded, instigator ? cast(nsIDBChangeListener)instigator : null);
    CheckException(__result);
  }

  /* boolean IsMDNSent (in nsMsgKey key); */
  PRBool IsMDNSent(nsMsgKey key){
    PRBool _retval;
    nsresult __result = inner.IsMDNSent(key, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void MarkRead (in nsMsgKey key, in boolean bRead, in nsIDBChangeListener instigator); */
  void MarkRead(nsMsgKey key, PRBool bRead, nsIDBChangeListenerD instigator){
    nsresult __result = inner.MarkRead(key, bRead, instigator ? cast(nsIDBChangeListener)instigator : null);
    CheckException(__result);
  }

  /* void MarkReplied (in nsMsgKey key, in boolean bReplied, in nsIDBChangeListener instigator); */
  void MarkReplied(nsMsgKey key, PRBool bReplied, nsIDBChangeListenerD instigator){
    nsresult __result = inner.MarkReplied(key, bReplied, instigator ? cast(nsIDBChangeListener)instigator : null);
    CheckException(__result);
  }

  /* void MarkForwarded (in nsMsgKey key, in boolean bForwarded, in nsIDBChangeListener instigator); */
  void MarkForwarded(nsMsgKey key, PRBool bForwarded, nsIDBChangeListenerD instigator){
    nsresult __result = inner.MarkForwarded(key, bForwarded, instigator ? cast(nsIDBChangeListener)instigator : null);
    CheckException(__result);
  }

  /* void MarkHasAttachments (in nsMsgKey key, in boolean bHasAttachments, in nsIDBChangeListener instigator); */
  void MarkHasAttachments(nsMsgKey key, PRBool bHasAttachments, nsIDBChangeListenerD instigator){
    nsresult __result = inner.MarkHasAttachments(key, bHasAttachments, instigator ? cast(nsIDBChangeListener)instigator : null);
    CheckException(__result);
  }

  /* [noscript] void MarkThreadRead (in nsIMsgThread thread, in nsIDBChangeListener instigator, in nsMsgKeyArrayPtr thoseMarked); */
  void MarkThreadRead(nsIMsgThreadD thread, nsIDBChangeListenerD instigator, nsMsgKeyArray * thoseMarked){
    nsresult __result = inner.MarkThreadRead(thread ? cast(nsIMsgThread)thread : null, instigator ? cast(nsIDBChangeListener)instigator : null, thoseMarked);
    CheckException(__result);
  }

  /* void MarkThreadIgnored (in nsIMsgThread thread, in nsMsgKey threadKey, in boolean bIgnored, in nsIDBChangeListener instigator); */
  void MarkThreadIgnored(nsIMsgThreadD thread, nsMsgKey threadKey, PRBool bIgnored, nsIDBChangeListenerD instigator){
    nsresult __result = inner.MarkThreadIgnored(thread ? cast(nsIMsgThread)thread : null, threadKey, bIgnored, instigator ? cast(nsIDBChangeListener)instigator : null);
    CheckException(__result);
  }

  /* void MarkThreadWatched (in nsIMsgThread thread, in nsMsgKey threadKey, in boolean bWatched, in nsIDBChangeListener instigator); */
  void MarkThreadWatched(nsIMsgThreadD thread, nsMsgKey threadKey, PRBool bWatched, nsIDBChangeListenerD instigator){
    nsresult __result = inner.MarkThreadWatched(thread ? cast(nsIMsgThread)thread : null, threadKey, bWatched, instigator ? cast(nsIDBChangeListener)instigator : null);
    CheckException(__result);
  }

  /* boolean IsRead (in nsMsgKey key); */
  PRBool IsRead(nsMsgKey key){
    PRBool _retval;
    nsresult __result = inner.IsRead(key, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean IsIgnored (in nsMsgKey key); */
  PRBool IsIgnored(nsMsgKey key){
    PRBool _retval;
    nsresult __result = inner.IsIgnored(key, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean IsMarked (in nsMsgKey key); */
  PRBool IsMarked(nsMsgKey key){
    PRBool _retval;
    nsresult __result = inner.IsMarked(key, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean HasAttachments (in nsMsgKey key); */
  PRBool HasAttachments(nsMsgKey key){
    PRBool _retval;
    nsresult __result = inner.HasAttachments(key, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] void MarkAllRead (in nsMsgKeyArrayPtr thoseMarked); */
  void MarkAllRead(nsMsgKeyArray * thoseMarked){
    nsresult __result = inner.MarkAllRead(thoseMarked);
    CheckException(__result);
  }

  /* [noscript] void MarkReadByDate (in PRTime startDate, in PRTime endDate, in nsMsgKeyArrayPtr markedIds); */
  void MarkReadByDate(PRTime startDate, PRTime endDate, nsMsgKeyArray * markedIds){
    nsresult __result = inner.MarkReadByDate(startDate, endDate, markedIds);
    CheckException(__result);
  }

  /* [noscript] void DeleteMessages (in nsMsgKeyArrayPtr nsMsgKeys, in nsIDBChangeListener instigator); */
  void DeleteMessages(nsMsgKeyArray * nsMsgKeys, nsIDBChangeListenerD instigator){
    nsresult __result = inner.DeleteMessages(nsMsgKeys, instigator ? cast(nsIDBChangeListener)instigator : null);
    CheckException(__result);
  }

  /* void DeleteMessage (in nsMsgKey key, in nsIDBChangeListener instigator, in boolean commit); */
  void DeleteMessage(nsMsgKey key, nsIDBChangeListenerD instigator, PRBool commit){
    nsresult __result = inner.DeleteMessage(key, instigator ? cast(nsIDBChangeListener)instigator : null, commit);
    CheckException(__result);
  }

  /* void DeleteHeader (in nsIMsgDBHdr msgHdr, in nsIDBChangeListener instigator, in boolean commit, in boolean notify); */
  void DeleteHeader(nsIMsgDBHdrD msgHdr, nsIDBChangeListenerD instigator, PRBool commit, PRBool notify){
    nsresult __result = inner.DeleteHeader(msgHdr ? cast(nsIMsgDBHdr)msgHdr : null, instigator ? cast(nsIDBChangeListener)instigator : null, commit, notify);
    CheckException(__result);
  }

  /* void RemoveHeaderMdbRow (in nsIMsgDBHdr msgHdr); */
  void RemoveHeaderMdbRow(nsIMsgDBHdrD msgHdr){
    nsresult __result = inner.RemoveHeaderMdbRow(msgHdr ? cast(nsIMsgDBHdr)msgHdr : null);
    CheckException(__result);
  }

  /* void UndoDelete (in nsIMsgDBHdr msgHdr); */
  void UndoDelete(nsIMsgDBHdrD msgHdr){
    nsresult __result = inner.UndoDelete(msgHdr ? cast(nsIMsgDBHdr)msgHdr : null);
    CheckException(__result);
  }

  /* void MarkMarked (in nsMsgKey key, in boolean mark, in nsIDBChangeListener instigator); */
  void MarkMarked(nsMsgKey key, PRBool mark, nsIDBChangeListenerD instigator){
    nsresult __result = inner.MarkMarked(key, mark, instigator ? cast(nsIDBChangeListener)instigator : null);
    CheckException(__result);
  }

  /* void MarkOffline (in nsMsgKey key, in boolean offline, in nsIDBChangeListener instigator); */
  void MarkOffline(nsMsgKey key, PRBool offline, nsIDBChangeListenerD instigator){
    nsresult __result = inner.MarkOffline(key, offline, instigator ? cast(nsIDBChangeListener)instigator : null);
    CheckException(__result);
  }

  /* void SetLabel (in nsMsgKey key, in nsMsgLabelValue label); */
  void SetLabel(nsMsgKey key, nsMsgLabelValue label){
    nsresult __result = inner.SetLabel(key, label);
    CheckException(__result);
  }

  /* void setStringProperty (in nsMsgKey aKey, in string aProperty, in string aValue); */
  void SetStringProperty(nsMsgKey aKey, char*aProperty, char*aValue){
    nsresult __result = inner.SetStringProperty(aKey, aProperty, aValue);
    CheckException(__result);
  }

  /* void MarkImapDeleted (in nsMsgKey key, in boolean deleted, in nsIDBChangeListener instigator); */
  void MarkImapDeleted(nsMsgKey key, PRBool deleted, nsIDBChangeListenerD instigator){
    nsresult __result = inner.MarkImapDeleted(key, deleted, instigator ? cast(nsIDBChangeListener)instigator : null);
    CheckException(__result);
  }

  /* readonly attribute nsMsgKey FirstNew; */
  nsMsgKey FirstNew(){
    nsMsgKey value;
    nsresult __result = inner.GetFirstNew(&value);
    CheckException(__result);
    return value;
  }

  /* attribute nsIMsgRetentionSettings msgRetentionSettings; */
  nsIMsgRetentionSettingsD  MsgRetentionSettings(){
    nsIMsgRetentionSettings value;
    nsresult __result = inner.GetMsgRetentionSettings(&value);
    CheckException(__result);
    return new nsIMsgRetentionSettingsD(value);
  }
  void MsgRetentionSettings(nsIMsgRetentionSettingsD  aMsgRetentionSettings){
    nsIMsgRetentionSettings value;
    nsresult __result = inner.SetMsgRetentionSettings(value);
    CheckException(__result);
  }

  /* void applyRetentionSettings (in nsIMsgRetentionSettings aMsgRetentionSettings, in boolean aDeleteViaFolder); */
  void ApplyRetentionSettings(nsIMsgRetentionSettingsD aMsgRetentionSettings, PRBool aDeleteViaFolder){
    nsresult __result = inner.ApplyRetentionSettings(aMsgRetentionSettings ? cast(nsIMsgRetentionSettings)aMsgRetentionSettings : null, aDeleteViaFolder);
    CheckException(__result);
  }

  /* attribute nsIMsgDownloadSettings msgDownloadSettings; */
  nsIMsgDownloadSettingsD  MsgDownloadSettings(){
    nsIMsgDownloadSettings value;
    nsresult __result = inner.GetMsgDownloadSettings(&value);
    CheckException(__result);
    return new nsIMsgDownloadSettingsD(value);
  }
  void MsgDownloadSettings(nsIMsgDownloadSettingsD  aMsgDownloadSettings){
    nsIMsgDownloadSettings value;
    nsresult __result = inner.SetMsgDownloadSettings(value);
    CheckException(__result);
  }

  /* boolean HasNew (); */
  PRBool HasNew(){
    PRBool _retval;
    nsresult __result = inner.HasNew(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void ClearNewList (in boolean notify); */
  void ClearNewList(PRBool notify){
    nsresult __result = inner.ClearNewList(notify);
    CheckException(__result);
  }

  /* void AddToNewList (in nsMsgKey key); */
  void AddToNewList(nsMsgKey key){
    nsresult __result = inner.AddToNewList(key);
    CheckException(__result);
  }

  /* attribute boolean summaryValid; */
  PRBool SummaryValid(){
    PRBool value;
    nsresult __result = inner.GetSummaryValid(&value);
    CheckException(__result);
    return value;
  }
  void SummaryValid(PRBool aSummaryValid){
    nsresult __result = inner.SetSummaryValid(aSummaryValid);
    CheckException(__result);
  }

  /* void StartBatch (); */
  void StartBatch(){
    nsresult __result = inner.StartBatch();
    CheckException(__result);
  }

  /* void EndBatch (); */
  void EndBatch(){
    nsresult __result = inner.EndBatch();
    CheckException(__result);
  }

  /* nsIMsgOfflineImapOperation GetOfflineOpForKey (in nsMsgKey messageKey, in boolean create); */
  nsIMsgOfflineImapOperationD  GetOfflineOpForKey(nsMsgKey messageKey, PRBool create){
    nsIMsgOfflineImapOperation _retval;
    nsresult __result = inner.GetOfflineOpForKey(messageKey, create, &_retval);
    CheckException(__result);
    return new nsIMsgOfflineImapOperationD(_retval);
  }

  /* void RemoveOfflineOp (in nsIMsgOfflineImapOperation op); */
  void RemoveOfflineOp(nsIMsgOfflineImapOperationD op){
    nsresult __result = inner.RemoveOfflineOp(op ? cast(nsIMsgOfflineImapOperation)op : null);
    CheckException(__result);
  }

  /* nsISimpleEnumerator EnumerateOfflineOps (); */
  nsISimpleEnumeratorD  EnumerateOfflineOps(){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.EnumerateOfflineOps(&_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

  /* [noscript] void ListAllOfflineOpIds (in nsMsgKeyArrayPtr offlineOpIds); */
  void ListAllOfflineOpIds(nsMsgKeyArray * offlineOpIds){
    nsresult __result = inner.ListAllOfflineOpIds(offlineOpIds);
    CheckException(__result);
  }

  /* [noscript] void ListAllOfflineDeletes (in nsMsgKeyArrayPtr offlineDeletes); */
  void ListAllOfflineDeletes(nsMsgKeyArray * offlineDeletes){
    nsresult __result = inner.ListAllOfflineDeletes(offlineDeletes);
    CheckException(__result);
  }

  /* [noscript] void ListAllOfflineMsgs (in nsMsgKeyArrayPtr offlineMsgs); */
  void ListAllOfflineMsgs(nsMsgKeyArray * offlineMsgs){
    nsresult __result = inner.ListAllOfflineMsgs(offlineMsgs);
    CheckException(__result);
  }

  /* void setAttributesOnPendingHdr (in nsIMsgDBHdr pendingHdr, in string property, in string propertyVal, in long flags); */
  void SetAttributesOnPendingHdr(nsIMsgDBHdrD pendingHdr, char*property, char*propertyVal, PRInt32 flags){
    nsresult __result = inner.SetAttributesOnPendingHdr(pendingHdr ? cast(nsIMsgDBHdr)pendingHdr : null, property, propertyVal, flags);
    CheckException(__result);
  }

  /* readonly attribute nsMsgKey lowWaterArticleNum; */
  nsMsgKey LowWaterArticleNum(){
    nsMsgKey value;
    nsresult __result = inner.GetLowWaterArticleNum(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsMsgKey highWaterArticleNum; */
  nsMsgKey HighWaterArticleNum(){
    nsMsgKey value;
    nsresult __result = inner.GetHighWaterArticleNum(&value);
    CheckException(__result);
    return value;
  }

  /* attribute nsMsgKey nextPseudoMsgKey; */
  nsMsgKey NextPseudoMsgKey(){
    nsMsgKey value;
    nsresult __result = inner.GetNextPseudoMsgKey(&value);
    CheckException(__result);
    return value;
  }
  void NextPseudoMsgKey(nsMsgKey aNextPseudoMsgKey){
    nsMsgKey value;
    nsresult __result = inner.SetNextPseudoMsgKey(value);
    CheckException(__result);
  }

  /* readonly attribute nsMsgKey nextFakeOfflineMsgKey; */
  nsMsgKey NextFakeOfflineMsgKey(){
    nsMsgKey value;
    nsresult __result = inner.GetNextFakeOfflineMsgKey(&value);
    CheckException(__result);
    return value;
  }

  /* [noscript] void createCollationKey (in AString sourceString, out octetPtr key, out unsigned long len); */
  void CreateCollationKey(wchar[] sourceString, out PRUint8 * key, out PRUint32 len){
    scope auto _sourceString = new AString(sourceString);
    nsresult __result = inner.CreateCollationKey(cast(nsAString*)_sourceString, &key, &len);
    CheckException(__result);
  }

  /* [noscript] long compareCollationKeys (in octetPtr key1, in unsigned long len1, in octetPtr key2, in unsigned long len2); */
  PRInt32 CompareCollationKeys(PRUint8 * key1, PRUint32 len1, PRUint8 * key2, PRUint32 len2){
    PRInt32 _retval;
    nsresult __result = inner.CompareCollationKeys(key1, len1, key2, len2, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* readonly attribute nsMsgViewFlagsTypeValue defaultViewFlags; */
  nsMsgViewFlagsTypeValue DefaultViewFlags(){
    nsMsgViewFlagsTypeValue value;
    nsresult __result = inner.GetDefaultViewFlags(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsMsgViewSortTypeValue defaultSortType; */
  nsMsgViewSortTypeValue DefaultSortType(){
    nsMsgViewSortTypeValue value;
    nsresult __result = inner.GetDefaultSortType(&value);
    CheckException(__result);
    return value;
  }

  /* attribute unsigned long msgHdrCacheSize; */
  PRUint32 MsgHdrCacheSize(){
    PRUint32 value;
    nsresult __result = inner.GetMsgHdrCacheSize(&value);
    CheckException(__result);
    return value;
  }
  void MsgHdrCacheSize(PRUint32 aMsgHdrCacheSize){
    nsresult __result = inner.SetMsgHdrCacheSize(aMsgHdrCacheSize);
    CheckException(__result);
  }

  /* attribute nsIOFileStream folderStream; */
  nsIOFileStreamD  FolderStream(){
    nsIOFileStream value;
    nsresult __result = inner.GetFolderStream(&value);
    CheckException(__result);
    return new nsIOFileStreamD(value);
  }
  void FolderStream(nsIOFileStreamD  aFolderStream){
    nsIOFileStream value;
    nsresult __result = inner.SetFolderStream(value);
    CheckException(__result);
  }

  /**
   * The list of messages currently in the NEW state.
   * 
   * If there are no such messages, a null pointer may be returned.
   * the caller should free when done using nsMemory::Free.
   */
  /* void getNewList (out unsigned long count, [array, size_is (count)] out nsMsgKey newKeys); */
  void GetNewList(out PRUint32 count, out nsMsgKey *newKeys){
    nsresult __result = inner.GetNewList(&count, &newKeys);
    CheckException(__result);
  }

  /* nsISimpleEnumerator getCachedHits (in string aSearchFolderUri); */
  nsISimpleEnumeratorD  GetCachedHits(char*aSearchFolderUri){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.GetCachedHits(aSearchFolderUri, &_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

  /* void refreshCache (in string aSearchFolderUri, in unsigned long aNumKeys, [array, size_is (aNumKeys)] in nsMsgKey aNewHits, out unsigned long aNumBadHits, [array, size_is (aNumBadHits)] out nsMsgKey aStaleHits); */
  void RefreshCache(char*aSearchFolderUri, PRUint32 aNumKeys, nsMsgKey *aNewHits, out PRUint32 aNumBadHits, out nsMsgKey *aStaleHits){
    nsresult __result = inner.RefreshCache(aSearchFolderUri, aNumKeys, aNewHits, &aNumBadHits, &aStaleHits);
    CheckException(__result);
  }

  /* void updateHdrInCache (in string aSearchFolderUri, in nsIMsgDBHdr aHdr, in boolean aAdd); */
  void UpdateHdrInCache(char*aSearchFolderUri, nsIMsgDBHdrD aHdr, PRBool aAdd){
    nsresult __result = inner.UpdateHdrInCache(aSearchFolderUri, aHdr ? cast(nsIMsgDBHdr)aHdr : null, aAdd);
    CheckException(__result);
  }

  /* boolean hdrIsInCache (in string aSearchFolderUri, in nsIMsgDBHdr aHdr); */
  PRBool HdrIsInCache(char*aSearchFolderUri, nsIMsgDBHdrD aHdr){
    PRBool _retval;
    nsresult __result = inner.HdrIsInCache(aSearchFolderUri, aHdr ? cast(nsIMsgDBHdr)aHdr : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIMsgDatabase inner;

}

