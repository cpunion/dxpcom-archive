/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgIncomingServer.idl
 */

module mozilla.xpcom.nsIMsgIncomingServer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.MailNewsTypes2;

public import mozilla.xpcom.nsIFileSpec; /* forward declaration */

public import mozilla.xpcom.nsIMsgFolder; /* forward declaration */

public import mozilla.xpcom.nsIMsgFolderCache; /* forward declaration */

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */

public import mozilla.xpcom.nsIMsgFilterList; /* forward declaration */

public import mozilla.xpcom.nsIMsgDatabase;

public import mozilla.xpcom.nsIMsgDatabase;

public import mozilla.xpcom.nsISpamSettings; /* forward declaration */

public import mozilla.xpcom.nsIMsgFilterPlugin; /* forward declaration */

public import mozilla.xpcom.nsIUrlListener; /* forward declaration */

public import mozilla.xpcom.nsIMsgHdr;


/* starting interface:    nsIMsgIncomingServer */
const char[] NS_IMSGINCOMINGSERVER_IID_STR = "dba43e06-a4b2-4c9e-b4d5-002504f63212";

const nsIID NS_IMSGINCOMINGSERVER_IID= 
  {0xdba43e06, 0xa4b2, 0x4c9e, 
    [ 0xb4, 0xd5, 0x00, 0x25, 0x04, 0xf6, 0x32, 0x12 ]};

extern(Windows)
interface nsIMsgIncomingServer : nsISupports {
  static const char[] IID_STR = NS_IMSGINCOMINGSERVER_IID_STR;
  static const nsIID IID = NS_IMSGINCOMINGSERVER_IID;

  /**
   * internal pref key - guaranteed to be unique across all servers
   */
  /* attribute string key; */
  nsresult GetKey(char * *aKey);
  nsresult SetKey(char * aKey);

  /**
   * pretty name - should be "userid on hostname"
   * if the pref is not set
   */
  /* attribute wstring prettyName; */
  nsresult GetPrettyName(PRUnichar * *aPrettyName);
  nsresult SetPrettyName(PRUnichar * aPrettyName);

  /**
  * helper function to construct the pretty name in a server type
  * specific way - e.g., mail for foo@test.com, news on news.mozilla.org
  */
  /* readonly attribute wstring constructedPrettyName; */
  nsresult GetConstructedPrettyName(PRUnichar * *aConstructedPrettyName);

  /**
   * hostname of the server
   */
  /* attribute string hostName; */
  nsresult GetHostName(char * *aHostName);
  nsresult SetHostName(char * aHostName);

  /**
   * real hostname of the server (if server name is changed it's stored here)
   */
  /* attribute string realHostName; */
  nsresult GetRealHostName(char * *aRealHostName);
  nsresult SetRealHostName(char * aRealHostName);

  /* attribute long port; */
  nsresult GetPort(PRInt32 *aPort);
  nsresult SetPort(PRInt32 aPort);

  /**
   * userid to log into the server
   */
  /* attribute string username; */
  nsresult GetUsername(char * *aUsername);
  nsresult SetUsername(char * aUsername);

  /**
   * real username of the server (if username is changed it's stored here)
   */
  /* attribute string realUsername; */
  nsresult GetRealUsername(char * *aRealUsername);
  nsresult SetRealUsername(char * aRealUsername);

  /**
   * protocol type, i.e. "pop3", "imap", "nntp", "none", etc
   * used to construct URLs
   */
  /* attribute string type; */
  nsresult GetType(char * *aType);
  nsresult SetType(char * aType);

  /* readonly attribute AString accountManagerChrome; */
  nsresult GetAccountManagerChrome(nsAString * aAccountManagerChrome);

  /**
   * the schema for the local mail store, such
   * as "mailbox", "imap", or "news"
   * used to construct URIs
   */
  /* readonly attribute string localStoreType; */
  nsresult GetLocalStoreType(char * *aLocalStoreType);

