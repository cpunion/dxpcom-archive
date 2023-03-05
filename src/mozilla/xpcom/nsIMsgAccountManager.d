/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgAccountManager.idl
 */

module mozilla.xpcom.nsIMsgAccountManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIMsgAccount;
public import mozilla.xpcom.nsIMsgIdentity;
public import mozilla.xpcom.nsIMsgIncomingServer;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.xpcom.nsIIncomingServerListener;
public import mozilla.xpcom.nsIMsgFolder;

public import mozilla.xpcom.nsIMsgFolderCache; /* forward declaration */

public import mozilla.xpcom.nsIFolderListener; /* forward declaration */


/* starting interface:    nsIMsgAccountManager */
const char[] NS_IMSGACCOUNTMANAGER_IID_STR = "0dc74b96-c2fc-4ce0-baed-c6f03c69026e";

const nsIID NS_IMSGACCOUNTMANAGER_IID= 
  {0x0dc74b96, 0xc2fc, 0x4ce0, 
    [ 0xba, 0xed, 0xc6, 0xf0, 0x3c, 0x69, 0x02, 0x6e ]};

extern(Windows)
interface nsIMsgAccountManager : nsISupports {
  static const char[] IID_STR = NS_IMSGACCOUNTMANAGER_IID_STR;
  static const nsIID IID = NS_IMSGACCOUNTMANAGER_IID;

  /* nsIMsgAccount createAccount (); */
  nsresult CreateAccount(nsIMsgAccount *_retval);

  /* nsIMsgAccount getAccount (in string key); */
  nsresult GetAccount(char *key, nsIMsgAccount *_retval);

  /* void removeAccount (in nsIMsgAccount account); */
  nsresult RemoveAccount(nsIMsgAccount account);

  /* void removeIdentity (in nsIMsgIdentity identity); */
  nsresult RemoveIdentity(nsIMsgIdentity identity);

  /* void duplicateAccount (in nsIMsgAccount account); */
  nsresult DuplicateAccount(nsIMsgAccount account);

  /* nsIMsgIdentity createIdentity (); */
  nsresult CreateIdentity(nsIMsgIdentity *_retval);

  /* nsIMsgIncomingServer createIncomingServer (in string username, in string hostname, in string type); */
  nsresult CreateIncomingServer(char *username, char *hostname, char *type, nsIMsgIncomingServer *_retval);

  /* nsIMsgIdentity getIdentity (in string key); */
  nsresult GetIdentity(char *key, nsIMsgIdentity *_retval);

  /* nsIMsgIncomingServer getIncomingServer (in string key); */
  nsresult GetIncomingServer(char *key, nsIMsgIncomingServer *_retval);

  /* attribute nsIMsgAccount defaultAccount; */
  nsresult GetDefaultAccount(nsIMsgAccount  *aDefaultAccount);
  nsresult SetDefaultAccount(nsIMsgAccount  aDefaultAccount);

  /**
   * ordered list of all accounts, by the order they are in the prefs
   * array of nsIMsgAccount
   */
  /* readonly attribute nsISupportsArray accounts; */
  nsresult GetAccounts(nsISupportsArray  *aAccounts);

  /* readonly attribute nsISupportsArray allIdentities; */
  nsresult GetAllIdentities(nsISupportsArray  *aAllIdentities);

  /* readonly attribute nsISupportsArray allServers; */
  nsresult GetAllServers(nsISupportsArray  *aAllServers);

  /* readonly attribute nsIMsgFolderCache folderCache; */
  nsresult GetFolderCache(nsIMsgFolderCache  *aFolderCache);

  /* readonly attribute boolean shutdownInProgress; */
  nsresult GetShutdownInProgress(PRBool *aShutdownInProgress);

  /**
   * for preventing unauthenticated users from seeing header information 
   */
  /* attribute boolean userNeedsToAuthenticate; */
  nsresult GetUserNeedsToAuthenticate(PRBool *aUserNeedsToAuthenticate);
  nsresult SetUserNeedsToAuthenticate(PRBool aUserNeedsToAuthenticate);

  /* nsIMsgIncomingServer FindServer (in string userName, in string hostname, in string type); */
  nsresult FindServer(char *userName, char *hostname, char *type, nsIMsgIncomingServer *_retval);

  /* nsIMsgIncomingServer findServerByURI (in nsIURI aURI, in boolean aRealFlag); */
  nsresult FindServerByURI(nsIURI aURI, PRBool aRealFlag, nsIMsgIncomingServer *_retval);

  /* nsIMsgIncomingServer findRealServer (in string userName, in string hostname, in string type, in long port); */
  nsresult FindRealServer(char *userName, char *hostname, char *type, PRInt32 port, nsIMsgIncomingServer *_retval);

  /**
   * find the index of this server in the (ordered) list of accounts
   */
  /* long FindServerIndex (in nsIMsgIncomingServer server); */
  nsresult FindServerIndex(nsIMsgIncomingServer server, PRInt32 *_retval);

