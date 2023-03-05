/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImapServerSink.idl
 */

module mozilla.xpcom.nsIImapServerSink;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.MailNewsTypes2;

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */

public import mozilla.xpcom.nsIMsgMailNewsUrl; /* forward declaration */

public import mozilla.xpcom.nsIImapProtocol; /* forward declaration */

public import mozilla.xpcom.nsIImapUrl; /* forward declaration */


/* starting interface:    nsIImapServerSink */
const char[] NS_IIMAPSERVERSINK_IID_STR = "f61940a5-71d7-455a-8383-940d0b6a964b";

const nsIID NS_IIMAPSERVERSINK_IID= 
  {0xf61940a5, 0x71d7, 0x455a, 
    [ 0x83, 0x83, 0x94, 0x0d, 0x0b, 0x6a, 0x96, 0x4b ]};

extern(Windows)
interface nsIImapServerSink : nsISupports {
  static const char[] IID_STR = NS_IIMAPSERVERSINK_IID_STR;
  static const nsIID IID = NS_IIMAPSERVERSINK_IID;

  /* boolean possibleImapMailbox (in string folderPath, in wchar hierarchyDelim, in long boxFlags); */
  nsresult PossibleImapMailbox(char *folderPath, PRUnichar hierarchyDelim, PRInt32 boxFlags, PRBool *_retval);

  /* boolean folderNeedsACLInitialized (in string folderPath); */
  nsresult FolderNeedsACLInitialized(char *folderPath, PRBool *_retval);

  /* void addFolderRights (in string folderPath, in string userName, in string rights); */
  nsresult AddFolderRights(char *folderPath, char *userName, char *rights);

  /* void refreshFolderRights (in string folderPath); */
  nsresult RefreshFolderRights(char *folderPath);

  /* void discoveryDone (); */
  nsresult DiscoveryDone();

  /* void onlineFolderDelete (in string aFolderName); */
  nsresult OnlineFolderDelete(char *aFolderName);

  /* void onlineFolderCreateFailed (in string aFolderName); */
  nsresult OnlineFolderCreateFailed(char *aFolderName);

  /* void onlineFolderRename (in nsIMsgWindow msgWindow, in string oldName, in string newName); */
  nsresult OnlineFolderRename(nsIMsgWindow msgWindow, char *oldName, char *newName);

  /* void folderIsNoSelect (in string aFolderName, out boolean aResult); */
  nsresult FolderIsNoSelect(char *aFolderName, PRBool *aResult);

  /* void setFolderAdminURL (in string aFolderName, in string adminUrl); */
  nsresult SetFolderAdminURL(char *aFolderName, char *adminUrl);

  /* boolean folderVerifiedOnline (in string aFolderName); */
  nsresult FolderVerifiedOnline(char *aFolderName, PRBool *_retval);

  /* void setCapability (in unsigned long capability); */
  nsresult SetCapability(PRUint32 capability);

  /* void loadNextQueuedUrl (in nsIImapProtocol aProtocol, out boolean urlRun); */
  nsresult LoadNextQueuedUrl(nsIImapProtocol aProtocol, PRBool *urlRun);

  /* void retryUrl (in nsIImapUrl aImapUrl); */
  nsresult RetryUrl(nsIImapUrl aImapUrl);

  /* void abortQueuedUrls (); */
  nsresult AbortQueuedUrls();

  /* void getImapStringByID (in long aMsgId, out wstring aString); */
  nsresult GetImapStringByID(PRInt32 aMsgId, PRUnichar **aString);

  /* void formatStringWithHostNameByID (in long aMsgId, out wstring aString); */
  nsresult FormatStringWithHostNameByID(PRInt32 aMsgId, PRUnichar **aString);

  /* void fEAlert (in wstring aString, in nsIMsgWindow aMsgWindow); */
  nsresult FEAlert(PRUnichar *aString, nsIMsgWindow aMsgWindow);

  /* void fEAlertFromServer (in string aString, in nsIMsgWindow aMsgWindow); */
  nsresult FEAlertFromServer(char *aString, nsIMsgWindow aMsgWindow);

  /* void commitNamespaces (); */
  nsresult CommitNamespaces();

  /* void promptForPassword (out string aString, in nsIMsgWindow aMsgWindow); */
  nsresult PromptForPassword(char **aString, nsIMsgWindow aMsgWindow);

  /* attribute boolean userAuthenticated; */
  nsresult GetUserAuthenticated(PRBool *aUserAuthenticated);
  nsresult SetUserAuthenticated(PRBool aUserAuthenticated);

  /* void setMailServerUrls (in string manageMailAccount, in string manageLists, in string manageFilters); */
  nsresult SetMailServerUrls(char *manageMailAccount, char *manageLists, char *manageFilters);

  /* void RemoveChannelFromUrl (in nsIMsgMailNewsUrl aUrl, in unsigned long statusCode); */
  nsresult RemoveChannelFromUrl(nsIMsgMailNewsUrl aUrl, PRUint32 statusCode);

  /* readonly attribute string arbitraryHeaders; */
  nsresult GetArbitraryHeaders(char * *aArbitraryHeaders);

  /* void forgetPassword (); */
  nsresult ForgetPassword();

  /* readonly attribute boolean showAttachmentsInline; */
  nsresult GetShowAttachmentsInline(PRBool *aShowAttachmentsInline);

  /* string cramMD5Hash (in string decodedChallenge, in string key); */
  nsresult CramMD5Hash(char *decodedChallenge, char *key, char **_retval);

}

