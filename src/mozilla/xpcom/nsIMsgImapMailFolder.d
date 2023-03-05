/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgImapMailFolder.idl
 */

module mozilla.xpcom.nsIMsgImapMailFolder;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIMsgFolder;

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */

public import mozilla.xpcom.nsIImapIncomingServer; /* forward declaration */

public import mozilla.xpcom.nsIMsgParseMailMsgState; /* forward declaration */


/* starting interface:    nsIMsgImapFolderProps */
const char[] NS_IMSGIMAPFOLDERPROPS_IID_STR = "239472a2-6e8f-46f0-9507-887998da49e5";

const nsIID NS_IMSGIMAPFOLDERPROPS_IID= 
  {0x239472a2, 0x6e8f, 0x46f0, 
    [ 0x95, 0x07, 0x88, 0x79, 0x98, 0xda, 0x49, 0xe5 ]};

extern(Windows)
interface nsIMsgImapFolderProps : nsISupports {
  static const char[] IID_STR = NS_IMSGIMAPFOLDERPROPS_IID_STR;
  static const nsIID IID = NS_IMSGIMAPFOLDERPROPS_IID;

  /* void setFolderType (in wstring folderType); */
  nsresult SetFolderType(PRUnichar *folderType);

  /* void setFolderTypeDescription (in wstring folderTypeDescription); */
  nsresult SetFolderTypeDescription(PRUnichar *folderTypeDescription);

  /* void setFolderPermissions (in wstring permissions); */
  nsresult SetFolderPermissions(PRUnichar *permissions);

  /* void serverDoesntSupportACL (); */
  nsresult ServerDoesntSupportACL();

  /**
     * Toggles the display of quota information in the Quota tab of the folder properties.
     * If on, the quota root, usage, and percentage used are displayed.
     * If off, a status message is displayed. The status message can be set with setQuotaStatus().
     * @param showData If true, display the quota root, usage information and usage percentage bar.
     * If false, display the status message.
     */
  /* void showQuotaData (in boolean showData); */
  nsresult ShowQuotaData(PRBool showData);

  /**
     * Sets the status string displayed in the Quota tab of the folder properties if quota
     * information is not visible.
     */
  /* void setQuotaStatus (in AString folderQuotaStatus); */
  nsresult SetQuotaStatus(nsAString * folderQuotaStatus);

  /**
     * Updates the quota data displayed in the Quota tab.
     */
  /* void setQuotaData (in ACString quotaroot, in unsigned long usedKB, in unsigned long maxKB); */
  nsresult SetQuotaData(nsACString * quotaroot, PRUint32 usedKB, PRUint32 maxKB);

}


/* starting interface:    nsIMsgImapMailFolder */
const char[] NS_IMSGIMAPMAILFOLDER_IID_STR = "7bf6ecd1-dc71-4472-8ea1-a081511ee17f";

const nsIID NS_IMSGIMAPMAILFOLDER_IID= 
  {0x7bf6ecd1, 0xdc71, 0x4472, 
    [ 0x8e, 0xa1, 0xa0, 0x81, 0x51, 0x1e, 0xe1, 0x7f ]};

extern(Windows)
interface nsIMsgImapMailFolder : nsISupports {
  static const char[] IID_STR = NS_IMSGIMAPMAILFOLDER_IID_STR;
  static const nsIID IID = NS_IMSGIMAPMAILFOLDER_IID;

  /* void removeSubFolder (in nsIMsgFolder folder); */
  nsresult RemoveSubFolder(nsIMsgFolder folder);

  /* void createClientSubfolderInfo (in string folderName, in wchar hierarchyDelimiter, in long flags, in boolean suppressNotification); */
  nsresult CreateClientSubfolderInfo(char *folderName, PRUnichar hierarchyDelimiter, PRInt32 flags, PRBool suppressNotification);

  /* void list (); */
  nsresult List();

  /* void renameLocal (in string newname, in nsIMsgFolder parent); */
  nsresult RenameLocal(char *newname, nsIMsgFolder parent);

  /* void prepareToRename (); */
  nsresult PrepareToRename();

  /* void performExpand (in nsIMsgWindow aMsgWindow); */
  nsresult PerformExpand(nsIMsgWindow aMsgWindow);

  /* void recursiveCloseActiveConnections (in nsIImapIncomingServer aImapServer); */
  nsresult RecursiveCloseActiveConnections(nsIImapIncomingServer aImapServer);

  /* void renameClient (in nsIMsgWindow msgWindow, in nsIMsgFolder msgFolder, in string oldName, in string newName); */
  nsresult RenameClient(nsIMsgWindow msgWindow, nsIMsgFolder msgFolder, char *oldName, char *newName);

  /* void storeImapFlags (in long aFlags, in boolean aAddFlags, [array, size_is (aNumKeys)] in nsMsgKey aKeysToFlag, in unsigned long aNumKeys, in nsIUrlListener aUrlListener); */
  nsresult StoreImapFlags(PRInt32 aFlags, PRBool aAddFlags, nsMsgKey *aKeysToFlag, PRUint32 aNumKeys, nsIUrlListener aUrlListener);

  /* void setImapFlags (in string uids, in long flags, out nsIURI url); */
  nsresult SetImapFlags(char *uids, PRInt32 flags, nsIURI *url);

