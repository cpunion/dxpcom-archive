/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImapServerSink.idl
 */

module mozilla.dxpcom.nsIImapServerSinkD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIImapServerSink;


public import mozilla.dxpcom.nsIImapServerSinkD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.MailNewsTypes2;
public import mozilla.dxpcom.MailNewsTypes2D;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;

public import mozilla.xpcom.nsIMsgMailNewsUrl;

public import mozilla.dxpcom.nsIMsgMailNewsUrlD;

public import mozilla.xpcom.nsIImapProtocol;

public import mozilla.dxpcom.nsIImapProtocolD;

public import mozilla.xpcom.nsIImapUrl;

public import mozilla.dxpcom.nsIImapUrlD;


/* starting wrapper class:    nsIImapServerSink */
class nsIImapServerSinkD : public nsISupportsD {

  static const nsIID IID = NS_IIMAPSERVERSINK_IID;


  alias nsIImapServerSink InnerType;

  this(nsIImapServerSink intr){
    super(intr);
    this.inner = intr;
  }

  nsIImapServerSink opCast() {
    return inner;
  }

  void opAssign(nsIImapServerSink value) {
    inner = value;
  }

  /* boolean possibleImapMailbox (in string folderPath, in wchar hierarchyDelim, in long boxFlags); */
  PRBool PossibleImapMailbox(char*folderPath, PRUnichar hierarchyDelim, PRInt32 boxFlags){
    PRBool _retval;
    nsresult __result = inner.PossibleImapMailbox(folderPath, hierarchyDelim, boxFlags, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean folderNeedsACLInitialized (in string folderPath); */
  PRBool FolderNeedsACLInitialized(char*folderPath){
    PRBool _retval;
    nsresult __result = inner.FolderNeedsACLInitialized(folderPath, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void addFolderRights (in string folderPath, in string userName, in string rights); */
  void AddFolderRights(char*folderPath, char*userName, char*rights){
    nsresult __result = inner.AddFolderRights(folderPath, userName, rights);
    CheckException(__result);
  }

  /* void refreshFolderRights (in string folderPath); */
  void RefreshFolderRights(char*folderPath){
    nsresult __result = inner.RefreshFolderRights(folderPath);
    CheckException(__result);
  }

  /* void discoveryDone (); */
  void DiscoveryDone(){
    nsresult __result = inner.DiscoveryDone();
    CheckException(__result);
  }

  /* void onlineFolderDelete (in string aFolderName); */
  void OnlineFolderDelete(char*aFolderName){
    nsresult __result = inner.OnlineFolderDelete(aFolderName);
    CheckException(__result);
  }

  /* void onlineFolderCreateFailed (in string aFolderName); */
  void OnlineFolderCreateFailed(char*aFolderName){
    nsresult __result = inner.OnlineFolderCreateFailed(aFolderName);
    CheckException(__result);
  }

  /* void onlineFolderRename (in nsIMsgWindow msgWindow, in string oldName, in string newName); */
  void OnlineFolderRename(nsIMsgWindowD msgWindow, char*oldName, char*newName){
    nsresult __result = inner.OnlineFolderRename(msgWindow ? cast(nsIMsgWindow)msgWindow : null, oldName, newName);
    CheckException(__result);
  }

  /* void folderIsNoSelect (in string aFolderName, out boolean aResult); */
  void FolderIsNoSelect(char*aFolderName, out PRBool aResult){
    nsresult __result = inner.FolderIsNoSelect(aFolderName, &aResult);
    CheckException(__result);
  }

  /* void setFolderAdminURL (in string aFolderName, in string adminUrl); */
  void SetFolderAdminURL(char*aFolderName, char*adminUrl){
    nsresult __result = inner.SetFolderAdminURL(aFolderName, adminUrl);
    CheckException(__result);
  }

  /* boolean folderVerifiedOnline (in string aFolderName); */
  PRBool FolderVerifiedOnline(char*aFolderName){
    PRBool _retval;
    nsresult __result = inner.FolderVerifiedOnline(aFolderName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setCapability (in unsigned long capability); */
  void SetCapability(PRUint32 capability){
    nsresult __result = inner.SetCapability(capability);
    CheckException(__result);
  }

  /* void loadNextQueuedUrl (in nsIImapProtocol aProtocol, out boolean urlRun); */
  void LoadNextQueuedUrl(nsIImapProtocolD aProtocol, out PRBool urlRun){
    nsresult __result = inner.LoadNextQueuedUrl(aProtocol ? cast(nsIImapProtocol)aProtocol : null, &urlRun);
    CheckException(__result);
  }

  /* void retryUrl (in nsIImapUrl aImapUrl); */
  void RetryUrl(nsIImapUrlD aImapUrl){
    nsresult __result = inner.RetryUrl(aImapUrl ? cast(nsIImapUrl)aImapUrl : null);
    CheckException(__result);
  }

  /* void abortQueuedUrls (); */
  void AbortQueuedUrls(){
    nsresult __result = inner.AbortQueuedUrls();
    CheckException(__result);
  }

  /* void getImapStringByID (in long aMsgId, out wstring aString); */
  void GetImapStringByID(PRInt32 aMsgId, out PRUnichar*aString){
    nsresult __result = inner.GetImapStringByID(aMsgId, &aString);
    CheckException(__result);
  }

  /* void formatStringWithHostNameByID (in long aMsgId, out wstring aString); */
  void FormatStringWithHostNameByID(PRInt32 aMsgId, out PRUnichar*aString){
    nsresult __result = inner.FormatStringWithHostNameByID(aMsgId, &aString);
    CheckException(__result);
  }

  /* void fEAlert (in wstring aString, in nsIMsgWindow aMsgWindow); */
  void FEAlert(PRUnichar*aString, nsIMsgWindowD aMsgWindow){
    nsresult __result = inner.FEAlert(aString, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null);
    CheckException(__result);
  }

  /* void fEAlertFromServer (in string aString, in nsIMsgWindow aMsgWindow); */
  void FEAlertFromServer(char*aString, nsIMsgWindowD aMsgWindow){
    nsresult __result = inner.FEAlertFromServer(aString, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null);
    CheckException(__result);
  }

  /* void commitNamespaces (); */
  void CommitNamespaces(){
    nsresult __result = inner.CommitNamespaces();
    CheckException(__result);
  }

  /* void promptForPassword (out string aString, in nsIMsgWindow aMsgWindow); */
  void PromptForPassword(out char*aString, nsIMsgWindowD aMsgWindow){
    nsresult __result = inner.PromptForPassword(&aString, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null);
    CheckException(__result);
  }

  /* attribute boolean userAuthenticated; */
  PRBool UserAuthenticated(){
    PRBool value;
    nsresult __result = inner.GetUserAuthenticated(&value);
    CheckException(__result);
    return value;
  }
  void UserAuthenticated(PRBool aUserAuthenticated){
    nsresult __result = inner.SetUserAuthenticated(aUserAuthenticated);
    CheckException(__result);
  }

  /* void setMailServerUrls (in string manageMailAccount, in string manageLists, in string manageFilters); */
  void SetMailServerUrls(char*manageMailAccount, char*manageLists, char*manageFilters){
    nsresult __result = inner.SetMailServerUrls(manageMailAccount, manageLists, manageFilters);
    CheckException(__result);
  }

  /* void RemoveChannelFromUrl (in nsIMsgMailNewsUrl aUrl, in unsigned long statusCode); */
  void RemoveChannelFromUrl(nsIMsgMailNewsUrlD aUrl, PRUint32 statusCode){
    nsresult __result = inner.RemoveChannelFromUrl(aUrl ? cast(nsIMsgMailNewsUrl)aUrl : null, statusCode);
    CheckException(__result);
  }

  /* readonly attribute string arbitraryHeaders; */
  char* ArbitraryHeaders(){
    char* value;
    nsresult __result = inner.GetArbitraryHeaders(&value);
    CheckException(__result);
    return value;
  }

  /* void forgetPassword (); */
  void ForgetPassword(){
    nsresult __result = inner.ForgetPassword();
    CheckException(__result);
  }

  /* readonly attribute boolean showAttachmentsInline; */
  PRBool ShowAttachmentsInline(){
    PRBool value;
    nsresult __result = inner.GetShowAttachmentsInline(&value);
    CheckException(__result);
    return value;
  }

  /* string cramMD5Hash (in string decodedChallenge, in string key); */
  char* CramMD5Hash(char*decodedChallenge, char*key){
    char* _retval;
    nsresult __result = inner.CramMD5Hash(decodedChallenge, key, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIImapServerSink inner;

}

