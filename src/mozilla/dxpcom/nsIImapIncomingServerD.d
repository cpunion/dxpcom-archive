/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImapIncomingServer.idl
 */

module mozilla.dxpcom.nsIImapIncomingServerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIImapIncomingServer;


public import mozilla.dxpcom.nsIImapIncomingServerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIUrlListener;

public import mozilla.dxpcom.nsIUrlListenerD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIImapUrl;

public import mozilla.dxpcom.nsIImapUrlD;

public import mozilla.xpcom.nsIEventQueue;

public import mozilla.dxpcom.nsIEventQueueD;

public import mozilla.xpcom.nsIImapProtocol;

public import mozilla.dxpcom.nsIImapProtocolD;

public import mozilla.xpcom.nsISupportsArray;

public import mozilla.dxpcom.nsISupportsArrayD;

public import mozilla.xpcom.nsIMsgFolder;

public import mozilla.dxpcom.nsIMsgFolderD;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;


/* starting wrapper class:    nsMsgImapDeleteModels */
class nsMsgImapDeleteModelsD {

  static const nsIID IID = NS_MSGIMAPDELETEMODELS_IID;


  alias nsMsgImapDeleteModels InnerType;

  this(nsMsgImapDeleteModels intr){
    this.inner = intr;
  }

  nsMsgImapDeleteModels opCast() {
    return inner;
  }

  void opAssign(nsMsgImapDeleteModels value) {
    inner = value;
  }

  enum { IMAPDelete = 0 }

  enum { MoveToTrash = 1 }

  enum { DeleteNoTrash = 2 }

private:
  nsMsgImapDeleteModels inner;

}


/* starting wrapper class:    nsIImapIncomingServer */
class nsIImapIncomingServerD : public nsISupportsD {

  static const nsIID IID = NS_IIMAPINCOMINGSERVER_IID;


  alias nsIImapIncomingServer InnerType;

  this(nsIImapIncomingServer intr){
    super(intr);
    this.inner = intr;
  }

  nsIImapIncomingServer opCast() {
    return inner;
  }

  void opAssign(nsIImapIncomingServer value) {
    inner = value;
  }

  /* attribute long maximumConnectionsNumber; */
  PRInt32 MaximumConnectionsNumber(){
    PRInt32 value;
    nsresult __result = inner.GetMaximumConnectionsNumber(&value);
    CheckException(__result);
    return value;
  }
  void MaximumConnectionsNumber(PRInt32 aMaximumConnectionsNumber){
    nsresult __result = inner.SetMaximumConnectionsNumber(aMaximumConnectionsNumber);
    CheckException(__result);
  }

  /* attribute long timeOutLimits; */
  PRInt32 TimeOutLimits(){
    PRInt32 value;
    nsresult __result = inner.GetTimeOutLimits(&value);
    CheckException(__result);
    return value;
  }
  void TimeOutLimits(PRInt32 aTimeOutLimits){
    nsresult __result = inner.SetTimeOutLimits(aTimeOutLimits);
    CheckException(__result);
  }

  /* attribute string adminUrl; */
  char* AdminUrl(){
    char* value;
    nsresult __result = inner.GetAdminUrl(&value);
    CheckException(__result);
    return value;
  }
  void AdminUrl(char* aAdminUrl){
    nsresult __result = inner.SetAdminUrl(aAdminUrl);
    CheckException(__result);
  }

  /* attribute string serverDirectory; */
  char* ServerDirectory(){
    char* value;
    nsresult __result = inner.GetServerDirectory(&value);
    CheckException(__result);
    return value;
  }
  void ServerDirectory(char* aServerDirectory){
    nsresult __result = inner.SetServerDirectory(aServerDirectory);
    CheckException(__result);
  }

  /* attribute long capabilityPref; */
  PRInt32 CapabilityPref(){
    PRInt32 value;
    nsresult __result = inner.GetCapabilityPref(&value);
    CheckException(__result);
    return value;
  }
  void CapabilityPref(PRInt32 aCapabilityPref){
    nsresult __result = inner.SetCapabilityPref(aCapabilityPref);
    CheckException(__result);
  }