  /* void replayOfflineMoveCopy ([array, size_is (numKeys)] in nsMsgKey keys, in unsigned long numKeys, in boolean isMove, in nsIMsgFolder aDstFolder, in nsIUrlListener aUrlListener, in nsIMsgWindow aWindow); */
  nsresult ReplayOfflineMoveCopy(nsMsgKey *keys, PRUint32 numKeys, PRBool isMove, nsIMsgFolder aDstFolder, nsIUrlListener aUrlListener, nsIMsgWindow aWindow);

  /* void playbackOfflineFolderCreate (in wstring folderName, in nsIMsgWindow aWindow, out nsIURI url); */
  nsresult PlaybackOfflineFolderCreate(PRUnichar *folderName, nsIMsgWindow aWindow, nsIURI *url);

  /* void liteSelect (in nsIUrlListener aUrlListener); */
  nsresult LiteSelect(nsIUrlListener aUrlListener);

  /* void fillInFolderProps (in nsIMsgImapFolderProps aFolderProps); */
  nsresult FillInFolderProps(nsIMsgImapFolderProps aFolderProps);

  /* void resetNamespaceReferences (); */
  nsresult ResetNamespaceReferences();

  /* void folderPrivileges (in nsIMsgWindow aWindow); */
  nsresult FolderPrivileges(nsIMsgWindow aWindow);

  /* nsIMsgImapMailFolder findOnlineSubFolder (in string onlineName); */
  nsresult FindOnlineSubFolder(char *onlineName, nsIMsgImapMailFolder *_retval);

  /* void addFolderRights (in string userName, in string rights); */
  nsresult AddFolderRights(char *userName, char *rights);

  /* void refreshFolderRights (); */
  nsresult RefreshFolderRights();

  /* void updateStatus (in nsIUrlListener aListener, in nsIMsgWindow aMsgWindow); */
  nsresult UpdateStatus(nsIUrlListener aListener, nsIMsgWindow aMsgWindow);

  /* nsIURI issueCommandOnMsgs (in string command, in string uids, in nsIMsgWindow aWindow); */
  nsresult IssueCommandOnMsgs(char *command, char *uids, nsIMsgWindow aWindow, nsIURI *_retval);

  /* nsIURI fetchCustomMsgAttribute (in string msgAttribute, in string uids, in nsIMsgWindow aWindow); */
  nsresult FetchCustomMsgAttribute(char *msgAttribute, char *uids, nsIMsgWindow aWindow, nsIURI *_retval);

  /* nsIURI storeCustomKeywords (in nsIMsgWindow aMsgWindow, in string aFlagsToAdd, in string aFlagsToSubtract, [array, size_is (aNumKeys)] in nsMsgKey aKeysToStore, in unsigned long aNumKeys); */
  nsresult StoreCustomKeywords(nsIMsgWindow aMsgWindow, char *aFlagsToAdd, char *aFlagsToSubtract, nsMsgKey *aKeysToStore, PRUint32 aNumKeys, nsIURI *_retval);

  /* void notifyIfNewMail (); */
  nsresult NotifyIfNewMail();

  /* attribute boolean verifiedAsOnlineFolder; */
  nsresult GetVerifiedAsOnlineFolder(PRBool *aVerifiedAsOnlineFolder);
  nsresult SetVerifiedAsOnlineFolder(PRBool aVerifiedAsOnlineFolder);

  /* attribute boolean explicitlyVerify; */
  nsresult GetExplicitlyVerify(PRBool *aExplicitlyVerify);
  nsresult SetExplicitlyVerify(PRBool aExplicitlyVerify);

  /* attribute wchar hierarchyDelimiter; */
  nsresult GetHierarchyDelimiter(PRUnichar *aHierarchyDelimiter);
  nsresult SetHierarchyDelimiter(PRUnichar aHierarchyDelimiter);

  /* attribute long boxFlags; */
  nsresult GetBoxFlags(PRInt32 *aBoxFlags);
  nsresult SetBoxFlags(PRInt32 aBoxFlags);

  /* attribute string onlineName; */
  nsresult GetOnlineName(char * *aOnlineName);
  nsresult SetOnlineName(char * aOnlineName);

  /* attribute boolean isNamespace; */
  nsresult GetIsNamespace(PRBool *aIsNamespace);
  nsresult SetIsNamespace(PRBool aIsNamespace);

  /* readonly attribute boolean canIOpenThisFolder; */
  nsresult GetCanIOpenThisFolder(PRBool *aCanIOpenThisFolder);

  /* attribute string adminUrl; */
  nsresult GetAdminUrl(char * *aAdminUrl);
  nsresult SetAdminUrl(char * aAdminUrl);

  /* readonly attribute boolean hasAdminUrl; */
  nsresult GetHasAdminUrl(PRBool *aHasAdminUrl);

  /* attribute boolean performingBiff; */
  nsresult GetPerformingBiff(PRBool *aPerformingBiff);
  nsresult SetPerformingBiff(PRBool aPerformingBiff);

  /* readonly attribute nsIMsgParseMailMsgState hdrParser; */
  nsresult GetHdrParser(nsIMsgParseMailMsgState  *aHdrParser);

  /**
   * Quota
   * |valid| indicates whether the server has provided quota information on
   * this folder. This can be false
   * - if the server does not supports quotas,
   * - if there are no storage quotas on this folder, or
   * - if the folder has never been opened.
   * If it is true, the folder has a storage quota and the usedKB and
   * maxKB attributes are set to the values provided by the server
   * (in kilobytes), for this quota root.
   */
  /* void getQuota (out boolean valid, out unsigned long usedKB, out unsigned long maxKB); */
  nsresult GetQuota(PRBool *valid, PRUint32 *usedKB, PRUint32 *maxKB);

}