  /* void OnUserOrHostNameChanged (in string oldName, in string newName); */
  nsresult OnUserOrHostNameChanged(char *oldName, char *newName);

  /* attribute boolean rememberPassword; */
  nsresult GetRememberPassword(PRBool *aRememberPassword);
  nsresult SetRememberPassword(PRBool aRememberPassword);

  /* attribute string password; */
  nsresult GetPassword(char * *aPassword);
  nsresult SetPassword(char * aPassword);

  /* string getPasswordWithUI (in wstring aPromptString, in wstring aPromptTitle, in nsIMsgWindow aMsgWindow, out boolean okayValue); */
  nsresult GetPasswordWithUI(PRUnichar *aPromptString, PRUnichar *aPromptTitle, nsIMsgWindow aMsgWindow, PRBool *okayValue, char **_retval);

  /* void forgetPassword (); */
  nsresult ForgetPassword();

  /**
   * logon succeeded - persist password, if user chooses.
   */
  /* void storePassword (); */
  nsresult StorePassword();

  /* void forgetSessionPassword (); */
  nsresult ForgetSessionPassword();

  /* attribute boolean downloadOnBiff; */
  nsresult GetDownloadOnBiff(PRBool *aDownloadOnBiff);
  nsresult SetDownloadOnBiff(PRBool aDownloadOnBiff);

  /* attribute boolean doBiff; */
  nsresult GetDoBiff(PRBool *aDoBiff);
  nsresult SetDoBiff(PRBool aDoBiff);

  /* attribute long biffMinutes; */
  nsresult GetBiffMinutes(PRInt32 *aBiffMinutes);
  nsresult SetBiffMinutes(PRInt32 aBiffMinutes);

  /* attribute unsigned long biffState; */
  nsresult GetBiffState(PRUint32 *aBiffState);
  nsresult SetBiffState(PRUint32 aBiffState);

  /* attribute boolean performingBiff; */
  nsresult GetPerformingBiff(PRBool *aPerformingBiff);
  nsresult SetPerformingBiff(PRBool aPerformingBiff);

  /* attribute nsIFileSpec localPath; */
  nsresult GetLocalPath(nsIFileSpec  *aLocalPath);
  nsresult SetLocalPath(nsIFileSpec  aLocalPath);

  /* readonly attribute string serverURI; */
  nsresult GetServerURI(char * *aServerURI);

  /* attribute nsIMsgFolder rootFolder; */
  nsresult GetRootFolder(nsIMsgFolder  *aRootFolder);
  nsresult SetRootFolder(nsIMsgFolder  aRootFolder);

  /* readonly attribute nsIMsgFolder rootMsgFolder; */
  nsresult GetRootMsgFolder(nsIMsgFolder  *aRootMsgFolder);

  /* attribute boolean serverBusy; */
  nsresult GetServerBusy(PRBool *aServerBusy);
  nsresult SetServerBusy(PRBool aServerBusy);

  /* attribute boolean isSecure; */
  nsresult GetIsSecure(PRBool *aIsSecure);
  nsresult SetIsSecure(PRBool aIsSecure);

  /* attribute boolean useSecAuth; */
  nsresult GetUseSecAuth(PRBool *aUseSecAuth);
  nsresult SetUseSecAuth(PRBool aUseSecAuth);

  enum { defaultSocket = 0 };

  enum { tryTLS = 1 };

  enum { alwaysUseTLS = 2 };

  enum { useSSL = 3 };

  /* attribute long socketType; */
  nsresult GetSocketType(PRInt32 *aSocketType);
  nsresult SetSocketType(PRInt32 aSocketType);

  /* attribute boolean logonFallback; */
  nsresult GetLogonFallback(PRBool *aLogonFallback);
  nsresult SetLogonFallback(PRBool aLogonFallback);

  /* readonly attribute boolean isSecureServer; */
  nsresult GetIsSecureServer(PRBool *aIsSecureServer);

  /* attribute string redirectorType; */
  nsresult GetRedirectorType(char * *aRedirectorType);
  nsresult SetRedirectorType(char * aRedirectorType);