  /* attribute boolean cleanupInboxOnExit; */
  PRBool CleanupInboxOnExit(){
    PRBool value;
    nsresult __result = inner.GetCleanupInboxOnExit(&value);
    CheckException(__result);
    return value;
  }
  void CleanupInboxOnExit(PRBool aCleanupInboxOnExit){
    nsresult __result = inner.SetCleanupInboxOnExit(aCleanupInboxOnExit);
    CheckException(__result);
  }

  /* attribute nsMsgImapDeleteModel deleteModel; */
  nsMsgImapDeleteModel DeleteModel(){
    nsMsgImapDeleteModel value;
    nsresult __result = inner.GetDeleteModel(&value);
    CheckException(__result);
    return value;
  }
  void DeleteModel(nsMsgImapDeleteModel aDeleteModel){
    nsMsgImapDeleteModel value;
    nsresult __result = inner.SetDeleteModel(value);
    CheckException(__result);
  }

  /* attribute boolean dualUseFolders; */
  PRBool DualUseFolders(){
    PRBool value;
    nsresult __result = inner.GetDualUseFolders(&value);
    CheckException(__result);
    return value;
  }
  void DualUseFolders(PRBool aDualUseFolders){
    nsresult __result = inner.SetDualUseFolders(aDualUseFolders);
    CheckException(__result);
  }

  /* attribute long emptyTrashThreshhold; */
  PRInt32 EmptyTrashThreshhold(){
    PRInt32 value;
    nsresult __result = inner.GetEmptyTrashThreshhold(&value);
    CheckException(__result);
    return value;
  }
  void EmptyTrashThreshhold(PRInt32 aEmptyTrashThreshhold){
    nsresult __result = inner.SetEmptyTrashThreshhold(aEmptyTrashThreshhold);
    CheckException(__result);
  }

  /* attribute string personalNamespace; */
  char* PersonalNamespace(){
    char* value;
    nsresult __result = inner.GetPersonalNamespace(&value);
    CheckException(__result);
    return value;
  }
  void PersonalNamespace(char* aPersonalNamespace){
    nsresult __result = inner.SetPersonalNamespace(aPersonalNamespace);
    CheckException(__result);
  }

  /* attribute string publicNamespace; */
  char* PublicNamespace(){
    char* value;
    nsresult __result = inner.GetPublicNamespace(&value);
    CheckException(__result);
    return value;
  }
  void PublicNamespace(char* aPublicNamespace){
    nsresult __result = inner.SetPublicNamespace(aPublicNamespace);
    CheckException(__result);
  }

  /* attribute string otherUsersNamespace; */
  char* OtherUsersNamespace(){
    char* value;
    nsresult __result = inner.GetOtherUsersNamespace(&value);
    CheckException(__result);
    return value;
  }
  void OtherUsersNamespace(char* aOtherUsersNamespace){
    nsresult __result = inner.SetOtherUsersNamespace(aOtherUsersNamespace);
    CheckException(__result);
  }

  /* attribute boolean offlineDownload; */
  PRBool OfflineDownload(){
    PRBool value;
    nsresult __result = inner.GetOfflineDownload(&value);
    CheckException(__result);
    return value;
  }
  void OfflineDownload(PRBool aOfflineDownload){
    nsresult __result = inner.SetOfflineDownload(aOfflineDownload);
    CheckException(__result);
  }

  /* attribute boolean overrideNamespaces; */
  PRBool OverrideNamespaces(){
    PRBool value;
    nsresult __result = inner.GetOverrideNamespaces(&value);
    CheckException(__result);
    return value;
  }
  void OverrideNamespaces(PRBool aOverrideNamespaces){
    nsresult __result = inner.SetOverrideNamespaces(aOverrideNamespaces);
    CheckException(__result);
  }