  /* nsIMsgAccount FindAccountForServer (in nsIMsgIncomingServer server); */
  nsresult FindAccountForServer(nsIMsgIncomingServer server, nsIMsgAccount *_retval);

  /* nsISupportsArray GetIdentitiesForServer (in nsIMsgIncomingServer server); */
  nsresult GetIdentitiesForServer(nsIMsgIncomingServer server, nsISupportsArray *_retval);

  /**
   * given a server, return the first identity in accounts that have this server
   */
  /* nsIMsgIdentity getFirstIdentityForServer (in nsIMsgIncomingServer server); */
  nsresult GetFirstIdentityForServer(nsIMsgIncomingServer server, nsIMsgIdentity *_retval);

  /* nsISupportsArray GetServersForIdentity (in nsIMsgIdentity identity); */
  nsresult GetServersForIdentity(nsIMsgIdentity identity, nsISupportsArray *_retval);

  /* attribute nsIMsgIncomingServer localFoldersServer; */
  nsresult GetLocalFoldersServer(nsIMsgIncomingServer  *aLocalFoldersServer);
  nsresult SetLocalFoldersServer(nsIMsgIncomingServer  aLocalFoldersServer);

  /* void LoadAccounts (); */
  nsresult LoadAccounts();

  /* void setSpecialFolders (); */
  nsresult SetSpecialFolders();

  /* void loadVirtualFolders (); */
  nsresult LoadVirtualFolders();

  /* void UnloadAccounts (); */
  nsresult UnloadAccounts();

  /* void WriteToFolderCache (in nsIMsgFolderCache folderCache); */
  nsresult WriteToFolderCache(nsIMsgFolderCache folderCache);

  /* void saveVirtualFolders (); */
  nsresult SaveVirtualFolders();

  /* void closeCachedConnections (); */
  nsresult CloseCachedConnections();

  /* void shutdownServers (); */
  nsresult ShutdownServers();

  /* void CleanupOnExit (); */
  nsresult CleanupOnExit();

  /* void SetFolderDoingEmptyTrash (in nsIMsgFolder folder); */
  nsresult SetFolderDoingEmptyTrash(nsIMsgFolder folder);

  /* boolean GetEmptyTrashInProgress (); */
  nsresult GetEmptyTrashInProgress(PRBool *_retval);

  /* void SetFolderDoingCleanupInbox (in nsIMsgFolder folder); */
  nsresult SetFolderDoingCleanupInbox(nsIMsgFolder folder);

  /* boolean GetCleanupInboxInProgress (); */
  nsresult GetCleanupInboxInProgress(PRBool *_retval);

  /* void addRootFolderListener (in nsIFolderListener listener); */
  nsresult AddRootFolderListener(nsIFolderListener listener);

  /* void removeRootFolderListener (in nsIFolderListener listener); */
  nsresult RemoveRootFolderListener(nsIFolderListener listener);

  /* void addIncomingServerListener (in nsIIncomingServerListener serverListener); */
  nsresult AddIncomingServerListener(nsIIncomingServerListener serverListener);

  /* void removeIncomingServerListener (in nsIIncomingServerListener serverListener); */
  nsresult RemoveIncomingServerListener(nsIIncomingServerListener serverListener);

  /* void notifyServerLoaded (in nsIMsgIncomingServer server); */
  nsresult NotifyServerLoaded(nsIMsgIncomingServer server);

  /* void notifyServerUnloaded (in nsIMsgIncomingServer server); */
  nsresult NotifyServerUnloaded(nsIMsgIncomingServer server);

  /* void notifyServerChanged (in nsIMsgIncomingServer server); */
  nsresult NotifyServerChanged(nsIMsgIncomingServer server);

  /* void saveAccountInfo (); */
  nsresult SaveAccountInfo();

  /* string getChromePackageName (in string aExtensionName); */
  nsresult GetChromePackageName(char *aExtensionName, char **_retval);

}


/* starting interface:    nsIMsgAccountManagerExtension */
const char[] NS_IMSGACCOUNTMANAGEREXTENSION_IID_STR = "9ce9fc76-1dd1-11b2-8da2-bf6b98b4c537";

const nsIID NS_IMSGACCOUNTMANAGEREXTENSION_IID= 
  {0x9ce9fc76, 0x1dd1, 0x11b2, 
    [ 0x8d, 0xa2, 0xbf, 0x6b, 0x98, 0xb4, 0xc5, 0x37 ]};

extern(Windows)
interface nsIMsgAccountManagerExtension : nsISupports {
  static const char[] IID_STR = NS_IMSGACCOUNTMANAGEREXTENSION_IID_STR;
  static const nsIID IID = NS_IMSGACCOUNTMANAGEREXTENSION_IID;

  /* readonly attribute string name; */
  nsresult GetName(char * *aName);

  /* boolean showPanel (in nsIMsgIncomingServer server); */
  nsresult ShowPanel(nsIMsgIncomingServer server, PRBool *_retval);

  /* readonly attribute string chromePackageName; */
  nsresult GetChromePackageName(char * *aChromePackageName);

}

