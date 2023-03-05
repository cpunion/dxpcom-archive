/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgIncomingServer.idl
 */

module mozilla.dxpcom.nsIMsgIncomingServerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgIncomingServer;


public import mozilla.dxpcom.nsIMsgIncomingServerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.MailNewsTypes2;
public import mozilla.dxpcom.MailNewsTypes2D;

public import mozilla.xpcom.nsIFileSpec;

public import mozilla.dxpcom.nsIFileSpecD;

public import mozilla.xpcom.nsIMsgFolder;

public import mozilla.dxpcom.nsIMsgFolderD;

public import mozilla.xpcom.nsIMsgFolderCache;

public import mozilla.dxpcom.nsIMsgFolderCacheD;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;

public import mozilla.xpcom.nsIMsgFilterList;

public import mozilla.dxpcom.nsIMsgFilterListD;

public import mozilla.xpcom.nsIMsgDatabase;

import mozilla.dxpcom.nsIMsgDatabaseD;

public import mozilla.xpcom.nsIMsgDatabase;

import mozilla.dxpcom.nsIMsgDatabaseD;

public import mozilla.xpcom.nsISpamSettings;

public import mozilla.dxpcom.nsISpamSettingsD;

public import mozilla.xpcom.nsIMsgFilterPlugin;

public import mozilla.dxpcom.nsIMsgFilterPluginD;

public import mozilla.xpcom.nsIUrlListener;

public import mozilla.dxpcom.nsIUrlListenerD;

public import mozilla.xpcom.nsIMsgHdr;

import mozilla.dxpcom.nsIMsgHdrD;


/* starting wrapper class:    nsIMsgIncomingServer */
class nsIMsgIncomingServerD : public nsISupportsD {

  static const nsIID IID = NS_IMSGINCOMINGSERVER_IID;


  alias nsIMsgIncomingServer InnerType;

