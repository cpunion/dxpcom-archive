/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImapIncomingServer.idl
 */

module mozilla.xpcom.nsIImapIncomingServer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIUrlListener; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIImapUrl; /* forward declaration */

public import mozilla.xpcom.nsIEventQueue; /* forward declaration */

public import mozilla.xpcom.nsIImapProtocol; /* forward declaration */

public import mozilla.xpcom.nsISupportsArray; /* forward declaration */

public import mozilla.xpcom.nsIMsgFolder; /* forward declaration */

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */

alias PRInt32 nsMsgImapDeleteModel;


/* starting interface:    nsMsgImapDeleteModels */
const char[] NS_MSGIMAPDELETEMODELS_IID_STR = "bbfc33de-fe89-11d3-a564-0060b0fc04b7";

const nsIID NS_MSGIMAPDELETEMODELS_IID= 
  {0xbbfc33de, 0xfe89, 0x11d3, 
    [ 0xa5, 0x64, 0x00, 0x60, 0xb0, 0xfc, 0x04, 0xb7 ]};

extern(Windows)
interface nsMsgImapDeleteModels {
  static const char[] IID_STR = NS_MSGIMAPDELETEMODELS_IID_STR;
  static const nsIID IID = NS_MSGIMAPDELETEMODELS_IID;

  enum { IMAPDelete = 0 };

  enum { MoveToTrash = 1 };

  enum { DeleteNoTrash = 2 };

}


/* starting interface:    nsIImapIncomingServer */
const char[] NS_IIMAPINCOMINGSERVER_IID_STR = "e2edee9e-5660-46d5-965b-b824cc81a335";

const nsIID NS_IIMAPINCOMINGSERVER_IID= 
  {0xe2edee9e, 0x5660, 0x46d5, 
    [ 0x96, 0x5b, 0xb8, 0x24, 0xcc, 0x81, 0xa3, 0x35 ]};

extern(Windows)
interface nsIImapIncomingServer : nsISupports {
  static const char[] IID_STR = NS_IIMAPINCOMINGSERVER_IID_STR;
  static const nsIID IID = NS_IIMAPINCOMINGSERVER_IID;

  /* attribute long maximumConnectionsNumber; */
  nsresult GetMaximumConnectionsNumber(PRInt32 *aMaximumConnectionsNumber);
  nsresult SetMaximumConnectionsNumber(PRInt32 aMaximumConnectionsNumber);

  /* attribute long timeOutLimits; */
  nsresult GetTimeOutLimits(PRInt32 *aTimeOutLimits);
  nsresult SetTimeOutLimits(PRInt32 aTimeOutLimits);

  /* attribute string adminUrl; */
  nsresult GetAdminUrl(char * *aAdminUrl);
  nsresult SetAdminUrl(char * aAdminUrl);

  /* attribute string serverDirectory; */
  nsresult GetServerDirectory(char * *aServerDirectory);
  nsresult SetServerDirectory(char * aServerDirectory);

  /* attribute long capabilityPref; */
  nsresult GetCapabilityPref(PRInt32 *aCapabilityPref);
  nsresult SetCapabilityPref(PRInt32 aCapabilityPref);

  /* attribute boolean cleanupInboxOnExit; */
  nsresult GetCleanupInboxOnExit(PRBool *aCleanupInboxOnExit);
  nsresult SetCleanupInboxOnExit(PRBool aCleanupInboxOnExit);

  /* attribute nsMsgImapDeleteModel deleteModel; */
  nsresult GetDeleteModel(nsMsgImapDeleteModel *aDeleteModel);
  nsresult SetDeleteModel(nsMsgImapDeleteModel aDeleteModel);

  /* attribute boolean dualUseFolders; */
  nsresult GetDualUseFolders(PRBool *aDualUseFolders);
  nsresult SetDualUseFolders(PRBool aDualUseFolders);