  /* attribute boolean emptyTrashOnExit; */
  nsresult GetEmptyTrashOnExit(PRBool *aEmptyTrashOnExit);
  nsresult SetEmptyTrashOnExit(PRBool aEmptyTrashOnExit);

  /* nsIMsgFilterList getFilterList (in nsIMsgWindow aMsgWindow); */
  nsresult GetFilterList(nsIMsgWindow aMsgWindow, nsIMsgFilterList *_retval);

  /* void setFilterList (in nsIMsgFilterList aFilterList); */
  nsresult SetFilterList(nsIMsgFilterList aFilterList);

  /* void SetDefaultLocalPath (in nsIFileSpec aDefaultLocalPath); */
  nsresult SetDefaultLocalPath(nsIFileSpec aDefaultLocalPath);

  /* void PerformBiff (in nsIMsgWindow aMsgWindow); */
  nsresult PerformBiff(nsIMsgWindow aMsgWindow);

  /* void getNewMessages (in nsIMsgFolder aFolder, in nsIMsgWindow aMsgWindow, in nsIUrlListener aUrlListener); */
  nsresult GetNewMessages(nsIMsgFolder aFolder, nsIMsgWindow aMsgWindow, nsIUrlListener aUrlListener);

  /* readonly attribute boolean serverRequiresPasswordForBiff; */
  nsresult GetServerRequiresPasswordForBiff(PRBool *aServerRequiresPasswordForBiff);

  /* void performExpand (in nsIMsgWindow aMsgWindow); */
  nsresult PerformExpand(nsIMsgWindow aMsgWindow);

  /* void WriteToFolderCache (in nsIMsgFolderCache folderCache); */
  nsresult WriteToFolderCache(nsIMsgFolderCache folderCache);

  /* void CloseCachedConnections (); */
  nsresult CloseCachedConnections();

  /* void shutdown (); */
  nsresult Shutdown();

  /* boolean getBoolValue (in string attr); */
  nsresult GetBoolValue(char *attr, PRBool *_retval);

  /* void setBoolValue (in string attr, in boolean value); */
  nsresult SetBoolValue(char *attr, PRBool value);

  /* string getCharValue (in string attr); */
  nsresult GetCharValue(char *attr, char **_retval);

  /* void setCharValue (in string attr, in string value); */
  nsresult SetCharValue(char *attr, char *value);

  /* wstring getUnicharValue (in string attr); */
  nsresult GetUnicharValue(char *attr, PRUnichar **_retval);

  /* void setUnicharValue (in string attr, in wstring value); */
  nsresult SetUnicharValue(char *attr, PRUnichar *value);

  /* long getIntValue (in string attr); */
  nsresult GetIntValue(char *attr, PRInt32 *_retval);

  /* void setIntValue (in string attr, in long value); */
  nsresult SetIntValue(char *attr, PRInt32 value);

  /* nsIFileSpec getFileValue (in string attr); */
  nsresult GetFileValue(char *attr, nsIFileSpec *_retval);

  /* void setFileValue (in string attr, in nsIFileSpec value); */
  nsresult SetFileValue(char *attr, nsIFileSpec value);

  /**
   * this is really dangerous. this destroys all pref values
   * do not call this unless you know what you're doing!
   */
  /* void clearAllValues (); */
  nsresult ClearAllValues();

  /** 
   * this is also very dangerous.  this will remove the files
   * associated with this server on disk.
   */
  /* void removeFiles (); */
  nsresult RemoveFiles();

  /* attribute boolean valid; */
  nsresult GetValid(PRBool *aValid);
  nsresult SetValid(PRBool aValid);

  /* wstring toString (); */
  nsresult ToString(PRUnichar **_retval);

  /* void displayOfflineMsg (in nsIMsgWindow aWindow); */
  nsresult DisplayOfflineMsg(nsIMsgWindow aWindow);

