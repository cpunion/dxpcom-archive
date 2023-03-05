/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImapMailFolderSink.idl
 */

module mozilla.dxpcom.nsIImapMailFolderSinkD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIImapMailFolderSink;


public import mozilla.dxpcom.nsIImapMailFolderSinkD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.MailNewsTypes2;
public import mozilla.dxpcom.MailNewsTypes2D;
public import mozilla.xpcom.nsIImapProtocol;
public import mozilla.dxpcom.nsIImapProtocolD;
public import mozilla.xpcom.nsIMailboxSpec;
public import mozilla.dxpcom.nsIMailboxSpecD;
public import mozilla.xpcom.nsIImapUrl;
public import mozilla.dxpcom.nsIImapUrlD;

public import mozilla.xpcom.nsIMsgMailNewsUrl;

public import mozilla.dxpcom.nsIMsgMailNewsUrlD;

public import mozilla.xpcom.nsIImapMockChannel;

public import mozilla.dxpcom.nsIImapMockChannelD;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;

public import mozilla.xpcom.nsIImapHeaderXferInfo;

public import mozilla.dxpcom.nsIImapHeaderXferInfoD;


/* starting wrapper class:    ImapOnlineCopyStateType */
class ImapOnlineCopyStateTypeD {

  static const nsIID IID = IMAPONLINECOPYSTATETYPE_IID;


  alias ImapOnlineCopyStateType InnerType;

  this(ImapOnlineCopyStateType intr){
    this.inner = intr;
  }

  ImapOnlineCopyStateType opCast() {
    return inner;
  }

  void opAssign(ImapOnlineCopyStateType value) {
    inner = value;
  }

  enum { kInProgress = 0 }

  enum { kSuccessfulCopy = 1 }

  enum { kSuccessfulMove = 2 }

  enum { kSuccessfulDelete = 3 }

  enum { kFailedDelete = 4 }

  enum { kReadyForAppendData = 5 }

  enum { kFailedAppend = 6 }

  enum { kInterruptedState = 7 }

  enum { kFailedCopy = 8 }

  enum { kFailedMove = 9 }

private:
  ImapOnlineCopyStateType inner;

}


/* starting wrapper class:    nsIImapMailFolderSink */
class nsIImapMailFolderSinkD : public nsISupportsD {

  static const nsIID IID = NS_IIMAPMAILFOLDERSINK_IID;


  alias nsIImapMailFolderSink InnerType;

  this(nsIImapMailFolderSink intr){
    super(intr);
    this.inner = intr;
  }

  nsIImapMailFolderSink opCast() {
    return inner;
  }

  void opAssign(nsIImapMailFolderSink value) {
    inner = value;
  }

  /* attribute boolean folderNeedsACLListed; */
  PRBool FolderNeedsACLListed(){
    PRBool value;
    nsresult __result = inner.GetFolderNeedsACLListed(&value);
    CheckException(__result);
    return value;
  }
  void FolderNeedsACLListed(PRBool aFolderNeedsACLListed){
    nsresult __result = inner.SetFolderNeedsACLListed(aFolderNeedsACLListed);
    CheckException(__result);
  }

  /* attribute boolean folderNeedsSubscribing; */
  PRBool FolderNeedsSubscribing(){
    PRBool value;
    nsresult __result = inner.GetFolderNeedsSubscribing(&value);
    CheckException(__result);
    return value;
  }
  void FolderNeedsSubscribing(PRBool aFolderNeedsSubscribing){
    nsresult __result = inner.SetFolderNeedsSubscribing(aFolderNeedsSubscribing);
    CheckException(__result);
  }

  /* attribute boolean folderNeedsAdded; */
  PRBool FolderNeedsAdded(){
    PRBool value;
    nsresult __result = inner.GetFolderNeedsAdded(&value);
    CheckException(__result);
    return value;
  }
  void FolderNeedsAdded(PRBool aFolderNeedsAdded){
    nsresult __result = inner.SetFolderNeedsAdded(aFolderNeedsAdded);
    CheckException(__result);
  }

  /* attribute unsigned long aclFlags; */
  PRUint32 AclFlags(){
    PRUint32 value;
    nsresult __result = inner.GetAclFlags(&value);
    CheckException(__result);
    return value;
  }
  void AclFlags(PRUint32 aAclFlags){
    nsresult __result = inner.SetAclFlags(aAclFlags);
    CheckException(__result);
  }

  /* attribute long uidValidity; */
  PRInt32 UidValidity(){
    PRInt32 value;
    nsresult __result = inner.GetUidValidity(&value);
    CheckException(__result);
    return value;
  }
  void UidValidity(PRInt32 aUidValidity){
    nsresult __result = inner.SetUidValidity(aUidValidity);
    CheckException(__result);
  }

