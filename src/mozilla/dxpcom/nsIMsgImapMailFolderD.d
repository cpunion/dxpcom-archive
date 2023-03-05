/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgImapMailFolder.idl
 */

module mozilla.dxpcom.nsIMsgImapMailFolderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgImapMailFolder;


public import mozilla.dxpcom.nsIMsgImapMailFolderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIMsgFolder;
public import mozilla.dxpcom.nsIMsgFolderD;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;

public import mozilla.xpcom.nsIImapIncomingServer;

public import mozilla.dxpcom.nsIImapIncomingServerD;

public import mozilla.xpcom.nsIMsgParseMailMsgState;

public import mozilla.dxpcom.nsIMsgParseMailMsgStateD;


/* starting wrapper class:    nsIMsgImapFolderProps */
class nsIMsgImapFolderPropsD : public nsISupportsD {

  static const nsIID IID = NS_IMSGIMAPFOLDERPROPS_IID;


  alias nsIMsgImapFolderProps InnerType;

  this(nsIMsgImapFolderProps intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgImapFolderProps opCast() {
    return inner;
  }

  void opAssign(nsIMsgImapFolderProps value) {
    inner = value;
  }

  /* void setFolderType (in wstring folderType); */
  void SetFolderType(PRUnichar*folderType){
    nsresult __result = inner.SetFolderType(folderType);
    CheckException(__result);
  }

  /* void setFolderTypeDescription (in wstring folderTypeDescription); */
  void SetFolderTypeDescription(PRUnichar*folderTypeDescription){
    nsresult __result = inner.SetFolderTypeDescription(folderTypeDescription);
    CheckException(__result);
  }

  /* void setFolderPermissions (in wstring permissions); */
  void SetFolderPermissions(PRUnichar*permissions){
    nsresult __result = inner.SetFolderPermissions(permissions);
    CheckException(__result);
  }

  /* void serverDoesntSupportACL (); */
  void ServerDoesntSupportACL(){
    nsresult __result = inner.ServerDoesntSupportACL();
    CheckException(__result);
  }

  /**
     * Toggles the display of quota information in the Quota tab of the folder properties.
     * If on, the quota root, usage, and percentage used are displayed.
     * If off, a status message is displayed. The status message can be set with setQuotaStatus().
     * @param showData If true, display the quota root, usage information and usage percentage bar.
     * If false, display the status message.
     */
  /* void showQuotaData (in boolean showData); */
  void ShowQuotaData(PRBool showData){
    nsresult __result = inner.ShowQuotaData(showData);
    CheckException(__result);
  }

  /**
     * Sets the status string displayed in the Quota tab of the folder properties if quota
     * information is not visible.
     */
  /* void setQuotaStatus (in AString folderQuotaStatus); */
  void SetQuotaStatus(wchar[] folderQuotaStatus){
    scope auto _folderQuotaStatus = new AString(folderQuotaStatus);
    nsresult __result = inner.SetQuotaStatus(cast(nsAString*)_folderQuotaStatus);
    CheckException(__result);
  }

  /**
     * Updates the quota data displayed in the Quota tab.
     */
  /* void setQuotaData (in ACString quotaroot, in unsigned long usedKB, in unsigned long maxKB); */
  void SetQuotaData(char[] quotaroot, PRUint32 usedKB, PRUint32 maxKB){
    scope auto _quotaroot = new ACString(quotaroot);
    nsresult __result = inner.SetQuotaData(cast(nsACString*)_quotaroot, usedKB, maxKB);
    CheckException(__result);
  }

private:
  nsIMsgImapFolderProps inner;

}


/* starting wrapper class:    nsIMsgImapMailFolder */
class nsIMsgImapMailFolderD : public nsISupportsD {

  static const nsIID IID = NS_IMSGIMAPMAILFOLDER_IID;


  alias nsIMsgImapMailFolder InnerType;