  /* attribute long emptyTrashThreshhold; */
  nsresult GetEmptyTrashThreshhold(PRInt32 *aEmptyTrashThreshhold);
  nsresult SetEmptyTrashThreshhold(PRInt32 aEmptyTrashThreshhold);

  /* attribute string personalNamespace; */
  nsresult GetPersonalNamespace(char * *aPersonalNamespace);
  nsresult SetPersonalNamespace(char * aPersonalNamespace);

  /* attribute string publicNamespace; */
  nsresult GetPublicNamespace(char * *aPublicNamespace);
  nsresult SetPublicNamespace(char * aPublicNamespace);

  /* attribute string otherUsersNamespace; */
  nsresult GetOtherUsersNamespace(char * *aOtherUsersNamespace);
  nsresult SetOtherUsersNamespace(char * aOtherUsersNamespace);

  /* attribute boolean offlineDownload; */
  nsresult GetOfflineDownload(PRBool *aOfflineDownload);
  nsresult SetOfflineDownload(PRBool aOfflineDownload);

  /* attribute boolean overrideNamespaces; */
  nsresult GetOverrideNamespaces(PRBool *aOverrideNamespaces);
  nsresult SetOverrideNamespaces(PRBool aOverrideNamespaces);

  /* attribute boolean usingSubscription; */
  nsresult GetUsingSubscription(PRBool *aUsingSubscription);
  nsresult SetUsingSubscription(PRBool aUsingSubscription);

  /* attribute string manageMailAccountUrl; */
  nsresult GetManageMailAccountUrl(char * *aManageMailAccountUrl);
  nsresult SetManageMailAccountUrl(char * aManageMailAccountUrl);

  /* attribute boolean fetchByChunks; */
  nsresult GetFetchByChunks(PRBool *aFetchByChunks);
  nsresult SetFetchByChunks(PRBool aFetchByChunks);

  /* attribute boolean mimePartsOnDemand; */
  nsresult GetMimePartsOnDemand(PRBool *aMimePartsOnDemand);
  nsresult SetMimePartsOnDemand(PRBool aMimePartsOnDemand);

  /* attribute boolean isAOLServer; */
  nsresult GetIsAOLServer(PRBool *aIsAOLServer);
  nsresult SetIsAOLServer(PRBool aIsAOLServer);

  /* attribute boolean aOLMailboxView; */
  nsresult GetAOLMailboxView(PRBool *aAOLMailboxView);
  nsresult SetAOLMailboxView(PRBool aAOLMailboxView);

  /* attribute boolean storeReadMailInPFC; */
  nsresult GetStoreReadMailInPFC(PRBool *aStoreReadMailInPFC);
  nsresult SetStoreReadMailInPFC(PRBool aStoreReadMailInPFC);

  /* attribute boolean storeSentMailInPFC; */
  nsresult GetStoreSentMailInPFC(PRBool *aStoreSentMailInPFC);
  nsresult SetStoreSentMailInPFC(PRBool aStoreSentMailInPFC);

  /* attribute boolean useIdle; */
  nsresult GetUseIdle(PRBool *aUseIdle);
  nsresult SetUseIdle(PRBool aUseIdle);

  /* attribute wstring trashFolderName; */
  nsresult GetTrashFolderName(PRUnichar * *aTrashFolderName);
  nsresult SetTrashFolderName(PRUnichar * aTrashFolderName);

  /* boolean getIsPFC (in string folderName); */
  nsresult GetIsPFC(char *folderName, PRBool *_retval);

  /* nsIMsgFolder getPFC (in boolean createIfMissing); */
  nsresult GetPFC(PRBool createIfMissing, nsIMsgFolder *_retval);

  /* attribute boolean downloadBodiesOnGetNewMail; */
  nsresult GetDownloadBodiesOnGetNewMail(PRBool *aDownloadBodiesOnGetNewMail);
  nsresult SetDownloadBodiesOnGetNewMail(PRBool aDownloadBodiesOnGetNewMail);