  this(nsIMsgIncomingServer intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgIncomingServer opCast() {
    return inner;
  }

  void opAssign(nsIMsgIncomingServer value) {
    inner = value;
  }

  /**
   * internal pref key - guaranteed to be unique across all servers
   */
  /* attribute string key; */
  char* Key(){
    char* value;
    nsresult __result = inner.GetKey(&value);
    CheckException(__result);
    return value;
  }
  void Key(char* aKey){
    nsresult __result = inner.SetKey(aKey);
    CheckException(__result);
  }

  /**
   * pretty name - should be "userid on hostname"
   * if the pref is not set
   */
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

  /**
  * helper function to construct the pretty name in a server type
  * specific way - e.g., mail for foo@test.com, news on news.mozilla.org
  */
  /* readonly attribute wstring constructedPrettyName; */
  PRUnichar* ConstructedPrettyName(){
    PRUnichar* value;
    nsresult __result = inner.GetConstructedPrettyName(&value);
    CheckException(__result);
    return value;
  }

  /**
   * hostname of the server
   */
  /* attribute string hostName; */
  char* HostName(){
    char* value;
    nsresult __result = inner.GetHostName(&value);
    CheckException(__result);
    return value;
  }
  void HostName(char* aHostName){
    nsresult __result = inner.SetHostName(aHostName);
    CheckException(__result);
  }

  /**
   * real hostname of the server (if server name is changed it's stored here)
   */
  /* attribute string realHostName; */
  char* RealHostName(){
    char* value;
    nsresult __result = inner.GetRealHostName(&value);
    CheckException(__result);
    return value;
  }
  void RealHostName(char* aRealHostName){
    nsresult __result = inner.SetRealHostName(aRealHostName);
    CheckException(__result);
  }

  /* attribute long port; */
  PRInt32 Port(){
    PRInt32 value;
    nsresult __result = inner.GetPort(&value);
    CheckException(__result);
    return value;
  }
  void Port(PRInt32 aPort){
    nsresult __result = inner.SetPort(aPort);
    CheckException(__result);
  }

  /**
   * userid to log into the server
   */
  /* attribute string username; */
  char* Username(){
    char* value;
    nsresult __result = inner.GetUsername(&value);
    CheckException(__result);
    return value;
  }
  void Username(char* aUsername){
    nsresult __result = inner.SetUsername(aUsername);
    CheckException(__result);
  }

  /**
   * real username of the server (if username is changed it's stored here)
   */
  /* attribute string realUsername; */
  char* RealUsername(){
    char* value;
    nsresult __result = inner.GetRealUsername(&value);
    CheckException(__result);
    return value;
  }
  void RealUsername(char* aRealUsername){
    nsresult __result = inner.SetRealUsername(aRealUsername);
    CheckException(__result);
  }

  /**
   * protocol type, i.e. "pop3", "imap", "nntp", "none", etc
   * used to construct URLs
   */
  /* attribute string type; */
  char* Type(){
    char* value;
    nsresult __result = inner.GetType(&value);
    CheckException(__result);
    return value;
  }
  void Type(char* aType){
    nsresult __result = inner.SetType(aType);
    CheckException(__result);
  }

  /* readonly attribute AString accountManagerChrome; */
  wchar[] AccountManagerChrome(){
    scope auto value = new AString();
    nsresult __result = inner.GetAccountManagerChrome(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * the schema for the local mail store, such
   * as "mailbox", "imap", or "news"
   * used to construct URIs
   */
  /* readonly attribute string localStoreType; */
  char* LocalStoreType(){
    char* value;
    nsresult __result = inner.GetLocalStoreType(&value);
    CheckException(__result);
    return value;
  }

  /* void OnUserOrHostNameChanged (in string oldName, in string newName); */
  void OnUserOrHostNameChanged(char*oldName, char*newName){
    nsresult __result = inner.OnUserOrHostNameChanged(oldName, newName);
    CheckException(__result);
  }

  /* attribute boolean rememberPassword; */
  PRBool RememberPassword(){
    PRBool value;
    nsresult __result = inner.GetRememberPassword(&value);
    CheckException(__result);
    return value;
  }
  void RememberPassword(PRBool aRememberPassword){
    nsresult __result = inner.SetRememberPassword(aRememberPassword);
    CheckException(__result);
  }

  /* attribute string password; */
  char* Password(){
    char* value;
    nsresult __result = inner.GetPassword(&value);
    CheckException(__result);
    return value;
  }
  void Password(char* aPassword){
    nsresult __result = inner.SetPassword(aPassword);
    CheckException(__result);
  }

  /* string getPasswordWithUI (in wstring aPromptString, in wstring aPromptTitle, in nsIMsgWindow aMsgWindow, out boolean okayValue); */
  char* GetPasswordWithUI(PRUnichar*aPromptString, PRUnichar*aPromptTitle, nsIMsgWindowD aMsgWindow, out PRBool okayValue){
    char* _retval;
    nsresult __result = inner.GetPasswordWithUI(aPromptString, aPromptTitle, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, &okayValue, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void forgetPassword (); */
  void ForgetPassword(){
    nsresult __result = inner.ForgetPassword();
    CheckException(__result);
  }

  /**
   * logon succeeded - persist password, if user chooses.
   */
  /* void storePassword (); */
  void StorePassword(){
    nsresult __result = inner.StorePassword();
    CheckException(__result);
  }

  /* void forgetSessionPassword (); */
  void ForgetSessionPassword(){
    nsresult __result = inner.ForgetSessionPassword();
    CheckException(__result);
  }

  /* attribute boolean downloadOnBiff; */
  PRBool DownloadOnBiff(){
    PRBool value;
    nsresult __result = inner.GetDownloadOnBiff(&value);
    CheckException(__result);
    return value;
  }
  void DownloadOnBiff(PRBool aDownloadOnBiff){
    nsresult __result = inner.SetDownloadOnBiff(aDownloadOnBiff);
    CheckException(__result);
  }

  /* attribute boolean doBiff; */
  PRBool DoBiff(){
    PRBool value;
    nsresult __result = inner.GetDoBiff(&value);
    CheckException(__result);
    return value;
  }
  void DoBiff(PRBool aDoBiff){
    nsresult __result = inner.SetDoBiff(aDoBiff);
    CheckException(__result);
  }

  /* attribute long biffMinutes; */
  PRInt32 BiffMinutes(){
    PRInt32 value;
    nsresult __result = inner.GetBiffMinutes(&value);
    CheckException(__result);
    return value;
  }
  void BiffMinutes(PRInt32 aBiffMinutes){
    nsresult __result = inner.SetBiffMinutes(aBiffMinutes);
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

  /* attribute nsIFileSpec localPath; */
  nsIFileSpecD  LocalPath(){
    nsIFileSpec value;
    nsresult __result = inner.GetLocalPath(&value);
    CheckException(__result);
    return new nsIFileSpecD(value);
  }
  void LocalPath(nsIFileSpecD  aLocalPath){
    nsIFileSpec value;
    nsresult __result = inner.SetLocalPath(value);
    CheckException(__result);
  }

  /* readonly attribute string serverURI; */
  char* ServerURI(){
    char* value;
    nsresult __result = inner.GetServerURI(&value);
    CheckException(__result);
    return value;
  }

  /* attribute nsIMsgFolder rootFolder; */
  nsIMsgFolderD  RootFolder(){
    nsIMsgFolder value;
    nsresult __result = inner.GetRootFolder(&value);
    CheckException(__result);
    return new nsIMsgFolderD(value);
  }
  void RootFolder(nsIMsgFolderD  aRootFolder){
    nsIMsgFolder value;
    nsresult __result = inner.SetRootFolder(value);
    CheckException(__result);
  }

  /* readonly attribute nsIMsgFolder rootMsgFolder; */
  nsIMsgFolderD  RootMsgFolder(){
    nsIMsgFolder value;
    nsresult __result = inner.GetRootMsgFolder(&value);
    CheckException(__result);
    return new nsIMsgFolderD(value);
  }

  /* attribute boolean serverBusy; */
  PRBool ServerBusy(){
    PRBool value;
    nsresult __result = inner.GetServerBusy(&value);
    CheckException(__result);
    return value;
  }
  void ServerBusy(PRBool aServerBusy){
    nsresult __result = inner.SetServerBusy(aServerBusy);
    CheckException(__result);
  }

  /* attribute boolean isSecure; */
  PRBool IsSecure(){
    PRBool value;
    nsresult __result = inner.GetIsSecure(&value);
    CheckException(__result);
    return value;
  }
  void IsSecure(PRBool aIsSecure){
    nsresult __result = inner.SetIsSecure(aIsSecure);
    CheckException(__result);
  }

  /* attribute boolean useSecAuth; */
  PRBool UseSecAuth(){
    PRBool value;
    nsresult __result = inner.GetUseSecAuth(&value);
    CheckException(__result);
    return value;
  }
  void UseSecAuth(PRBool aUseSecAuth){
    nsresult __result = inner.SetUseSecAuth(aUseSecAuth);
    CheckException(__result);
  }

  enum { defaultSocket = 0 }

  enum { tryTLS = 1 }

  enum { alwaysUseTLS = 2 }

  enum { useSSL = 3 }

  /* attribute long socketType; */
  PRInt32 SocketType(){
    PRInt32 value;
    nsresult __result = inner.GetSocketType(&value);
    CheckException(__result);
    return value;
  }
  void SocketType(PRInt32 aSocketType){
    nsresult __result = inner.SetSocketType(aSocketType);
    CheckException(__result);
  }

  /* attribute boolean logonFallback; */
  PRBool LogonFallback(){
    PRBool value;
    nsresult __result = inner.GetLogonFallback(&value);
    CheckException(__result);
    return value;
  }
  void LogonFallback(PRBool aLogonFallback){
    nsresult __result = inner.SetLogonFallback(aLogonFallback);
    CheckException(__result);
  }

  /* readonly attribute boolean isSecureServer; */
  PRBool IsSecureServer(){
    PRBool value;
    nsresult __result = inner.GetIsSecureServer(&value);
    CheckException(__result);
    return value;
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

  /* attribute boolean emptyTrashOnExit; */
  PRBool EmptyTrashOnExit(){
    PRBool value;
    nsresult __result = inner.GetEmptyTrashOnExit(&value);
    CheckException(__result);
    return value;
  }
  void EmptyTrashOnExit(PRBool aEmptyTrashOnExit){
    nsresult __result = inner.SetEmptyTrashOnExit(aEmptyTrashOnExit);
    CheckException(__result);
  }

  /* nsIMsgFilterList getFilterList (in nsIMsgWindow aMsgWindow); */
  nsIMsgFilterListD  GetFilterList(nsIMsgWindowD aMsgWindow){
    nsIMsgFilterList _retval;
    nsresult __result = inner.GetFilterList(aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, &_retval);
    CheckException(__result);
    return new nsIMsgFilterListD(_retval);
  }

  /* void setFilterList (in nsIMsgFilterList aFilterList); */
  void SetFilterList(nsIMsgFilterListD aFilterList){
    nsresult __result = inner.SetFilterList(aFilterList ? cast(nsIMsgFilterList)aFilterList : null);
    CheckException(__result);
  }

  /* void SetDefaultLocalPath (in nsIFileSpec aDefaultLocalPath); */
  void SetDefaultLocalPath(nsIFileSpecD aDefaultLocalPath){
    nsresult __result = inner.SetDefaultLocalPath(aDefaultLocalPath ? cast(nsIFileSpec)aDefaultLocalPath : null);
    CheckException(__result);
  }

  /* void PerformBiff (in nsIMsgWindow aMsgWindow); */
  void PerformBiff(nsIMsgWindowD aMsgWindow){
    nsresult __result = inner.PerformBiff(aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null);
    CheckException(__result);
  }

  /* void getNewMessages (in nsIMsgFolder aFolder, in nsIMsgWindow aMsgWindow, in nsIUrlListener aUrlListener); */
  void GetNewMessages(nsIMsgFolderD aFolder, nsIMsgWindowD aMsgWindow, nsIUrlListenerD aUrlListener){
    nsresult __result = inner.GetNewMessages(aFolder ? cast(nsIMsgFolder)aFolder : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null);
    CheckException(__result);
  }

  /* readonly attribute boolean serverRequiresPasswordForBiff; */
  PRBool ServerRequiresPasswordForBiff(){
    PRBool value;
    nsresult __result = inner.GetServerRequiresPasswordForBiff(&value);
    CheckException(__result);
    return value;
  }

  /* void performExpand (in nsIMsgWindow aMsgWindow); */
  void PerformExpand(nsIMsgWindowD aMsgWindow){
    nsresult __result = inner.PerformExpand(aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null);
    CheckException(__result);
  }

  /* void WriteToFolderCache (in nsIMsgFolderCache folderCache); */
  void WriteToFolderCache(nsIMsgFolderCacheD folderCache){
    nsresult __result = inner.WriteToFolderCache(folderCache ? cast(nsIMsgFolderCache)folderCache : null);
    CheckException(__result);
  }

  /* void CloseCachedConnections (); */
  void CloseCachedConnections(){
    nsresult __result = inner.CloseCachedConnections();
    CheckException(__result);
  }

  /* void shutdown (); */
  void Shutdown(){
    nsresult __result = inner.Shutdown();
    CheckException(__result);
  }

  /* boolean getBoolValue (in string attr); */
  PRBool GetBoolValue(char*attr){
    PRBool _retval;
    nsresult __result = inner.GetBoolValue(attr, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setBoolValue (in string attr, in boolean value); */
  void SetBoolValue(char*attr, PRBool value){
    nsresult __result = inner.SetBoolValue(attr, value);
    CheckException(__result);
  }

  /* string getCharValue (in string attr); */
  char* GetCharValue(char*attr){
    char* _retval;
    nsresult __result = inner.GetCharValue(attr, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setCharValue (in string attr, in string value); */
  void SetCharValue(char*attr, char*value){
    nsresult __result = inner.SetCharValue(attr, value);
    CheckException(__result);
  }

  /* wstring getUnicharValue (in string attr); */
  PRUnichar* GetUnicharValue(char*attr){
    PRUnichar* _retval;
    nsresult __result = inner.GetUnicharValue(attr, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setUnicharValue (in string attr, in wstring value); */
  void SetUnicharValue(char*attr, PRUnichar*value){
    nsresult __result = inner.SetUnicharValue(attr, value);
    CheckException(__result);
  }

  /* long getIntValue (in string attr); */
  PRInt32 GetIntValue(char*attr){
    PRInt32 _retval;
    nsresult __result = inner.GetIntValue(attr, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setIntValue (in string attr, in long value); */
  void SetIntValue(char*attr, PRInt32 value){
    nsresult __result = inner.SetIntValue(attr, value);
    CheckException(__result);
  }

  /* nsIFileSpec getFileValue (in string attr); */
  nsIFileSpecD  GetFileValue(char*attr){
    nsIFileSpec _retval;
    nsresult __result = inner.GetFileValue(attr, &_retval);
    CheckException(__result);
    return new nsIFileSpecD(_retval);
  }

  /* void setFileValue (in string attr, in nsIFileSpec value); */
  void SetFileValue(char*attr, nsIFileSpecD value){
    nsresult __result = inner.SetFileValue(attr, value ? cast(nsIFileSpec)value : null);
    CheckException(__result);
  }

  /**
   * this is really dangerous. this destroys all pref values
   * do not call this unless you know what you're doing!
   */
  /* void clearAllValues (); */
  void ClearAllValues(){
    nsresult __result = inner.ClearAllValues();
    CheckException(__result);
  }

  /** 
   * this is also very dangerous.  this will remove the files
   * associated with this server on disk.
   */
  /* void removeFiles (); */
  void RemoveFiles(){
    nsresult __result = inner.RemoveFiles();
    CheckException(__result);
  }

  /* attribute boolean valid; */
  PRBool Valid(){
    PRBool value;
    nsresult __result = inner.GetValid(&value);
    CheckException(__result);
    return value;
  }
  void Valid(PRBool aValid){
    nsresult __result = inner.SetValid(aValid);
    CheckException(__result);
  }

  /* wstring toString (); */
  PRUnichar* ToString(){
    PRUnichar* _retval;
    nsresult __result = inner.ToString(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void displayOfflineMsg (in nsIMsgWindow aWindow); */
  void DisplayOfflineMsg(nsIMsgWindowD aWindow){
    nsresult __result = inner.DisplayOfflineMsg(aWindow ? cast(nsIMsgWindow)aWindow : null);
    CheckException(__result);
  }

  /* boolean equals (in nsIMsgIncomingServer server); */
  PRBool Equals(nsIMsgIncomingServerD server){
    PRBool _retval;
    nsresult __result = inner.Equals(server ? cast(nsIMsgIncomingServer)server : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* readonly attribute boolean downloadMessagesAtStartup; */
  PRBool DownloadMessagesAtStartup(){
    PRBool value;
    nsresult __result = inner.GetDownloadMessagesAtStartup(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean canHaveFilters; */
  PRBool CanHaveFilters(){
    PRBool value;
    nsresult __result = inner.GetCanHaveFilters(&value);
    CheckException(__result);
    return value;
  }

  /**
   * can this server be removed from the account manager?  for
   * instance, local mail is not removable, but an imported folder is 
   */
  /* attribute boolean canDelete; */
  PRBool CanDelete(){
    PRBool value;
    nsresult __result = inner.GetCanDelete(&value);
    CheckException(__result);
    return value;
  }
  void CanDelete(PRBool aCanDelete){
    nsresult __result = inner.SetCanDelete(aCanDelete);
    CheckException(__result);
  }

  /* attribute boolean loginAtStartUp; */
  PRBool LoginAtStartUp(){
    PRBool value;
    nsresult __result = inner.GetLoginAtStartUp(&value);
    CheckException(__result);
    return value;
  }
  void LoginAtStartUp(PRBool aLoginAtStartUp){
    nsresult __result = inner.SetLoginAtStartUp(aLoginAtStartUp);
    CheckException(__result);
  }

  /* attribute boolean limitOfflineMessageSize; */
  PRBool LimitOfflineMessageSize(){
    PRBool value;
    nsresult __result = inner.GetLimitOfflineMessageSize(&value);
    CheckException(__result);
    return value;
  }
  void LimitOfflineMessageSize(PRBool aLimitOfflineMessageSize){
    nsresult __result = inner.SetLimitOfflineMessageSize(aLimitOfflineMessageSize);
    CheckException(__result);
  }

  /* attribute long maxMessageSize; */
  PRInt32 MaxMessageSize(){
    PRInt32 value;
    nsresult __result = inner.GetMaxMessageSize(&value);
    CheckException(__result);
    return value;
  }
  void MaxMessageSize(PRInt32 aMaxMessageSize){
    nsresult __result = inner.SetMaxMessageSize(aMaxMessageSize);
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

  /* readonly attribute boolean canBeDefaultServer; */
  PRBool CanBeDefaultServer(){
    PRBool value;
    nsresult __result = inner.GetCanBeDefaultServer(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean canSearchMessages; */
  PRBool CanSearchMessages(){
    PRBool value;
    nsresult __result = inner.GetCanSearchMessages(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean canEmptyTrashOnExit; */
  PRBool CanEmptyTrashOnExit(){
    PRBool value;
    nsresult __result = inner.GetCanEmptyTrashOnExit(&value);
    CheckException(__result);
    return value;
  }

  /* attribute boolean displayStartupPage; */
  PRBool DisplayStartupPage(){
    PRBool value;
    nsresult __result = inner.GetDisplayStartupPage(&value);
    CheckException(__result);
    return value;
  }
  void DisplayStartupPage(PRBool aDisplayStartupPage){
    nsresult __result = inner.SetDisplayStartupPage(aDisplayStartupPage);
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

  /* attribute long offlineSupportLevel; */
  PRInt32 OfflineSupportLevel(){
    PRInt32 value;
    nsresult __result = inner.GetOfflineSupportLevel(&value);
    CheckException(__result);
    return value;
  }
  void OfflineSupportLevel(PRInt32 aOfflineSupportLevel){
    nsresult __result = inner.SetOfflineSupportLevel(aOfflineSupportLevel);
    CheckException(__result);
  }

  /* wstring generatePrettyNameForMigration (); */
  PRUnichar* GeneratePrettyNameForMigration(){
    PRUnichar* _retval;
    nsresult __result = inner.GeneratePrettyNameForMigration(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* readonly attribute boolean supportsDiskSpace; */
  PRBool SupportsDiskSpace(){
    PRBool value;
    nsresult __result = inner.GetSupportsDiskSpace(&value);
    CheckException(__result);
    return value;
  }

  /**
   * If the server supports Fcc/Sent/etc, default prefs can point to 
   * the server. Otherwise, copies and folders prefs should point to
   * Local Folders.
   *
   * By default this value is set to true via global pref 'allows_specialfolders_usage'
   * (mailnews.js). For Nntp, the value is overridden to be false.
   * If ISPs want to modify this value, they should do that in their rdf file
   * by using this attribute. Please look at mozilla/mailnews/base/ispdata/aol.rdf for
   * usage example.
   */
  /* attribute boolean defaultCopiesAndFoldersPrefsToServer; */
  PRBool DefaultCopiesAndFoldersPrefsToServer(){
    PRBool value;
    nsresult __result = inner.GetDefaultCopiesAndFoldersPrefsToServer(&value);
    CheckException(__result);
    return value;
  }
  void DefaultCopiesAndFoldersPrefsToServer(PRBool aDefaultCopiesAndFoldersPrefsToServer){
    nsresult __result = inner.SetDefaultCopiesAndFoldersPrefsToServer(aDefaultCopiesAndFoldersPrefsToServer);
    CheckException(__result);
  }

  /* attribute boolean canCreateFoldersOnServer; */
  PRBool CanCreateFoldersOnServer(){
    PRBool value;
    nsresult __result = inner.GetCanCreateFoldersOnServer(&value);
    CheckException(__result);
    return value;
  }
  void CanCreateFoldersOnServer(PRBool aCanCreateFoldersOnServer){
    nsresult __result = inner.SetCanCreateFoldersOnServer(aCanCreateFoldersOnServer);
    CheckException(__result);
  }

  /* attribute boolean canFileMessagesOnServer; */
  PRBool CanFileMessagesOnServer(){
    PRBool value;
    nsresult __result = inner.GetCanFileMessagesOnServer(&value);
    CheckException(__result);
    return value;
  }
  void CanFileMessagesOnServer(PRBool aCanFileMessagesOnServer){
    nsresult __result = inner.SetCanFileMessagesOnServer(aCanFileMessagesOnServer);
    CheckException(__result);
  }

  /* readonly attribute boolean canCompactFoldersOnServer; */
  PRBool CanCompactFoldersOnServer(){
    PRBool value;
    nsresult __result = inner.GetCanCompactFoldersOnServer(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean canUndoDeleteOnServer; */
  PRBool CanUndoDeleteOnServer(){
    PRBool value;
    nsresult __result = inner.GetCanUndoDeleteOnServer(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsMsgSearchScopeValue filterScope; */
  nsMsgSearchScopeValue FilterScope(){
    nsMsgSearchScopeValue value;
    nsresult __result = inner.GetFilterScope(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsMsgSearchScopeValue searchScope; */
  nsMsgSearchScopeValue SearchScope(){
    nsMsgSearchScopeValue value;
    nsresult __result = inner.GetSearchScope(&value);
    CheckException(__result);
    return value;
  }

  /** 
   * these generic getter / setters, useful for extending mailnews 
   * note, these attributes persist across sessions
   */
  /* wstring getUnicharAttribute (in string name); */
  PRUnichar* GetUnicharAttribute(char*name){
    PRUnichar* _retval;
    nsresult __result = inner.GetUnicharAttribute(name, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setUnicharAttribute (in string name, in wstring value); */
  void SetUnicharAttribute(char*name, PRUnichar*value){
    nsresult __result = inner.SetUnicharAttribute(name, value);
    CheckException(__result);
  }

  /* string getCharAttribute (in string name); */
  char* GetCharAttribute(char*name){
    char* _retval;
    nsresult __result = inner.GetCharAttribute(name, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setCharAttribute (in string name, in string value); */
  void SetCharAttribute(char*name, char*value){
    nsresult __result = inner.SetCharAttribute(name, value);
    CheckException(__result);
  }

  /* boolean getBoolAttribute (in string name); */
  PRBool GetBoolAttribute(char*name){
    PRBool _retval;
    nsresult __result = inner.GetBoolAttribute(name, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setBoolAttribute (in string name, in boolean value); */
  void SetBoolAttribute(char*name, PRBool value){
    nsresult __result = inner.SetBoolAttribute(name, value);
    CheckException(__result);
  }

  /* long getIntAttribute (in string name); */
  PRInt32 GetIntAttribute(char*name){
    PRInt32 _retval;
    nsresult __result = inner.GetIntAttribute(name, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setIntAttribute (in string name, in long value); */
  void SetIntAttribute(char*name, PRInt32 value){
    nsresult __result = inner.SetIntAttribute(name, value);
    CheckException(__result);
  }

  /** 
   * If the password for the server is available either via authentication 
   * in the current session or from password manager stored entries, return
   * false. Otherwise, return true. If password is obtained from password 
   * manager, set the password member variable.
   */
  /* readonly attribute boolean passwordPromptRequired; */
  PRBool PasswordPromptRequired(){
    PRBool value;
    nsresult __result = inner.GetPasswordPromptRequired(&value);
    CheckException(__result);
    return value;
  }

  /**
   * for mail, this configures both the MDN filter, and the server-side
   * spam filter filters, if needed.
   *
   * If we have set up to filter return receipts into
   * our Sent folder, this utility method creates
   * a filter to do that, and adds it to our filterList
   * if it doesn't exist.  If it does, it will enable it.
   *
   * this is not used by news filters (yet).
   */
  /* void configureTemporaryFilters (in nsIMsgFilterList filterList); */
  void ConfigureTemporaryFilters(nsIMsgFilterListD filterList){
    nsresult __result = inner.ConfigureTemporaryFilters(filterList ? cast(nsIMsgFilterList)filterList : null);
    CheckException(__result);
  }

  /**
   * If Sent folder pref is changed we need to clear the temporary 
   * return receipt filter so that the new return receipt filter can
   * be recreated (by ConfigureTemporaryReturnReceiptsFilter()).
   */
  /* void clearTemporaryReturnReceiptsFilter (); */
  void ClearTemporaryReturnReceiptsFilter(){
    nsresult __result = inner.ClearTemporaryReturnReceiptsFilter();
    CheckException(__result);
  }

  /**
   * spam settings
   */
  /* readonly attribute nsISpamSettings spamSettings; */
  nsISpamSettingsD  SpamSettings(){
    nsISpamSettings value;
    nsresult __result = inner.GetSpamSettings(&value);
    CheckException(__result);
    return new nsISpamSettingsD(value);
  }

  /* readonly attribute nsIMsgFilterPlugin spamFilterPlugin; */
  nsIMsgFilterPluginD  SpamFilterPlugin(){
    nsIMsgFilterPlugin value;
    nsresult __result = inner.GetSpamFilterPlugin(&value);
    CheckException(__result);
    return new nsIMsgFilterPluginD(value);
  }

  /* nsIMsgFolder getMsgFolderFromURI (in nsIMsgFolder aFolderResource, in string aURI); */
  nsIMsgFolderD  GetMsgFolderFromURI(nsIMsgFolderD aFolderResource, char*aURI){
    nsIMsgFolder _retval;
    nsresult __result = inner.GetMsgFolderFromURI(aFolderResource ? cast(nsIMsgFolder)aFolderResource : null, aURI, &_retval);
    CheckException(__result);
    return new nsIMsgFolderD(_retval);
  }

  /* readonly attribute boolean isDeferredTo; */
  PRBool IsDeferredTo(){
    PRBool value;
    nsresult __result = inner.GetIsDeferredTo(&value);
    CheckException(__result);
    return value;
  }

  enum { keepDups = 0 }

  enum { deleteDups = 1 }

  enum { moveDupsToTrash = 2 }

  enum { markDupsRead = 3 }

  /* attribute long incomingDuplicateAction; */
  PRInt32 IncomingDuplicateAction(){
    PRInt32 value;
    nsresult __result = inner.GetIncomingDuplicateAction(&value);
    CheckException(__result);
    return value;
  }
  void IncomingDuplicateAction(PRInt32 aIncomingDuplicateAction){
    nsresult __result = inner.SetIncomingDuplicateAction(aIncomingDuplicateAction);
    CheckException(__result);
  }

  /* boolean isNewHdrDuplicate (in nsIMsgDBHdr aNewHdr); */
  PRBool IsNewHdrDuplicate(nsIMsgDBHdrD aNewHdr){
    PRBool _retval;
    nsresult __result = inner.IsNewHdrDuplicate(aNewHdr ? cast(nsIMsgDBHdr)aNewHdr : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIMsgIncomingServer inner;

}