  /**
   * Whether we have asked the server for this folder's quota information.
   * If the server supports quotas, this occurs when the folder is opened.
   */
  /* attribute boolean folderQuotaCommandIssued; */
  PRBool FolderQuotaCommandIssued(){
    PRBool value;
    nsresult __result = inner.GetFolderQuotaCommandIssued(&value);
    CheckException(__result);
    return value;
  }
  void FolderQuotaCommandIssued(PRBool aFolderQuotaCommandIssued){
    nsresult __result = inner.SetFolderQuotaCommandIssued(aFolderQuotaCommandIssued);
    CheckException(__result);
  }

  /**
   * Set FolderQuotaData information
   * @param aFolderQuotaRoot    The IMAP quota root for this folder, 
   *                            as returned by the GETQUOTAROOT IMAP command.
   * @param aFolderQuotaUsedKB  Used space, in KB, on this folder's quota root.
   * @param aFolderQuotaMaxKB   Size, in KB, of this folder's quota root.
   **/
  /* void setFolderQuotaData (in ACString aFolderQuotaRoot, in unsigned long aFolderQuotaUsedKB, in unsigned long aFolderQuotaMaxKB); */
  void SetFolderQuotaData(char[] aFolderQuotaRoot, PRUint32 aFolderQuotaUsedKB, PRUint32 aFolderQuotaMaxKB){
    scope auto _aFolderQuotaRoot = new ACString(aFolderQuotaRoot);
    nsresult __result = inner.SetFolderQuotaData(cast(nsACString*)_aFolderQuotaRoot, aFolderQuotaUsedKB, aFolderQuotaMaxKB);
    CheckException(__result);
  }

  /* readonly attribute boolean shouldDownloadAllHeaders; */
  PRBool ShouldDownloadAllHeaders(){
    PRBool value;
    nsresult __result = inner.GetShouldDownloadAllHeaders(&value);
    CheckException(__result);
    return value;
  }