  /* attribute boolean usingSubscription; */
  PRBool UsingSubscription(){
    PRBool value;
    nsresult __result = inner.GetUsingSubscription(&value);
    CheckException(__result);
    return value;
  }
  void UsingSubscription(PRBool aUsingSubscription){
    nsresult __result = inner.SetUsingSubscription(aUsingSubscription);
    CheckException(__result);
  }

  /* attribute string manageMailAccountUrl; */
  char* ManageMailAccountUrl(){
    char* value;
    nsresult __result = inner.GetManageMailAccountUrl(&value);
    CheckException(__result);
    return value;
  }
  void ManageMailAccountUrl(char* aManageMailAccountUrl){
    nsresult __result = inner.SetManageMailAccountUrl(aManageMailAccountUrl);
    CheckException(__result);
  }

  /* attribute boolean fetchByChunks; */
  PRBool FetchByChunks(){
    PRBool value;
    nsresult __result = inner.GetFetchByChunks(&value);
    CheckException(__result);
    return value;
  }
  void FetchByChunks(PRBool aFetchByChunks){
    nsresult __result = inner.SetFetchByChunks(aFetchByChunks);
    CheckException(__result);
  }

  /* attribute boolean mimePartsOnDemand; */
  PRBool MimePartsOnDemand(){
    PRBool value;
    nsresult __result = inner.GetMimePartsOnDemand(&value);
    CheckException(__result);
    return value;
  }
  void MimePartsOnDemand(PRBool aMimePartsOnDemand){
    nsresult __result = inner.SetMimePartsOnDemand(aMimePartsOnDemand);
    CheckException(__result);
  }

  /* attribute boolean isAOLServer; */
  PRBool IsAOLServer(){
    PRBool value;
    nsresult __result = inner.GetIsAOLServer(&value);
    CheckException(__result);
    return value;
  }
  void IsAOLServer(PRBool aIsAOLServer){
    nsresult __result = inner.SetIsAOLServer(aIsAOLServer);
    CheckException(__result);
  }

  /* attribute boolean aOLMailboxView; */
  PRBool AOLMailboxView(){
    PRBool value;
    nsresult __result = inner.GetAOLMailboxView(&value);
    CheckException(__result);
    return value;
  }
  void AOLMailboxView(PRBool aAOLMailboxView){
    nsresult __result = inner.SetAOLMailboxView(aAOLMailboxView);
    CheckException(__result);
  }

  /* attribute boolean storeReadMailInPFC; */
  PRBool StoreReadMailInPFC(){
    PRBool value;
    nsresult __result = inner.GetStoreReadMailInPFC(&value);
    CheckException(__result);
    return value;
  }
  void StoreReadMailInPFC(PRBool aStoreReadMailInPFC){
    nsresult __result = inner.SetStoreReadMailInPFC(aStoreReadMailInPFC);
    CheckException(__result);
  }

  /* attribute boolean storeSentMailInPFC; */
  PRBool StoreSentMailInPFC(){
    PRBool value;
    nsresult __result = inner.GetStoreSentMailInPFC(&value);
    CheckException(__result);
    return value;
  }
  void StoreSentMailInPFC(PRBool aStoreSentMailInPFC){
    nsresult __result = inner.SetStoreSentMailInPFC(aStoreSentMailInPFC);
    CheckException(__result);
  }

  /* attribute boolean useIdle; */
  PRBool UseIdle(){
    PRBool value;
    nsresult __result = inner.GetUseIdle(&value);
    CheckException(__result);
    return value;
  }
  void UseIdle(PRBool aUseIdle){
    nsresult __result = inner.SetUseIdle(aUseIdle);
    CheckException(__result);
  }

  /* attribute wstring trashFolderName; */
  PRUnichar* TrashFolderName(){
    PRUnichar* value;
    nsresult __result = inner.GetTrashFolderName(&value);
    CheckException(__result);
    return value;
  }
  void TrashFolderName(PRUnichar* aTrashFolderName){
    nsresult __result = inner.SetTrashFolderName(aTrashFolderName);
    CheckException(__result);
  }

