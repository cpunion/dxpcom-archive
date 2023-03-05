/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImapUrl.idl
 */

module mozilla.dxpcom.nsIImapUrlD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIImapUrl;


public import mozilla.dxpcom.nsIImapUrlD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIImapMailFolderSink;

public import mozilla.dxpcom.nsIImapMailFolderSinkD;

public import mozilla.xpcom.nsIImapMessageSink;

public import mozilla.dxpcom.nsIImapMessageSinkD;

public import mozilla.xpcom.nsIImapServerSink;

public import mozilla.dxpcom.nsIImapServerSinkD;

public import mozilla.xpcom.nsIImapMockChannel;

public import mozilla.dxpcom.nsIImapMockChannelD;

public import mozilla.xpcom.nsIFileSpec;

public import mozilla.dxpcom.nsIFileSpecD;

public import mozilla.xpcom.nsIMsgFolder;

public import mozilla.dxpcom.nsIMsgFolderD;


/* starting wrapper class:    nsImapContentModifiedTypes */
class nsImapContentModifiedTypesD {

  static const nsIID IID = NS_IMAPCONTENTMODIFIEDTYPES_IID;


  alias nsImapContentModifiedTypes InnerType;

  this(nsImapContentModifiedTypes intr){
    this.inner = intr;
  }

  nsImapContentModifiedTypes opCast() {
    return inner;
  }

  void opAssign(nsImapContentModifiedTypes value) {
    inner = value;
  }

  enum { IMAP_CONTENT_NOT_MODIFIED = 0 }

  enum { IMAP_CONTENT_MODIFIED_VIEW_INLINE = 1 }

  enum { IMAP_CONTENT_MODIFIED_VIEW_AS_LINKS = 2 }

  enum { IMAP_CONTENT_FORCE_CONTENT_NOT_MODIFIED = 3 }

private:
  nsImapContentModifiedTypes inner;

}


/* starting wrapper class:    nsIImapUrl */
class nsIImapUrlD : public nsISupportsD {

  static const nsIID IID = NS_IIMAPURL_IID;


  alias nsIImapUrl InnerType;

  this(nsIImapUrl intr){
    super(intr);
    this.inner = intr;
  }

  nsIImapUrl opCast() {
    return inner;
  }

  void opAssign(nsIImapUrl value) {
    inner = value;
  }

  /* void Initialize (); */
  void Initialize(){
    nsresult __result = inner.Initialize();
    CheckException(__result);
  }

  /* void initializeURIforMockChannel (); */
  void InitializeURIforMockChannel(){
    nsresult __result = inner.InitializeURIforMockChannel();
    CheckException(__result);
  }

  /* attribute nsIImapMailFolderSink imapMailFolderSink; */
  nsIImapMailFolderSinkD  ImapMailFolderSink(){
    nsIImapMailFolderSink value;
    nsresult __result = inner.GetImapMailFolderSink(&value);
    CheckException(__result);
    return new nsIImapMailFolderSinkD(value);
  }
  void ImapMailFolderSink(nsIImapMailFolderSinkD  aImapMailFolderSink){
    nsIImapMailFolderSink value;
    nsresult __result = inner.SetImapMailFolderSink(value);
    CheckException(__result);
  }

  /* attribute nsIImapMessageSink imapMessageSink; */
  nsIImapMessageSinkD  ImapMessageSink(){
    nsIImapMessageSink value;
    nsresult __result = inner.GetImapMessageSink(&value);
    CheckException(__result);
    return new nsIImapMessageSinkD(value);
  }
  void ImapMessageSink(nsIImapMessageSinkD  aImapMessageSink){
    nsIImapMessageSink value;
    nsresult __result = inner.SetImapMessageSink(value);
    CheckException(__result);
  }

  /* attribute nsIImapServerSink imapServerSink; */
  nsIImapServerSinkD  ImapServerSink(){
    nsIImapServerSink value;
    nsresult __result = inner.GetImapServerSink(&value);
    CheckException(__result);
    return new nsIImapServerSinkD(value);
  }
  void ImapServerSink(nsIImapServerSinkD  aImapServerSink){
    nsIImapServerSink value;
    nsresult __result = inner.SetImapServerSink(value);
    CheckException(__result);
  }

  /* attribute nsImapAction imapAction; */
  nsImapAction ImapAction(){
    nsImapAction value;
    nsresult __result = inner.GetImapAction(&value);
    CheckException(__result);
    return value;
  }
  void ImapAction(nsImapAction aImapAction){
    nsImapAction value;
    nsresult __result = inner.SetImapAction(value);
    CheckException(__result);
  }

