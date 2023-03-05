/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgAccountManager.idl
 */

module mozilla.dxpcom.nsIMsgAccountManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgAccountManager;


public import mozilla.dxpcom.nsIMsgAccountManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIMsgAccount;
public import mozilla.dxpcom.nsIMsgAccountD;
public import mozilla.xpcom.nsIMsgIdentity;
public import mozilla.dxpcom.nsIMsgIdentityD;
public import mozilla.xpcom.nsIMsgIncomingServer;
public import mozilla.dxpcom.nsIMsgIncomingServerD;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.dxpcom.nsISupportsArrayD;
public import mozilla.xpcom.nsIIncomingServerListener;
public import mozilla.dxpcom.nsIIncomingServerListenerD;
public import mozilla.xpcom.nsIMsgFolder;
public import mozilla.dxpcom.nsIMsgFolderD;

public import mozilla.xpcom.nsIMsgFolderCache;

public import mozilla.dxpcom.nsIMsgFolderCacheD;

public import mozilla.xpcom.nsIFolderListener;

public import mozilla.dxpcom.nsIFolderListenerD;


/* starting wrapper class:    nsIMsgAccountManager */
class nsIMsgAccountManagerD : public nsISupportsD {

  static const nsIID IID = NS_IMSGACCOUNTMANAGER_IID;


  alias nsIMsgAccountManager InnerType;