  this(nsIMsgImapMailFolder intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgImapMailFolder opCast() {
    return inner;
  }

  void opAssign(nsIMsgImapMailFolder value) {
    inner = value;
  }

  /* void removeSubFolder (in nsIMsgFolder folder); */
  void RemoveSubFolder(nsIMsgFolderD folder){
    nsresult __result = inner.RemoveSubFolder(folder ? cast(nsIMsgFolder)folder : null);
    CheckException(__result);
  }

  /* void createClientSubfolderInfo (in string folderName, in wchar hierarchyDelimiter, in long flags, in boolean suppressNotification); */
  void CreateClientSubfolderInfo(char*folderName, PRUnichar hierarchyDelimiter, PRInt32 flags, PRBool suppressNotification){
    nsresult __result = inner.CreateClientSubfolderInfo(folderName, hierarchyDelimiter, flags, suppressNotification);
    CheckException(__result);
  }

  /* void list (); */
  void List(){
    nsresult __result = inner.List();
    CheckException(__result);
  }

  /* void renameLocal (in string newname, in nsIMsgFolder parent); */
  void RenameLocal(char*newname, nsIMsgFolderD parent){
    nsresult __result = inner.RenameLocal(newname, parent ? cast(nsIMsgFolder)parent : null);
    CheckException(__result);
  }

  /* void prepareToRename (); */
  void PrepareToRename(){
    nsresult __result = inner.PrepareToRename();
    CheckException(__result);
  }

  /* void performExpand (in nsIMsgWindow aMsgWindow); */
  void PerformExpand(nsIMsgWindowD aMsgWindow){
    nsresult __result = inner.PerformExpand(aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null);
    CheckException(__result);
  }

  /* void recursiveCloseActiveConnections (in nsIImapIncomingServer aImapServer); */
  void RecursiveCloseActiveConnections(nsIImapIncomingServerD aImapServer){
    nsresult __result = inner.RecursiveCloseActiveConnections(aImapServer ? cast(nsIImapIncomingServer)aImapServer : null);
    CheckException(__result);
  }

  /* void renameClient (in nsIMsgWindow msgWindow, in nsIMsgFolder msgFolder, in string oldName, in string newName); */
  void RenameClient(nsIMsgWindowD msgWindow, nsIMsgFolderD msgFolder, char*oldName, char*newName){
    nsresult __result = inner.RenameClient(msgWindow ? cast(nsIMsgWindow)msgWindow : null, msgFolder ? cast(nsIMsgFolder)msgFolder : null, oldName, newName);
    CheckException(__result);
  }

  /* void storeImapFlags (in long aFlags, in boolean aAddFlags, [array, size_is (aNumKeys)] in nsMsgKey aKeysToFlag, in unsigned long aNumKeys, in nsIUrlListener aUrlListener); */
  void StoreImapFlags(PRInt32 aFlags, PRBool aAddFlags, nsMsgKey *aKeysToFlag, PRUint32 aNumKeys, nsIUrlListenerD aUrlListener){
    nsresult __result = inner.StoreImapFlags(aFlags, aAddFlags, aKeysToFlag, aNumKeys, aUrlListener ? cast(nsIUrlListener)aUrlListener : null);
    CheckException(__result);
  }

  /* void setImapFlags (in string uids, in long flags, out nsIURI url); */
  void SetImapFlags(char*uids, PRInt32 flags, out nsIURID url){
    nsIURI _url;
    nsresult __result = inner.SetImapFlags(uids, flags, &_url);
    CheckException(__result);
    url = _url ? new nsIURID(_url) : null;
  }

  /* void replayOfflineMoveCopy ([array, size_is (numKeys)] in nsMsgKey keys, in unsigned long numKeys, in boolean isMove, in nsIMsgFolder aDstFolder, in nsIUrlListener aUrlListener, in nsIMsgWindow aWindow); */
  void ReplayOfflineMoveCopy(nsMsgKey *keys, PRUint32 numKeys, PRBool isMove, nsIMsgFolderD aDstFolder, nsIUrlListenerD aUrlListener, nsIMsgWindowD aWindow){
    nsresult __result = inner.ReplayOfflineMoveCopy(keys, numKeys, isMove, aDstFolder ? cast(nsIMsgFolder)aDstFolder : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, aWindow ? cast(nsIMsgWindow)aWindow : null);
    CheckException(__result);
  }

  /* void playbackOfflineFolderCreate (in wstring folderName, in nsIMsgWindow aWindow, out nsIURI url); */
  void PlaybackOfflineFolderCreate(PRUnichar*folderName, nsIMsgWindowD aWindow, out nsIURID url){
    nsIURI _url;
    nsresult __result = inner.PlaybackOfflineFolderCreate(folderName, aWindow ? cast(nsIMsgWindow)aWindow : null, &_url);
    CheckException(__result);
    url = _url ? new nsIURID(_url) : null;
  }

  /* void liteSelect (in nsIUrlListener aUrlListener); */
  void LiteSelect(nsIUrlListenerD aUrlListener){
    nsresult __result = inner.LiteSelect(aUrlListener ? cast(nsIUrlListener)aUrlListener : null);
    CheckException(__result);
  }

  /* void fillInFolderProps (in nsIMsgImapFolderProps aFolderProps); */
  void FillInFolderProps(nsIMsgImapFolderPropsD aFolderProps){
    nsresult __result = inner.FillInFolderProps(aFolderProps ? cast(nsIMsgImapFolderProps)aFolderProps : null);
    CheckException(__result);
  }

  /* void resetNamespaceReferences (); */
  void ResetNamespaceReferences(){
    nsresult __result = inner.ResetNamespaceReferences();
    CheckException(__result);
  }

  /* void folderPrivileges (in nsIMsgWindow aWindow); */
  void FolderPrivileges(nsIMsgWindowD aWindow){
    nsresult __result = inner.FolderPrivileges(aWindow ? cast(nsIMsgWindow)aWindow : null);
    CheckException(__result);
  }

  /* nsIMsgImapMailFolder findOnlineSubFolder (in string onlineName); */
  nsIMsgImapMailFolderD  FindOnlineSubFolder(char*onlineName){
    nsIMsgImapMailFolder _retval;
    nsresult __result = inner.FindOnlineSubFolder(onlineName, &_retval);
    CheckException(__result);
    return new nsIMsgImapMailFolderD(_retval);
  }

  /* void addFolderRights (in string userName, in string rights); */
  void AddFolderRights(char*userName, char*rights){
    nsresult __result = inner.AddFolderRights(userName, rights);
    CheckException(__result);
  }

  /* void refreshFolderRights (); */
  void RefreshFolderRights(){
    nsresult __result = inner.RefreshFolderRights();
    CheckException(__result);
  }

  /* void updateStatus (in nsIUrlListener aListener, in nsIMsgWindow aMsgWindow); */
  void UpdateStatus(nsIUrlListenerD aListener, nsIMsgWindowD aMsgWindow){
    nsresult __result = inner.UpdateStatus(aListener ? cast(nsIUrlListener)aListener : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null);
    CheckException(__result);
  }

  /* nsIURI issueCommandOnMsgs (in string command, in string uids, in nsIMsgWindow aWindow); */
  nsIURID  IssueCommandOnMsgs(char*command, char*uids, nsIMsgWindowD aWindow){
    nsIURI _retval;
    nsresult __result = inner.IssueCommandOnMsgs(command, uids, aWindow ? cast(nsIMsgWindow)aWindow : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /* nsIURI fetchCustomMsgAttribute (in string msgAttribute, in string uids, in nsIMsgWindow aWindow); */
  nsIURID  FetchCustomMsgAttribute(char*msgAttribute, char*uids, nsIMsgWindowD aWindow){
    nsIURI _retval;
    nsresult __result = inner.FetchCustomMsgAttribute(msgAttribute, uids, aWindow ? cast(nsIMsgWindow)aWindow : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /* nsIURI storeCustomKeywords (in nsIMsgWindow aMsgWindow, in string aFlagsToAdd, in string aFlagsToSubtract, [array, size_is (aNumKeys)] in nsMsgKey aKeysToStore, in unsigned long aNumKeys); */
  nsIURID  StoreCustomKeywords(nsIMsgWindowD aMsgWindow, char*aFlagsToAdd, char*aFlagsToSubtract, nsMsgKey *aKeysToStore, PRUint32 aNumKeys){
    nsIURI _retval;
    nsresult __result = inner.StoreCustomKeywords(aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aFlagsToAdd, aFlagsToSubtract, aKeysToStore, aNumKeys, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /* void notifyIfNewMail (); */
  void NotifyIfNewMail(){
    nsresult __result = inner.NotifyIfNewMail();
    CheckException(__result);
  }

  /* attribute boolean verifiedAsOnlineFolder; */
  PRBool VerifiedAsOnlineFolder(){
    PRBool value;
    nsresult __result = inner.GetVerifiedAsOnlineFolder(&value);
    CheckException(__result);
    return value;
  }
  void VerifiedAsOnlineFolder(PRBool aVerifiedAsOnlineFolder){
    nsresult __result = inner.SetVerifiedAsOnlineFolder(aVerifiedAsOnlineFolder);
    CheckException(__result);
  }

  /* attribute boolean explicitlyVerify; */
  PRBool ExplicitlyVerify(){
    PRBool value;
    nsresult __result = inner.GetExplicitlyVerify(&value);
    CheckException(__result);
    return value;
  }
  void ExplicitlyVerify(PRBool aExplicitlyVerify){
    nsresult __result = inner.SetExplicitlyVerify(aExplicitlyVerify);
    CheckException(__result);
  }

  /* attribute wchar hierarchyDelimiter; */
  PRUnichar HierarchyDelimiter(){
    PRUnichar value;
    nsresult __result = inner.GetHierarchyDelimiter(&value);
    CheckException(__result);
    return value;
  }
  void HierarchyDelimiter(PRUnichar aHierarchyDelimiter){
    nsresult __result = inner.SetHierarchyDelimiter(aHierarchyDelimiter);
    CheckException(__result);
  }

  /* attribute long boxFlags; */
  PRInt32 BoxFlags(){
    PRInt32 value;
    nsresult __result = inner.GetBoxFlags(&value);
    CheckException(__result);
    return value;
  }
  void BoxFlags(PRInt32 aBoxFlags){
    nsresult __result = inner.SetBoxFlags(aBoxFlags);
    CheckException(__result);
  }

  /* attribute string onlineName; */
  char* OnlineName(){
    char* value;
    nsresult __result = inner.GetOnlineName(&value);
    CheckException(__result);
    return value;
  }
  void OnlineName(char* aOnlineName){
    nsresult __result = inner.SetOnlineName(aOnlineName);
    CheckException(__result);
  }

  /* attribute boolean isNamespace; */
  PRBool IsNamespace(){
    PRBool value;
    nsresult __result = inner.GetIsNamespace(&value);
    CheckException(__result);
    return value;
  }
  void IsNamespace(PRBool aIsNamespace){
    nsresult __result = inner.SetIsNamespace(aIsNamespace);
    CheckException(__result);
  }

  /* readonly attribute boolean canIOpenThisFolder; */
  PRBool CanIOpenThisFolder(){
    PRBool value;
    nsresult __result = inner.GetCanIOpenThisFolder(&value);
    CheckException(__result);
    return value;
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

  /* readonly attribute boolean hasAdminUrl; */
  PRBool HasAdminUrl(){
    PRBool value;
    nsresult __result = inner.GetHasAdminUrl(&value);
    CheckException(__result);
    return value;
  }

  /* attribute boolean performingBiff; */
  PRBool PerformingBiff(){
    PRBool value;
    nsresult __result = inner.GetPerformingBiff(&value);
    CheckException(__result);
    return value;
  }
  void PerformingBiff(PRBool aPerformingBiff){
    nsresult __result = inner.SetPerformingBiff(aPerformingBiff);
    CheckException(__result);
  }

  /* readonly attribute nsIMsgParseMailMsgState hdrParser; */
  nsIMsgParseMailMsgStateD  HdrParser(){
    nsIMsgParseMailMsgState value;
    nsresult __result = inner.GetHdrParser(&value);
    CheckException(__result);
    return new nsIMsgParseMailMsgStateD(value);
  }

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
  void GetQuota(out PRBool valid, out PRUint32 usedKB, out PRUint32 maxKB){
    nsresult __result = inner.GetQuota(&valid, &usedKB, &maxKB);
    CheckException(__result);
  }

private:
  nsIMsgImapMailFolder inner;

}