  /* readonly attribute nsImapState requiredImapState; */
  nsImapState RequiredImapState(){
    nsImapState value;
    nsresult __result = inner.GetRequiredImapState(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute string imapPartToFetch; */
  char* ImapPartToFetch(){
    char* value;
    nsresult __result = inner.GetImapPartToFetch(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute string customAttributeToFetch; */
  char* CustomAttributeToFetch(){
    char* value;
    nsresult __result = inner.GetCustomAttributeToFetch(&value);
    CheckException(__result);
    return value;
  }

  /* attribute string customAttributeResult; */
  char* CustomAttributeResult(){
    char* value;
    nsresult __result = inner.GetCustomAttributeResult(&value);
    CheckException(__result);
    return value;
  }
  void CustomAttributeResult(char* aCustomAttributeResult){
    nsresult __result = inner.SetCustomAttributeResult(aCustomAttributeResult);
    CheckException(__result);
  }

  /* readonly attribute string command; */
  char* Command(){
    char* value;
    nsresult __result = inner.GetCommand(&value);
    CheckException(__result);
    return value;
  }

  /* attribute string customCommandResult; */
  char* CustomCommandResult(){
    char* value;
    nsresult __result = inner.GetCustomCommandResult(&value);
    CheckException(__result);
    return value;
  }
  void CustomCommandResult(char* aCustomCommandResult){
    nsresult __result = inner.SetCustomCommandResult(aCustomCommandResult);
    CheckException(__result);
  }

  /* readonly attribute string customAddFlags; */
  char* CustomAddFlags(){
    char* value;
    nsresult __result = inner.GetCustomAddFlags(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute string customSubtractFlags; */
  char* CustomSubtractFlags(){
    char* value;
    nsresult __result = inner.GetCustomSubtractFlags(&value);
    CheckException(__result);
    return value;
  }

  /* void allocateCanonicalPath (in string aServerPath, in char aOnlineDelimiter, out string aAllocatedPath); */
  void AllocateCanonicalPath(char*aServerPath, char aOnlineDelimiter, out char*aAllocatedPath){
    nsresult __result = inner.AllocateCanonicalPath(aServerPath, aOnlineDelimiter, &aAllocatedPath);
    CheckException(__result);
  }

  /* void allocateServerPath (in string aCanonicalPath, in char aOnlineDelimiter, out string aAllocatedPath); */
  void AllocateServerPath(char*aCanonicalPath, char aOnlineDelimiter, out char*aAllocatedPath){
    nsresult __result = inner.AllocateServerPath(aCanonicalPath, aOnlineDelimiter, &aAllocatedPath);
    CheckException(__result);
  }

  /* string createServerSourceFolderPathString (); */
  char* CreateServerSourceFolderPathString(){
    char* _retval;
    nsresult __result = inner.CreateServerSourceFolderPathString(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* string createCanonicalSourceFolderPathString (); */
  char* CreateCanonicalSourceFolderPathString(){
    char* _retval;
    nsresult __result = inner.CreateCanonicalSourceFolderPathString(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* string createServerDestinationFolderPathString (); */
  char* CreateServerDestinationFolderPathString(){
    char* _retval;
    nsresult __result = inner.CreateServerDestinationFolderPathString(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* string addOnlineDirectoryIfNecessary (in string onlineMailboxName); */
  char* AddOnlineDirectoryIfNecessary(char*onlineMailboxName){
    char* _retval;
    nsresult __result = inner.AddOnlineDirectoryIfNecessary(onlineMailboxName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void createSearchCriteriaString (out string aResult); */
  void CreateSearchCriteriaString(out char*aResult){
    nsresult __result = inner.CreateSearchCriteriaString(&aResult);
    CheckException(__result);
  }

  /* void createListOfMessageIdsString (out string aResult); */
  void CreateListOfMessageIdsString(out char*aResult){
    nsresult __result = inner.CreateListOfMessageIdsString(&aResult);
    CheckException(__result);
  }

  /* boolean messageIdsAreUids (); */
  PRBool MessageIdsAreUids(){
    PRBool _retval;
    nsresult __result = inner.MessageIdsAreUids(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* readonly attribute imapMessageFlagsType msgFlags; */
  imapMessageFlagsType MsgFlags(){
    imapMessageFlagsType value;
    nsresult __result = inner.GetMsgFlags(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long numBytesToFetch; */
  PRInt32 NumBytesToFetch(){
    PRInt32 value;
    nsresult __result = inner.GetNumBytesToFetch(&value);
    CheckException(__result);
    return value;
  }

  /* attribute char onlineSubDirSeparator; */
  char OnlineSubDirSeparator(){
    char value;
    nsresult __result = inner.GetOnlineSubDirSeparator(&value);
    CheckException(__result);
    return value;
  }
  void OnlineSubDirSeparator(char aOnlineSubDirSeparator){
    nsresult __result = inner.SetOnlineSubDirSeparator(aOnlineSubDirSeparator);
    CheckException(__result);
  }

  /* attribute boolean allowContentChange; */
  PRBool AllowContentChange(){
    PRBool value;
    nsresult __result = inner.GetAllowContentChange(&value);
    CheckException(__result);
    return value;
  }
  void AllowContentChange(PRBool aAllowContentChange){
    nsresult __result = inner.SetAllowContentChange(aAllowContentChange);
    CheckException(__result);
  }

  /* attribute boolean mimePartSelectorDetected; */
  PRBool MimePartSelectorDetected(){
    PRBool value;
    nsresult __result = inner.GetMimePartSelectorDetected(&value);
    CheckException(__result);
    return value;
  }
  void MimePartSelectorDetected(PRBool aMimePartSelectorDetected){
    nsresult __result = inner.SetMimePartSelectorDetected(aMimePartSelectorDetected);
    CheckException(__result);
  }

  /* attribute nsImapContentModifiedType contentModified; */
  nsImapContentModifiedType ContentModified(){
    nsImapContentModifiedType value;
    nsresult __result = inner.GetContentModified(&value);
    CheckException(__result);
    return value;
  }
  void ContentModified(nsImapContentModifiedType aContentModified){
    nsImapContentModifiedType value;
    nsresult __result = inner.SetContentModified(value);
    CheckException(__result);
  }

  /* attribute boolean fetchPartsOnDemand; */
  PRBool FetchPartsOnDemand(){
    PRBool value;
    nsresult __result = inner.GetFetchPartsOnDemand(&value);
    CheckException(__result);
    return value;
  }
  void FetchPartsOnDemand(PRBool aFetchPartsOnDemand){
    nsresult __result = inner.SetFetchPartsOnDemand(aFetchPartsOnDemand);
    CheckException(__result);
  }

  /* attribute boolean msgLoadingFromCache; */
  PRBool MsgLoadingFromCache(){
    PRBool value;
    nsresult __result = inner.GetMsgLoadingFromCache(&value);
    CheckException(__result);
    return value;
  }
  void MsgLoadingFromCache(PRBool aMsgLoadingFromCache){
    nsresult __result = inner.SetMsgLoadingFromCache(aMsgLoadingFromCache);
    CheckException(__result);
  }

  /* attribute boolean externalLinkUrl; */
  PRBool ExternalLinkUrl(){
    PRBool value;
    nsresult __result = inner.GetExternalLinkUrl(&value);
    CheckException(__result);
    return value;
  }
  void ExternalLinkUrl(PRBool aExternalLinkUrl){
    nsresult __result = inner.SetExternalLinkUrl(aExternalLinkUrl);
    CheckException(__result);
  }

  /* attribute boolean validUrl; */
  PRBool ValidUrl(){
    PRBool value;
    nsresult __result = inner.GetValidUrl(&value);
    CheckException(__result);
    return value;
  }
  void ValidUrl(PRBool aValidUrl){
    nsresult __result = inner.SetValidUrl(aValidUrl);
    CheckException(__result);
  }

  /* attribute nsISupports copyState; */
  nsISupportsD  CopyState(){
    nsISupports value;
    nsresult __result = inner.GetCopyState(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }
  void CopyState(nsISupportsD  aCopyState){
    nsISupports value;
    nsresult __result = inner.SetCopyState(value);
    CheckException(__result);
  }

  /* attribute nsIFileSpec msgFileSpec; */
  nsIFileSpecD  MsgFileSpec(){
    nsIFileSpec value;
    nsresult __result = inner.GetMsgFileSpec(&value);
    CheckException(__result);
    return new nsIFileSpecD(value);
  }
  void MsgFileSpec(nsIFileSpecD  aMsgFileSpec){
    nsIFileSpec value;
    nsresult __result = inner.SetMsgFileSpec(value);
    CheckException(__result);
  }

  /* attribute nsIImapMockChannel mockChannel; */
  nsIImapMockChannelD  MockChannel(){
    nsIImapMockChannel value;
    nsresult __result = inner.GetMockChannel(&value);
    CheckException(__result);
    return new nsIImapMockChannelD(value);
  }
  void MockChannel(nsIImapMockChannelD  aMockChannel){
    nsIImapMockChannel value;
    nsresult __result = inner.SetMockChannel(value);
    CheckException(__result);
  }

  /* attribute boolean shouldStoreMsgOffline; */
  PRBool ShouldStoreMsgOffline(){
    PRBool value;
    nsresult __result = inner.GetShouldStoreMsgOffline(&value);
    CheckException(__result);
    return value;
  }
  void ShouldStoreMsgOffline(PRBool aShouldStoreMsgOffline){
    nsresult __result = inner.SetShouldStoreMsgOffline(aShouldStoreMsgOffline);
    CheckException(__result);
  }

  /* attribute boolean rerunningUrl; */
  PRBool RerunningUrl(){
    PRBool value;
    nsresult __result = inner.GetRerunningUrl(&value);
    CheckException(__result);
    return value;
  }
  void RerunningUrl(PRBool aRerunningUrl){
    nsresult __result = inner.SetRerunningUrl(aRerunningUrl);
    CheckException(__result);
  }

  /* void addChannelToLoadGroup (); */
  void AddChannelToLoadGroup(){
    nsresult __result = inner.AddChannelToLoadGroup();
    CheckException(__result);
  }

  /* void removeChannel (in nsresult aStatus); */
  void RemoveChannel(nsresult aStatus){
    nsresult __result = inner.RemoveChannel(aStatus);
    CheckException(__result);
  }

  enum { nsImapAuthenticatedState = 0 }

  enum { nsImapSelectedState = 1 }

  enum { nsImapActionSendText = 0 }

  enum { nsImapTest = 1 }

  enum { nsImapCreateFolder = 5 }

  enum { nsImapDeleteFolder = 6 }

  enum { nsImapRenameFolder = 7 }

  enum { nsImapMoveFolderHierarchy = 8 }

  enum { nsImapLsubFolders = 9 }

  enum { nsImapGetMailAccountUrl = 10 }

  enum { nsImapDiscoverChildrenUrl = 11 }

  enum { nsImapDiscoverAllBoxesUrl = 13 }

  enum { nsImapDiscoverAllAndSubscribedBoxesUrl = 14 }

  enum { nsImapAppendMsgFromFile = 15 }

  enum { nsImapSubscribe = 16 }

  enum { nsImapUnsubscribe = 17 }

  enum { nsImapRefreshACL = 18 }

  enum { nsImapRefreshAllACLs = 19 }

  enum { nsImapListFolder = 20 }

  enum { nsImapUpgradeToSubscription = 21 }

  enum { nsImapFolderStatus = 22 }

  enum { nsImapRefreshFolderUrls = 23 }

  enum { nsImapEnsureExistsFolder = 24 }

  enum { nsImapOfflineToOnlineCopy = 25 }

  enum { nsImapOfflineToOnlineMove = 26 }

  enum { nsImapSelectFolder = 268435458 }

  enum { nsImapLiteSelectFolder = 268435459 }

  enum { nsImapExpungeFolder = 268435460 }

  enum { nsImapMsgFetch = 268435480 }

  enum { nsImapMsgHeader = 268435481 }

  enum { nsImapSearch = 268435482 }

  enum { nsImapDeleteMsg = 268435483 }

  enum { nsImapDeleteAllMsgs = 268435484 }

  enum { nsImapAddMsgFlags = 268435485 }

  enum { nsImapSubtractMsgFlags = 268435486 }

  enum { nsImapSetMsgFlags = 268435487 }

  enum { nsImapOnlineCopy = 268435488 }

  enum { nsImapOnlineMove = 268435489 }

  enum { nsImapOnlineToOfflineCopy = 268435490 }

  enum { nsImapOnlineToOfflineMove = 268435491 }

  enum { nsImapMsgPreview = 268435492 }

  enum { nsImapBiff = 268435494 }

  enum { nsImapSelectNoopFolder = 268435495 }

  enum { nsImapAppendDraftFromFile = 268435496 }

  enum { nsImapUidExpunge = 268435497 }

  enum { nsImapSaveMessageToDisk = 268435504 }

  enum { nsImapOpenMimePart = 268435505 }

  enum { nsImapMsgDownloadForOffline = 268435506 }

  enum { nsImapDeleteFolderAndMsgs = 268435507 }

  enum { nsImapUserDefinedMsgCommand = 268435508 }

  enum { nsImapUserDefinedFetchAttribute = 268435509 }

  enum { nsImapMsgFetchPeek = 268435510 }

  enum { nsImapMsgStoreCustomKeywords = 268435511 }

private:
  nsIImapUrl inner;

}