  /* boolean equals (in nsIMsgIncomingServer server); */
  nsresult Equals(nsIMsgIncomingServer server, PRBool *_retval);

  /* readonly attribute boolean downloadMessagesAtStartup; */
  nsresult GetDownloadMessagesAtStartup(PRBool *aDownloadMessagesAtStartup);

  /* readonly attribute boolean canHaveFilters; */
  nsresult GetCanHaveFilters(PRBool *aCanHaveFilters);

  /**
   * can this server be removed from the account manager?  for
   * instance, local mail is not removable, but an imported folder is 
   */
  /* attribute boolean canDelete; */
  nsresult GetCanDelete(PRBool *aCanDelete);
  nsresult SetCanDelete(PRBool aCanDelete);

  /* attribute boolean loginAtStartUp; */
  nsresult GetLoginAtStartUp(PRBool *aLoginAtStartUp);
  nsresult SetLoginAtStartUp(PRBool aLoginAtStartUp);

  /* attribute boolean limitOfflineMessageSize; */
  nsresult GetLimitOfflineMessageSize(PRBool *aLimitOfflineMessageSize);
  nsresult SetLimitOfflineMessageSize(PRBool aLimitOfflineMessageSize);

  /* attribute long maxMessageSize; */
  nsresult GetMaxMessageSize(PRInt32 *aMaxMessageSize);
  nsresult SetMaxMessageSize(PRInt32 aMaxMessageSize);

  /* attribute nsIMsgRetentionSettings retentionSettings; */
  nsresult GetRetentionSettings(nsIMsgRetentionSettings  *aRetentionSettings);
  nsresult SetRetentionSettings(nsIMsgRetentionSettings  aRetentionSettings);

  /* readonly attribute boolean canBeDefaultServer; */
  nsresult GetCanBeDefaultServer(PRBool *aCanBeDefaultServer);

  /* readonly attribute boolean canSearchMessages; */
  nsresult GetCanSearchMessages(PRBool *aCanSearchMessages);

  /* readonly attribute boolean canEmptyTrashOnExit; */
  nsresult GetCanEmptyTrashOnExit(PRBool *aCanEmptyTrashOnExit);

  /* attribute boolean displayStartupPage; */
  nsresult GetDisplayStartupPage(PRBool *aDisplayStartupPage);
  nsresult SetDisplayStartupPage(PRBool aDisplayStartupPage);

  /* attribute nsIMsgDownloadSettings downloadSettings; */
  nsresult GetDownloadSettings(nsIMsgDownloadSettings  *aDownloadSettings);
  nsresult SetDownloadSettings(nsIMsgDownloadSettings  aDownloadSettings);

  /* attribute long offlineSupportLevel; */
  nsresult GetOfflineSupportLevel(PRInt32 *aOfflineSupportLevel);
  nsresult SetOfflineSupportLevel(PRInt32 aOfflineSupportLevel);

  /* wstring generatePrettyNameForMigration (); */
  nsresult GeneratePrettyNameForMigration(PRUnichar **_retval);

  /* readonly attribute boolean supportsDiskSpace; */
  nsresult GetSupportsDiskSpace(PRBool *aSupportsDiskSpace);

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
  nsresult GetDefaultCopiesAndFoldersPrefsToServer(PRBool *aDefaultCopiesAndFoldersPrefsToServer);
  nsresult SetDefaultCopiesAndFoldersPrefsToServer(PRBool aDefaultCopiesAndFoldersPrefsToServer);

  /* attribute boolean canCreateFoldersOnServer; */
  nsresult GetCanCreateFoldersOnServer(PRBool *aCanCreateFoldersOnServer);
  nsresult SetCanCreateFoldersOnServer(PRBool aCanCreateFoldersOnServer);

  /* attribute boolean canFileMessagesOnServer; */
  nsresult GetCanFileMessagesOnServer(PRBool *aCanFileMessagesOnServer);
  nsresult SetCanFileMessagesOnServer(PRBool aCanFileMessagesOnServer);