  this(nsIMsgAccountManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgAccountManager opCast() {
    return inner;
  }

  void opAssign(nsIMsgAccountManager value) {
    inner = value;
  }

  /* nsIMsgAccount createAccount (); */
  nsIMsgAccountD  CreateAccount(){
    nsIMsgAccount _retval;
    nsresult __result = inner.CreateAccount(&_retval);
    CheckException(__result);
    return new nsIMsgAccountD(_retval);
  }

  /* nsIMsgAccount getAccount (in string key); */
  nsIMsgAccountD  GetAccount(char*key){
    nsIMsgAccount _retval;
    nsresult __result = inner.GetAccount(key, &_retval);
    CheckException(__result);
    return new nsIMsgAccountD(_retval);
  }

  /* void removeAccount (in nsIMsgAccount account); */
  void RemoveAccount(nsIMsgAccountD account){
    nsresult __result = inner.RemoveAccount(account ? cast(nsIMsgAccount)account : null);
    CheckException(__result);
  }

  /* void removeIdentity (in nsIMsgIdentity identity); */
  void RemoveIdentity(nsIMsgIdentityD identity){
    nsresult __result = inner.RemoveIdentity(identity ? cast(nsIMsgIdentity)identity : null);
    CheckException(__result);
  }

  /* void duplicateAccount (in nsIMsgAccount account); */
  void DuplicateAccount(nsIMsgAccountD account){
    nsresult __result = inner.DuplicateAccount(account ? cast(nsIMsgAccount)account : null);
    CheckException(__result);
  }

  /* nsIMsgIdentity createIdentity (); */
  nsIMsgIdentityD  CreateIdentity(){
    nsIMsgIdentity _retval;
    nsresult __result = inner.CreateIdentity(&_retval);
    CheckException(__result);
    return new nsIMsgIdentityD(_retval);
  }

  /* nsIMsgIncomingServer createIncomingServer (in string username, in string hostname, in string type); */
  nsIMsgIncomingServerD  CreateIncomingServer(char*username, char*hostname, char*type){
    nsIMsgIncomingServer _retval;
    nsresult __result = inner.CreateIncomingServer(username, hostname, type, &_retval);
    CheckException(__result);
    return new nsIMsgIncomingServerD(_retval);
  }

  /* nsIMsgIdentity getIdentity (in string key); */
  nsIMsgIdentityD  GetIdentity(char*key){
    nsIMsgIdentity _retval;
    nsresult __result = inner.GetIdentity(key, &_retval);
    CheckException(__result);
    return new nsIMsgIdentityD(_retval);
  }

  /* nsIMsgIncomingServer getIncomingServer (in string key); */
  nsIMsgIncomingServerD  GetIncomingServer(char*key){
    nsIMsgIncomingServer _retval;
    nsresult __result = inner.GetIncomingServer(key, &_retval);
    CheckException(__result);
    return new nsIMsgIncomingServerD(_retval);
  }

  /* attribute nsIMsgAccount defaultAccount; */
  nsIMsgAccountD  DefaultAccount(){
    nsIMsgAccount value;
    nsresult __result = inner.GetDefaultAccount(&value);
    CheckException(__result);
    return new nsIMsgAccountD(value);
  }
  void DefaultAccount(nsIMsgAccountD  aDefaultAccount){
    nsIMsgAccount value;
    nsresult __result = inner.SetDefaultAccount(value);
    CheckException(__result);
  }

  /**
   * ordered list of all accounts, by the order they are in the prefs
   * array of nsIMsgAccount
   */
  /* readonly attribute nsISupportsArray accounts; */
  nsISupportsArrayD  Accounts(){
    nsISupportsArray value;
    nsresult __result = inner.GetAccounts(&value);
    CheckException(__result);
    return new nsISupportsArrayD(value);
  }

  /* readonly attribute nsISupportsArray allIdentities; */
  nsISupportsArrayD  AllIdentities(){
    nsISupportsArray value;
    nsresult __result = inner.GetAllIdentities(&value);
    CheckException(__result);
    return new nsISupportsArrayD(value);
  }

  /* readonly attribute nsISupportsArray allServers; */
  nsISupportsArrayD  AllServers(){
    nsISupportsArray value;
    nsresult __result = inner.GetAllServers(&value);
    CheckException(__result);
    return new nsISupportsArrayD(value);
  }

  /* readonly attribute nsIMsgFolderCache folderCache; */
  nsIMsgFolderCacheD  FolderCache(){
    nsIMsgFolderCache value;
    nsresult __result = inner.GetFolderCache(&value);
    CheckException(__result);
    return new nsIMsgFolderCacheD(value);
  }

  /* readonly attribute boolean shutdownInProgress; */
  PRBool ShutdownInProgress(){
    PRBool value;
    nsresult __result = inner.GetShutdownInProgress(&value);
    CheckException(__result);
    return value;
  }

  /**
   * for preventing unauthenticated users from seeing header information 
   */
  /* attribute boolean userNeedsToAuthenticate; */
  PRBool UserNeedsToAuthenticate(){
    PRBool value;
    nsresult __result = inner.GetUserNeedsToAuthenticate(&value);
    CheckException(__result);
    return value;
  }
  void UserNeedsToAuthenticate(PRBool aUserNeedsToAuthenticate){
    nsresult __result = inner.SetUserNeedsToAuthenticate(aUserNeedsToAuthenticate);
    CheckException(__result);
  }

  /* nsIMsgIncomingServer FindServer (in string userName, in string hostname, in string type); */
  nsIMsgIncomingServerD  FindServer(char*userName, char*hostname, char*type){
    nsIMsgIncomingServer _retval;
    nsresult __result = inner.FindServer(userName, hostname, type, &_retval);
    CheckException(__result);
    return new nsIMsgIncomingServerD(_retval);
  }

  /* nsIMsgIncomingServer findServerByURI (in nsIURI aURI, in boolean aRealFlag); */
  nsIMsgIncomingServerD  FindServerByURI(nsIURID aURI, PRBool aRealFlag){
    nsIMsgIncomingServer _retval;
    nsresult __result = inner.FindServerByURI(aURI ? cast(nsIURI)aURI : null, aRealFlag, &_retval);
    CheckException(__result);
    return new nsIMsgIncomingServerD(_retval);
  }

  /* nsIMsgIncomingServer findRealServer (in string userName, in string hostname, in string type, in long port); */
  nsIMsgIncomingServerD  FindRealServer(char*userName, char*hostname, char*type, PRInt32 port){
    nsIMsgIncomingServer _retval;
    nsresult __result = inner.FindRealServer(userName, hostname, type, port, &_retval);
    CheckException(__result);
    return new nsIMsgIncomingServerD(_retval);
  }

  /**
   * find the index of this server in the (ordered) list of accounts
   */
  /* long FindServerIndex (in nsIMsgIncomingServer server); */
  PRInt32 FindServerIndex(nsIMsgIncomingServerD server){
    PRInt32 _retval;
    nsresult __result = inner.FindServerIndex(server ? cast(nsIMsgIncomingServer)server : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsIMsgAccount FindAccountForServer (in nsIMsgIncomingServer server); */
  nsIMsgAccountD  FindAccountForServer(nsIMsgIncomingServerD server){
    nsIMsgAccount _retval;
    nsresult __result = inner.FindAccountForServer(server ? cast(nsIMsgIncomingServer)server : null, &_retval);
    CheckException(__result);
    return new nsIMsgAccountD(_retval);
  }

  /* nsISupportsArray GetIdentitiesForServer (in nsIMsgIncomingServer server); */
  nsISupportsArrayD  GetIdentitiesForServer(nsIMsgIncomingServerD server){
    nsISupportsArray _retval;
    nsresult __result = inner.GetIdentitiesForServer(server ? cast(nsIMsgIncomingServer)server : null, &_retval);
    CheckException(__result);
    return new nsISupportsArrayD(_retval);
  }

  /**
   * given a server, return the first identity in accounts that have this server
   */
  /* nsIMsgIdentity getFirstIdentityForServer (in nsIMsgIncomingServer server); */
  nsIMsgIdentityD  GetFirstIdentityForServer(nsIMsgIncomingServerD server){
    nsIMsgIdentity _retval;
    nsresult __result = inner.GetFirstIdentityForServer(server ? cast(nsIMsgIncomingServer)server : null, &_retval);
    CheckException(__result);
    return new nsIMsgIdentityD(_retval);
  }

  /* nsISupportsArray GetServersForIdentity (in nsIMsgIdentity identity); */
  nsISupportsArrayD  GetServersForIdentity(nsIMsgIdentityD identity){
    nsISupportsArray _retval;
    nsresult __result = inner.GetServersForIdentity(identity ? cast(nsIMsgIdentity)identity : null, &_retval);
    CheckException(__result);
    return new nsISupportsArrayD(_retval);
  }

  /* attribute nsIMsgIncomingServer localFoldersServer; */
  nsIMsgIncomingServerD  LocalFoldersServer(){
    nsIMsgIncomingServer value;
    nsresult __result = inner.GetLocalFoldersServer(&value);
    CheckException(__result);
    return new nsIMsgIncomingServerD(value);
  }
  void LocalFoldersServer(nsIMsgIncomingServerD  aLocalFoldersServer){
    nsIMsgIncomingServer value;
    nsresult __result = inner.SetLocalFoldersServer(value);
    CheckException(__result);
  }

  /* void LoadAccounts (); */
  void LoadAccounts(){
    nsresult __result = inner.LoadAccounts();
    CheckException(__result);
  }

  /* void setSpecialFolders (); */
  void SetSpecialFolders(){
    nsresult __result = inner.SetSpecialFolders();
    CheckException(__result);
  }

  /* void loadVirtualFolders (); */
  void LoadVirtualFolders(){
    nsresult __result = inner.LoadVirtualFolders();
    CheckException(__result);
  }

  /* void UnloadAccounts (); */
  void UnloadAccounts(){
    nsresult __result = inner.UnloadAccounts();
    CheckException(__result);
  }

  /* void WriteToFolderCache (in nsIMsgFolderCache folderCache); */
  void WriteToFolderCache(nsIMsgFolderCacheD folderCache){
    nsresult __result = inner.WriteToFolderCache(folderCache ? cast(nsIMsgFolderCache)folderCache : null);
    CheckException(__result);
  }

  /* void saveVirtualFolders (); */
  void SaveVirtualFolders(){
    nsresult __result = inner.SaveVirtualFolders();
    CheckException(__result);
  }

  /* void closeCachedConnections (); */
  void CloseCachedConnections(){
    nsresult __result = inner.CloseCachedConnections();
    CheckException(__result);
  }

  /* void shutdownServers (); */
  void ShutdownServers(){
    nsresult __result = inner.ShutdownServers();
    CheckException(__result);
  }

  /* void CleanupOnExit (); */
  void CleanupOnExit(){
    nsresult __result = inner.CleanupOnExit();
    CheckException(__result);
  }

  /* void SetFolderDoingEmptyTrash (in nsIMsgFolder folder); */
  void SetFolderDoingEmptyTrash(nsIMsgFolderD folder){
    nsresult __result = inner.SetFolderDoingEmptyTrash(folder ? cast(nsIMsgFolder)folder : null);
    CheckException(__result);
  }

  /* boolean GetEmptyTrashInProgress (); */
  PRBool GetEmptyTrashInProgress(){
    PRBool _retval;
    nsresult __result = inner.GetEmptyTrashInProgress(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void SetFolderDoingCleanupInbox (in nsIMsgFolder folder); */
  void SetFolderDoingCleanupInbox(nsIMsgFolderD folder){
    nsresult __result = inner.SetFolderDoingCleanupInbox(folder ? cast(nsIMsgFolder)folder : null);
    CheckException(__result);
  }

  /* boolean GetCleanupInboxInProgress (); */
  PRBool GetCleanupInboxInProgress(){
    PRBool _retval;
    nsresult __result = inner.GetCleanupInboxInProgress(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void addRootFolderListener (in nsIFolderListener listener); */
  void AddRootFolderListener(nsIFolderListenerD listener){
    nsresult __result = inner.AddRootFolderListener(listener ? cast(nsIFolderListener)listener : null);
    CheckException(__result);
  }

  /* void removeRootFolderListener (in nsIFolderListener listener); */
  void RemoveRootFolderListener(nsIFolderListenerD listener){
    nsresult __result = inner.RemoveRootFolderListener(listener ? cast(nsIFolderListener)listener : null);
    CheckException(__result);
  }

  /* void addIncomingServerListener (in nsIIncomingServerListener serverListener); */
  void AddIncomingServerListener(nsIIncomingServerListenerD serverListener){
    nsresult __result = inner.AddIncomingServerListener(serverListener ? cast(nsIIncomingServerListener)serverListener : null);
    CheckException(__result);
  }

  /* void removeIncomingServerListener (in nsIIncomingServerListener serverListener); */
  void RemoveIncomingServerListener(nsIIncomingServerListenerD serverListener){
    nsresult __result = inner.RemoveIncomingServerListener(serverListener ? cast(nsIIncomingServerListener)serverListener : null);
    CheckException(__result);
  }

  /* void notifyServerLoaded (in nsIMsgIncomingServer server); */
  void NotifyServerLoaded(nsIMsgIncomingServerD server){
    nsresult __result = inner.NotifyServerLoaded(server ? cast(nsIMsgIncomingServer)server : null);
    CheckException(__result);
  }

  /* void notifyServerUnloaded (in nsIMsgIncomingServer server); */
  void NotifyServerUnloaded(nsIMsgIncomingServerD server){
    nsresult __result = inner.NotifyServerUnloaded(server ? cast(nsIMsgIncomingServer)server : null);
    CheckException(__result);
  }

  /* void notifyServerChanged (in nsIMsgIncomingServer server); */
  void NotifyServerChanged(nsIMsgIncomingServerD server){
    nsresult __result = inner.NotifyServerChanged(server ? cast(nsIMsgIncomingServer)server : null);
    CheckException(__result);
  }

  /* void saveAccountInfo (); */
  void SaveAccountInfo(){
    nsresult __result = inner.SaveAccountInfo();
    CheckException(__result);
  }

  /* string getChromePackageName (in string aExtensionName); */
  char* GetChromePackageName(char*aExtensionName){
    char* _retval;
    nsresult __result = inner.GetChromePackageName(aExtensionName, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIMsgAccountManager inner;

}


/* starting wrapper class:    nsIMsgAccountManagerExtension */
class nsIMsgAccountManagerExtensionD : public nsISupportsD {

  static const nsIID IID = NS_IMSGACCOUNTMANAGEREXTENSION_IID;


  alias nsIMsgAccountManagerExtension InnerType;

  this(nsIMsgAccountManagerExtension intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgAccountManagerExtension opCast() {
    return inner;
  }

  void opAssign(nsIMsgAccountManagerExtension value) {
    inner = value;
  }

  /* readonly attribute string name; */
  char* Name(){
    char* value;
    nsresult __result = inner.GetName(&value);
    CheckException(__result);
    return value;
  }

  /* boolean showPanel (in nsIMsgIncomingServer server); */
  PRBool ShowPanel(nsIMsgIncomingServerD server){
    PRBool _retval;
    nsresult __result = inner.ShowPanel(server ? cast(nsIMsgIncomingServer)server : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* readonly attribute string chromePackageName; */
  char* ChromePackageName(){
    char* value;
    nsresult __result = inner.GetChromePackageName(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIMsgAccountManagerExtension inner;

}