  /* attribute boolean autoSyncOfflineStores; */
  nsresult GetAutoSyncOfflineStores(PRBool *aAutoSyncOfflineStores);
  nsresult SetAutoSyncOfflineStores(PRBool aAutoSyncOfflineStores);

  /* void GetImapConnectionAndLoadUrl (in nsIEventQueue aClientEventQueue, in nsIImapUrl aImapUrl, in nsISupports aConsumer); */
  nsresult GetImapConnectionAndLoadUrl(nsIEventQueue aClientEventQueue, nsIImapUrl aImapUrl, nsISupports aConsumer);

  /* void RemoveConnection (in nsIImapProtocol aImapConnection); */
  nsresult RemoveConnection(nsIImapProtocol aImapConnection);

  /* void ResetNamespaceReferences (); */
  nsresult ResetNamespaceReferences();

  /* void pseudoInterruptMsgLoad (in nsIMsgFolder aImapFolder, in nsIMsgWindow aMsgWindow, out boolean interrupted); */
  nsresult PseudoInterruptMsgLoad(nsIMsgFolder aImapFolder, nsIMsgWindow aMsgWindow, PRBool *interrupted);

  /* void ResetConnection (in string folderName); */
  nsresult ResetConnection(char *folderName);

  /* void CloseConnectionForFolder (in nsIMsgFolder aMsgFolder); */
  nsresult CloseConnectionForFolder(nsIMsgFolder aMsgFolder);

  /* void reDiscoverAllFolders (); */
  nsresult ReDiscoverAllFolders();

  /* nsIURI subscribeToFolder (in wstring name, in boolean subscribe); */
  nsresult SubscribeToFolder(PRUnichar *name, PRBool subscribe, nsIURI *_retval);

  /* nsIMsgFolder GetReadMailPFC (in boolean createIfMissing); */
  nsresult GetReadMailPFC(PRBool createIfMissing, nsIMsgFolder *_retval);

  /* nsIMsgFolder GetSentMailPFC (in boolean createIfMissing); */
  nsresult GetSentMailPFC(PRBool createIfMissing, nsIMsgFolder *_retval);

  /* void GetNewMessagesForNonInboxFolders (in nsIMsgFolder aRootFolder, in nsIMsgWindow aWindow, in boolean forceAllFolders, in boolean performingBiff); */
  nsresult GetNewMessagesForNonInboxFolders(nsIMsgFolder aRootFolder, nsIMsgWindow aWindow, PRBool forceAllFolders, PRBool performingBiff);

  /* attribute boolean doingLsub; */
  nsresult GetDoingLsub(PRBool *aDoingLsub);
  nsresult SetDoingLsub(PRBool aDoingLsub);

  /* void allowFolderConversion (out boolean allowConversion); */
  nsresult AllowFolderConversion(PRBool *allowConversion);

  /* void convertFolderName (in string originalName, out wstring convertedName); */
  nsresult ConvertFolderName(char *originalName, PRUnichar **convertedName);

  /* void hideFolderName (in string originalName, out boolean hideFolder); */
  nsresult HideFolderName(char *originalName, PRBool *hideFolder);

  /* string getTrashFolderByRedirectorType (); */
  nsresult GetTrashFolderByRedirectorType(char **_retval);

  /* attribute string redirectorType; */
  nsresult GetRedirectorType(char * *aRedirectorType);
  nsresult SetRedirectorType(char * aRedirectorType);

  /* string getUriWithNamespacePrefixIfNecessary (in long namespaceType, in string originalUri); */
  nsresult GetUriWithNamespacePrefixIfNecessary(PRInt32 namespaceType, char *originalUri, char **_retval);

  /* attribute boolean shuttingDown; */
  nsresult GetShuttingDown(PRBool *aShuttingDown);
  nsresult SetShuttingDown(PRBool aShuttingDown);

}