  /* readonly attribute boolean canCompactFoldersOnServer; */
  nsresult GetCanCompactFoldersOnServer(PRBool *aCanCompactFoldersOnServer);

  /* readonly attribute boolean canUndoDeleteOnServer; */
  nsresult GetCanUndoDeleteOnServer(PRBool *aCanUndoDeleteOnServer);

  /* readonly attribute nsMsgSearchScopeValue filterScope; */
  nsresult GetFilterScope(nsMsgSearchScopeValue *aFilterScope);

  /* readonly attribute nsMsgSearchScopeValue searchScope; */
  nsresult GetSearchScope(nsMsgSearchScopeValue *aSearchScope);

  /** 
   * these generic getter / setters, useful for extending mailnews 
   * note, these attributes persist across sessions
   */
  /* wstring getUnicharAttribute (in string name); */
  nsresult GetUnicharAttribute(char *name, PRUnichar **_retval);

  /* void setUnicharAttribute (in string name, in wstring value); */
  nsresult SetUnicharAttribute(char *name, PRUnichar *value);

  /* string getCharAttribute (in string name); */
  nsresult GetCharAttribute(char *name, char **_retval);

  /* void setCharAttribute (in string name, in string value); */
  nsresult SetCharAttribute(char *name, char *value);

  /* boolean getBoolAttribute (in string name); */
  nsresult GetBoolAttribute(char *name, PRBool *_retval);

  /* void setBoolAttribute (in string name, in boolean value); */
  nsresult SetBoolAttribute(char *name, PRBool value);

  /* long getIntAttribute (in string name); */
  nsresult GetIntAttribute(char *name, PRInt32 *_retval);

  /* void setIntAttribute (in string name, in long value); */
  nsresult SetIntAttribute(char *name, PRInt32 value);

  /** 
   * If the password for the server is available either via authentication 
   * in the current session or from password manager stored entries, return
   * false. Otherwise, return true. If password is obtained from password 
   * manager, set the password member variable.
   */
  /* readonly attribute boolean passwordPromptRequired; */
  nsresult GetPasswordPromptRequired(PRBool *aPasswordPromptRequired);

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
  nsresult ConfigureTemporaryFilters(nsIMsgFilterList filterList);

  /**
   * If Sent folder pref is changed we need to clear the temporary 
   * return receipt filter so that the new return receipt filter can
   * be recreated (by ConfigureTemporaryReturnReceiptsFilter()).
   */
  /* void clearTemporaryReturnReceiptsFilter (); */
  nsresult ClearTemporaryReturnReceiptsFilter();

  /**
   * spam settings
   */
  /* readonly attribute nsISpamSettings spamSettings; */
  nsresult GetSpamSettings(nsISpamSettings  *aSpamSettings);

  /* readonly attribute nsIMsgFilterPlugin spamFilterPlugin; */
  nsresult GetSpamFilterPlugin(nsIMsgFilterPlugin  *aSpamFilterPlugin);

  /* nsIMsgFolder getMsgFolderFromURI (in nsIMsgFolder aFolderResource, in string aURI); */
  nsresult GetMsgFolderFromURI(nsIMsgFolder aFolderResource, char *aURI, nsIMsgFolder *_retval);

  /* readonly attribute boolean isDeferredTo; */
  nsresult GetIsDeferredTo(PRBool *aIsDeferredTo);

  enum { keepDups = 0 };

  enum { deleteDups = 1 };

  enum { moveDupsToTrash = 2 };

  enum { markDupsRead = 3 };

  /* attribute long incomingDuplicateAction; */
  nsresult GetIncomingDuplicateAction(PRInt32 *aIncomingDuplicateAction);
  nsresult SetIncomingDuplicateAction(PRInt32 aIncomingDuplicateAction);

  /* boolean isNewHdrDuplicate (in nsIMsgDBHdr aNewHdr); */
  nsresult IsNewHdrDuplicate(nsIMsgDBHdr aNewHdr, PRBool *_retval);

}