  /* boolean getIsPFC (in string folderName); */
  PRBool GetIsPFC(char*folderName){
    PRBool _retval;
    nsresult __result = inner.GetIsPFC(folderName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsIMsgFolder getPFC (in boolean createIfMissing); */
  nsIMsgFolderD  GetPFC(PRBool createIfMissing){
    nsIMsgFolder _retval;
    nsresult __result = inner.GetPFC(createIfMissing, &_retval);
    CheckException(__result);
    return new nsIMsgFolderD(_retval);
  }

  /* attribute boolean downloadBodiesOnGetNewMail; */
  PRBool DownloadBodiesOnGetNewMail(){
    PRBool value;
    nsresult __result = inner.GetDownloadBodiesOnGetNewMail(&value);
    CheckException(__result);
    return value;
  }
  void DownloadBodiesOnGetNewMail(PRBool aDownloadBodiesOnGetNewMail){
    nsresult __result = inner.SetDownloadBodiesOnGetNewMail(aDownloadBodiesOnGetNewMail);
    CheckException(__result);
  }

  /* attribute boolean autoSyncOfflineStores; */
  PRBool AutoSyncOfflineStores(){
    PRBool value;
    nsresult __result = inner.GetAutoSyncOfflineStores(&value);
    CheckException(__result);
    return value;
  }
  void AutoSyncOfflineStores(PRBool aAutoSyncOfflineStores){
    nsresult __result = inner.SetAutoSyncOfflineStores(aAutoSyncOfflineStores);
    CheckException(__result);
  }

  /* void GetImapConnectionAndLoadUrl (in nsIEventQueue aClientEventQueue, in nsIImapUrl aImapUrl, in nsISupports aConsumer); */
  void GetImapConnectionAndLoadUrl(nsIEventQueueD aClientEventQueue, nsIImapUrlD aImapUrl, nsISupportsD aConsumer){
    nsresult __result = inner.GetImapConnectionAndLoadUrl(aClientEventQueue ? cast(nsIEventQueue)aClientEventQueue : null, aImapUrl ? cast(nsIImapUrl)aImapUrl : null, aConsumer ? cast(nsISupports)aConsumer : null);
    CheckException(__result);
  }

  /* void RemoveConnection (in nsIImapProtocol aImapConnection); */
  void RemoveConnection(nsIImapProtocolD aImapConnection){
    nsresult __result = inner.RemoveConnection(aImapConnection ? cast(nsIImapProtocol)aImapConnection : null);
    CheckException(__result);
  }

  /* void ResetNamespaceReferences (); */
  void ResetNamespaceReferences(){
    nsresult __result = inner.ResetNamespaceReferences();
    CheckException(__result);
  }

  /* void pseudoInterruptMsgLoad (in nsIMsgFolder aImapFolder, in nsIMsgWindow aMsgWindow, out boolean interrupted); */
  void PseudoInterruptMsgLoad(nsIMsgFolderD aImapFolder, nsIMsgWindowD aMsgWindow, out PRBool interrupted){
    nsresult __result = inner.PseudoInterruptMsgLoad(aImapFolder ? cast(nsIMsgFolder)aImapFolder : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, &interrupted);
    CheckException(__result);
  }

  /* void ResetConnection (in string folderName); */
  void ResetConnection(char*folderName){
    nsresult __result = inner.ResetConnection(folderName);
    CheckException(__result);
  }

  /* void CloseConnectionForFolder (in nsIMsgFolder aMsgFolder); */
  void CloseConnectionForFolder(nsIMsgFolderD aMsgFolder){
    nsresult __result = inner.CloseConnectionForFolder(aMsgFolder ? cast(nsIMsgFolder)aMsgFolder : null);
    CheckException(__result);
  }

  /* void reDiscoverAllFolders (); */
  void ReDiscoverAllFolders(){
    nsresult __result = inner.ReDiscoverAllFolders();
    CheckException(__result);
  }

  /* nsIURI subscribeToFolder (in wstring name, in boolean subscribe); */
  nsIURID  SubscribeToFolder(PRUnichar*name, PRBool subscribe){
    nsIURI _retval;
    nsresult __result = inner.SubscribeToFolder(name, subscribe, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /* nsIMsgFolder GetReadMailPFC (in boolean createIfMissing); */
  nsIMsgFolderD  GetReadMailPFC(PRBool createIfMissing){
    nsIMsgFolder _retval;
    nsresult __result = inner.GetReadMailPFC(createIfMissing, &_retval);
    CheckException(__result);
    return new nsIMsgFolderD(_retval);
  }

  /* nsIMsgFolder GetSentMailPFC (in boolean createIfMissing); */
  nsIMsgFolderD  GetSentMailPFC(PRBool createIfMissing){
    nsIMsgFolder _retval;
    nsresult __result = inner.GetSentMailPFC(createIfMissing, &_retval);
    CheckException(__result);
    return new nsIMsgFolderD(_retval);
  }

  /* void GetNewMessagesForNonInboxFolders (in nsIMsgFolder aRootFolder, in nsIMsgWindow aWindow, in boolean forceAllFolders, in boolean performingBiff); */
  void GetNewMessagesForNonInboxFolders(nsIMsgFolderD aRootFolder, nsIMsgWindowD aWindow, PRBool forceAllFolders, PRBool performingBiff){
    nsresult __result = inner.GetNewMessagesForNonInboxFolders(aRootFolder ? cast(nsIMsgFolder)aRootFolder : null, aWindow ? cast(nsIMsgWindow)aWindow : null, forceAllFolders, performingBiff);
    CheckException(__result);
  }

  /* attribute boolean doingLsub; */
  PRBool DoingLsub(){
    PRBool value;
    nsresult __result = inner.GetDoingLsub(&value);
    CheckException(__result);
    return value;
  }
  void DoingLsub(PRBool aDoingLsub){
    nsresult __result = inner.SetDoingLsub(aDoingLsub);
    CheckException(__result);
  }

  /* void allowFolderConversion (out boolean allowConversion); */
  void AllowFolderConversion(out PRBool allowConversion){
    nsresult __result = inner.AllowFolderConversion(&allowConversion);
    CheckException(__result);
  }

  /* void convertFolderName (in string originalName, out wstring convertedName); */
  void ConvertFolderName(char*originalName, out PRUnichar*convertedName){
    nsresult __result = inner.ConvertFolderName(originalName, &convertedName);
    CheckException(__result);
  }

  /* void hideFolderName (in string originalName, out boolean hideFolder); */
  void HideFolderName(char*originalName, out PRBool hideFolder){
    nsresult __result = inner.HideFolderName(originalName, &hideFolder);
    CheckException(__result);
  }

  /* string getTrashFolderByRedirectorType (); */
  char* GetTrashFolderByRedirectorType(){
    char* _retval;
    nsresult __result = inner.GetTrashFolderByRedirectorType(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* attribute string redirectorType; */
  char* RedirectorType(){
    char* value;
    nsresult __result = inner.GetRedirectorType(&value);
    CheckException(__result);
    return value;
  }
  void RedirectorType(char* aRedirectorType){
    nsresult __result = inner.SetRedirectorType(aRedirectorType);
    CheckException(__result);
  }

  /* string getUriWithNamespacePrefixIfNecessary (in long namespaceType, in string originalUri); */
  char* GetUriWithNamespacePrefixIfNecessary(PRInt32 namespaceType, char*originalUri){
    char* _retval;
    nsresult __result = inner.GetUriWithNamespacePrefixIfNecessary(namespaceType, originalUri, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* attribute boolean shuttingDown; */
  PRBool ShuttingDown(){
    PRBool value;
    nsresult __result = inner.GetShuttingDown(&value);
    CheckException(__result);
    return value;
  }
  void ShuttingDown(PRBool aShuttingDown){
    nsresult __result = inner.SetShuttingDown(aShuttingDown);
    CheckException(__result);
  }

private:
  nsIImapIncomingServer inner;

}