  /* string GetOnlineDelimiter (); */
  char* GetOnlineDelimiter(){
    char* _retval;
    nsresult __result = inner.GetOnlineDelimiter(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void OnNewIdleMessages (); */
  void OnNewIdleMessages(){
    nsresult __result = inner.OnNewIdleMessages();
    CheckException(__result);
  }

  /* void UpdateImapMailboxInfo (in nsIImapProtocol aProtocol, in nsIMailboxSpec aSpec); */
  void UpdateImapMailboxInfo(nsIImapProtocolD aProtocol, nsIMailboxSpecD aSpec){
    nsresult __result = inner.UpdateImapMailboxInfo(aProtocol ? cast(nsIImapProtocol)aProtocol : null, aSpec ? cast(nsIMailboxSpec)aSpec : null);
    CheckException(__result);
  }

  /* void UpdateImapMailboxStatus (in nsIImapProtocol aProtocol, in nsIMailboxSpec aSpec); */
  void UpdateImapMailboxStatus(nsIImapProtocolD aProtocol, nsIMailboxSpecD aSpec){
    nsresult __result = inner.UpdateImapMailboxStatus(aProtocol ? cast(nsIImapProtocol)aProtocol : null, aSpec ? cast(nsIMailboxSpec)aSpec : null);
    CheckException(__result);
  }

  /* void parseMsgHdrs (in nsIImapProtocol aProtocol, in nsIImapHeaderXferInfo aHdrXferInfo); */
  void ParseMsgHdrs(nsIImapProtocolD aProtocol, nsIImapHeaderXferInfoD aHdrXferInfo){
    nsresult __result = inner.ParseMsgHdrs(aProtocol ? cast(nsIImapProtocol)aProtocol : null, aHdrXferInfo ? cast(nsIImapHeaderXferInfo)aHdrXferInfo : null);
    CheckException(__result);
  }

  /* void AbortHeaderParseStream (in nsIImapProtocol aProtocol); */
  void AbortHeaderParseStream(nsIImapProtocolD aProtocol){
    nsresult __result = inner.AbortHeaderParseStream(aProtocol ? cast(nsIImapProtocol)aProtocol : null);
    CheckException(__result);
  }

  /* void OnlineCopyCompleted (in nsIImapProtocol aProtocol, in ImapOnlineCopyState aCopyState); */
  void OnlineCopyCompleted(nsIImapProtocolD aProtocol, ImapOnlineCopyState aCopyState){
    nsresult __result = inner.OnlineCopyCompleted(aProtocol ? cast(nsIImapProtocol)aProtocol : null, aCopyState);
    CheckException(__result);
  }

  /* void StartMessage (in nsIMsgMailNewsUrl aUrl); */
  void StartMessage(nsIMsgMailNewsUrlD aUrl){
    nsresult __result = inner.StartMessage(aUrl ? cast(nsIMsgMailNewsUrl)aUrl : null);
    CheckException(__result);
  }

  /* void EndMessage (in nsIMsgMailNewsUrl aUrl, in nsMsgKey uidOfMessage); */
  void EndMessage(nsIMsgMailNewsUrlD aUrl, nsMsgKey uidOfMessage){
    nsresult __result = inner.EndMessage(aUrl ? cast(nsIMsgMailNewsUrl)aUrl : null, uidOfMessage);
    CheckException(__result);
  }

  /* void NotifySearchHit (in nsIMsgMailNewsUrl aUrl, in string hitLine); */
  void NotifySearchHit(nsIMsgMailNewsUrlD aUrl, char*hitLine){
    nsresult __result = inner.NotifySearchHit(aUrl ? cast(nsIMsgMailNewsUrl)aUrl : null, hitLine);
    CheckException(__result);
  }

  /* void copyNextStreamMessage (in boolean copySucceeded, in nsISupports copyState); */
  void CopyNextStreamMessage(PRBool copySucceeded, nsISupportsD copyState){
    nsresult __result = inner.CopyNextStreamMessage(copySucceeded, copyState ? cast(nsISupports)copyState : null);
    CheckException(__result);
  }

  /* void prepareToReleaseObject (in nsISupports aISupports); */
  void PrepareToReleaseObject(nsISupportsD aISupports){
    nsresult __result = inner.PrepareToReleaseObject(aISupports ? cast(nsISupports)aISupports : null);
    CheckException(__result);
  }

  /* void releaseObject (); */
  void ReleaseObject(){
    nsresult __result = inner.ReleaseObject();
    CheckException(__result);
  }

  /* void closeMockChannel (in nsIImapMockChannel aChannel); */
  void CloseMockChannel(nsIImapMockChannelD aChannel){
    nsresult __result = inner.CloseMockChannel(aChannel ? cast(nsIImapMockChannel)aChannel : null);
    CheckException(__result);
  }

  /* void setUrlState (in nsIImapProtocol aProtocol, in nsIMsgMailNewsUrl aUrl, in boolean isRunning, in nsresult status); */
  void SetUrlState(nsIImapProtocolD aProtocol, nsIMsgMailNewsUrlD aUrl, PRBool isRunning, nsresult status){
    nsresult __result = inner.SetUrlState(aProtocol ? cast(nsIImapProtocol)aProtocol : null, aUrl ? cast(nsIMsgMailNewsUrl)aUrl : null, isRunning, status);
    CheckException(__result);
  }

  /* void releaseUrlCacheEntry (in nsIMsgMailNewsUrl aUrl); */
  void ReleaseUrlCacheEntry(nsIMsgMailNewsUrlD aUrl){
    nsresult __result = inner.ReleaseUrlCacheEntry(aUrl ? cast(nsIMsgMailNewsUrl)aUrl : null);
    CheckException(__result);
  }

  /* void headerFetchCompleted (in nsIImapProtocol aProtocol); */
  void HeaderFetchCompleted(nsIImapProtocolD aProtocol){
    nsresult __result = inner.HeaderFetchCompleted(aProtocol ? cast(nsIImapProtocol)aProtocol : null);
    CheckException(__result);
  }

  /* void setBiffStateAndUpdate (in long biffState); */
  void SetBiffStateAndUpdate(PRInt32 biffState){
    nsresult __result = inner.SetBiffStateAndUpdate(biffState);
    CheckException(__result);
  }

  /* void progressStatus (in nsIImapProtocol aProtocol, in unsigned long aMsgId, in wstring extraInfo); */
  void ProgressStatus(nsIImapProtocolD aProtocol, PRUint32 aMsgId, PRUnichar*extraInfo){
    nsresult __result = inner.ProgressStatus(aProtocol ? cast(nsIImapProtocol)aProtocol : null, aMsgId, extraInfo);
    CheckException(__result);
  }

  /* void percentProgress (in nsIImapProtocol aProtocol, in wstring aMessage, in long aCurrentProgress, in long aMaxProgressProgressInfo); */
  void PercentProgress(nsIImapProtocolD aProtocol, PRUnichar*aMessage, PRInt32 aCurrentProgress, PRInt32 aMaxProgressProgressInfo){
    nsresult __result = inner.PercentProgress(aProtocol ? cast(nsIImapProtocol)aProtocol : null, aMessage, aCurrentProgress, aMaxProgressProgressInfo);
    CheckException(__result);
  }

  /* void clearFolderRights (); */
  void ClearFolderRights(){
    nsresult __result = inner.ClearFolderRights();
    CheckException(__result);
  }

  /* void setCopyResponseUid (in string msgIdString, in nsIImapUrl aUrl); */
  void SetCopyResponseUid(char*msgIdString, nsIImapUrlD aUrl){
    nsresult __result = inner.SetCopyResponseUid(msgIdString, aUrl ? cast(nsIImapUrl)aUrl : null);
    CheckException(__result);
  }

  /* void setAppendMsgUid (in nsMsgKey newKey, in nsIImapUrl aUrl); */
  void SetAppendMsgUid(nsMsgKey newKey, nsIImapUrlD aUrl){
    nsresult __result = inner.SetAppendMsgUid(newKey, aUrl ? cast(nsIImapUrl)aUrl : null);
    CheckException(__result);
  }

  /* ACString getMessageId (in nsIImapUrl aUrl); */
  char[] GetMessageId(nsIImapUrlD aUrl){
    scope auto _retval = new ACString;
    nsresult __result = inner.GetMessageId(aUrl ? cast(nsIImapUrl)aUrl : null, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsIImapMailFolderSink inner;

}

