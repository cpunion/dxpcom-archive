/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImapUrl.idl
 */

module mozilla.xpcom.nsIImapUrl;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIImapMailFolderSink; /* forward declaration */

public import mozilla.xpcom.nsIImapMessageSink; /* forward declaration */

public import mozilla.xpcom.nsIImapServerSink; /* forward declaration */

public import mozilla.xpcom.nsIImapMockChannel; /* forward declaration */

public import mozilla.xpcom.nsIFileSpec; /* forward declaration */

public import mozilla.xpcom.nsIMsgFolder; /* forward declaration */

alias PRInt32 nsImapAction;

alias PRInt32 nsImapState;

alias PRUint16 imapMessageFlagsType;

alias PRInt32 nsImapContentModifiedType;


/* starting interface:    nsImapContentModifiedTypes */
const char[] NS_IMAPCONTENTMODIFIEDTYPES_IID_STR = "2e91901e-ff6c-11d3-b9fa-00108335942a";

const nsIID NS_IMAPCONTENTMODIFIEDTYPES_IID= 
  {0x2e91901e, 0xff6c, 0x11d3, 
    [ 0xb9, 0xfa, 0x00, 0x10, 0x83, 0x35, 0x94, 0x2a ]};

extern(Windows)
interface nsImapContentModifiedTypes {
  static const char[] IID_STR = NS_IMAPCONTENTMODIFIEDTYPES_IID_STR;
  static const nsIID IID = NS_IMAPCONTENTMODIFIEDTYPES_IID;

  enum { IMAP_CONTENT_NOT_MODIFIED = 0 };

  enum { IMAP_CONTENT_MODIFIED_VIEW_INLINE = 1 };

  enum { IMAP_CONTENT_MODIFIED_VIEW_AS_LINKS = 2 };

  enum { IMAP_CONTENT_FORCE_CONTENT_NOT_MODIFIED = 3 };

}


/* starting interface:    nsIImapUrl */
const char[] NS_IIMAPURL_IID_STR = "76497ba8-2a58-4d59-8347-0cf6c6a50586";

const nsIID NS_IIMAPURL_IID= 
  {0x76497ba8, 0x2a58, 0x4d59, 
    [ 0x83, 0x47, 0x0c, 0xf6, 0xc6, 0xa5, 0x05, 0x86 ]};

extern(Windows)
interface nsIImapUrl : nsISupports {
  static const char[] IID_STR = NS_IIMAPURL_IID_STR;
  static const nsIID IID = NS_IIMAPURL_IID;

  /* void Initialize (); */
  nsresult Initialize();

  /* void initializeURIforMockChannel (); */
  nsresult InitializeURIforMockChannel();

  /* attribute nsIImapMailFolderSink imapMailFolderSink; */
  nsresult GetImapMailFolderSink(nsIImapMailFolderSink  *aImapMailFolderSink);
  nsresult SetImapMailFolderSink(nsIImapMailFolderSink  aImapMailFolderSink);

  /* attribute nsIImapMessageSink imapMessageSink; */
  nsresult GetImapMessageSink(nsIImapMessageSink  *aImapMessageSink);
  nsresult SetImapMessageSink(nsIImapMessageSink  aImapMessageSink);

  /* attribute nsIImapServerSink imapServerSink; */
  nsresult GetImapServerSink(nsIImapServerSink  *aImapServerSink);
  nsresult SetImapServerSink(nsIImapServerSink  aImapServerSink);

  /* attribute nsImapAction imapAction; */
  nsresult GetImapAction(nsImapAction *aImapAction);
  nsresult SetImapAction(nsImapAction aImapAction);

  /* readonly attribute nsImapState requiredImapState; */
  nsresult GetRequiredImapState(nsImapState *aRequiredImapState);

  /* readonly attribute string imapPartToFetch; */
  nsresult GetImapPartToFetch(char * *aImapPartToFetch);

  /* readonly attribute string customAttributeToFetch; */
  nsresult GetCustomAttributeToFetch(char * *aCustomAttributeToFetch);

  /* attribute string customAttributeResult; */
  nsresult GetCustomAttributeResult(char * *aCustomAttributeResult);
  nsresult SetCustomAttributeResult(char * aCustomAttributeResult);

  /* readonly attribute string command; */
  nsresult GetCommand(char * *aCommand);

  /* attribute string customCommandResult; */
  nsresult GetCustomCommandResult(char * *aCustomCommandResult);
  nsresult SetCustomCommandResult(char * aCustomCommandResult);

  /* readonly attribute string customAddFlags; */
  nsresult GetCustomAddFlags(char * *aCustomAddFlags);

  /* readonly attribute string customSubtractFlags; */
  nsresult GetCustomSubtractFlags(char * *aCustomSubtractFlags);

  /* void allocateCanonicalPath (in string aServerPath, in char aOnlineDelimiter, out string aAllocatedPath); */
  nsresult AllocateCanonicalPath(char *aServerPath, char aOnlineDelimiter, char **aAllocatedPath);

  /* void allocateServerPath (in string aCanonicalPath, in char aOnlineDelimiter, out string aAllocatedPath); */
  nsresult AllocateServerPath(char *aCanonicalPath, char aOnlineDelimiter, char **aAllocatedPath);

  /* string createServerSourceFolderPathString (); */
  nsresult CreateServerSourceFolderPathString(char **_retval);

  /* string createCanonicalSourceFolderPathString (); */
  nsresult CreateCanonicalSourceFolderPathString(char **_retval);

  /* string createServerDestinationFolderPathString (); */
  nsresult CreateServerDestinationFolderPathString(char **_retval);

  /* string addOnlineDirectoryIfNecessary (in string onlineMailboxName); */
  nsresult AddOnlineDirectoryIfNecessary(char *onlineMailboxName, char **_retval);

  /* void createSearchCriteriaString (out string aResult); */
  nsresult CreateSearchCriteriaString(char **aResult);

  /* void createListOfMessageIdsString (out string aResult); */
  nsresult CreateListOfMessageIdsString(char **aResult);

  /* boolean messageIdsAreUids (); */
  nsresult MessageIdsAreUids(PRBool *_retval);

  /* readonly attribute imapMessageFlagsType msgFlags; */
  nsresult GetMsgFlags(imapMessageFlagsType *aMsgFlags);

  /* readonly attribute long numBytesToFetch; */
  nsresult GetNumBytesToFetch(PRInt32 *aNumBytesToFetch);

  /* attribute char onlineSubDirSeparator; */
  nsresult GetOnlineSubDirSeparator(char *aOnlineSubDirSeparator);
  nsresult SetOnlineSubDirSeparator(char aOnlineSubDirSeparator);

  /* attribute boolean allowContentChange; */
  nsresult GetAllowContentChange(PRBool *aAllowContentChange);
  nsresult SetAllowContentChange(PRBool aAllowContentChange);

  /* attribute boolean mimePartSelectorDetected; */
  nsresult GetMimePartSelectorDetected(PRBool *aMimePartSelectorDetected);
  nsresult SetMimePartSelectorDetected(PRBool aMimePartSelectorDetected);

  /* attribute nsImapContentModifiedType contentModified; */
  nsresult GetContentModified(nsImapContentModifiedType *aContentModified);
  nsresult SetContentModified(nsImapContentModifiedType aContentModified);

  /* attribute boolean fetchPartsOnDemand; */
  nsresult GetFetchPartsOnDemand(PRBool *aFetchPartsOnDemand);
  nsresult SetFetchPartsOnDemand(PRBool aFetchPartsOnDemand);

  /* attribute boolean msgLoadingFromCache; */
  nsresult GetMsgLoadingFromCache(PRBool *aMsgLoadingFromCache);
  nsresult SetMsgLoadingFromCache(PRBool aMsgLoadingFromCache);

  /* attribute boolean externalLinkUrl; */
  nsresult GetExternalLinkUrl(PRBool *aExternalLinkUrl);
  nsresult SetExternalLinkUrl(PRBool aExternalLinkUrl);

  /* attribute boolean validUrl; */
  nsresult GetValidUrl(PRBool *aValidUrl);
  nsresult SetValidUrl(PRBool aValidUrl);

  /* attribute nsISupports copyState; */
  nsresult GetCopyState(nsISupports  *aCopyState);
  nsresult SetCopyState(nsISupports  aCopyState);

  /* attribute nsIFileSpec msgFileSpec; */
  nsresult GetMsgFileSpec(nsIFileSpec  *aMsgFileSpec);
  nsresult SetMsgFileSpec(nsIFileSpec  aMsgFileSpec);

  /* attribute nsIImapMockChannel mockChannel; */
  nsresult GetMockChannel(nsIImapMockChannel  *aMockChannel);
  nsresult SetMockChannel(nsIImapMockChannel  aMockChannel);

  /* attribute boolean shouldStoreMsgOffline; */
  nsresult GetShouldStoreMsgOffline(PRBool *aShouldStoreMsgOffline);
  nsresult SetShouldStoreMsgOffline(PRBool aShouldStoreMsgOffline);

  /* attribute boolean rerunningUrl; */
  nsresult GetRerunningUrl(PRBool *aRerunningUrl);
  nsresult SetRerunningUrl(PRBool aRerunningUrl);

  /* void addChannelToLoadGroup (); */
  nsresult AddChannelToLoadGroup();

  /* void removeChannel (in nsresult aStatus); */
  nsresult RemoveChannel(nsresult aStatus);

  enum { nsImapAuthenticatedState = 0 };

  enum { nsImapSelectedState = 1 };

  enum { nsImapActionSendText = 0 };

  enum { nsImapTest = 1 };

  enum { nsImapCreateFolder = 5 };

  enum { nsImapDeleteFolder = 6 };

  enum { nsImapRenameFolder = 7 };

  enum { nsImapMoveFolderHierarchy = 8 };

  enum { nsImapLsubFolders = 9 };

  enum { nsImapGetMailAccountUrl = 10 };

  enum { nsImapDiscoverChildrenUrl = 11 };

  enum { nsImapDiscoverAllBoxesUrl = 13 };

  enum { nsImapDiscoverAllAndSubscribedBoxesUrl = 14 };

  enum { nsImapAppendMsgFromFile = 15 };

  enum { nsImapSubscribe = 16 };

  enum { nsImapUnsubscribe = 17 };

  enum { nsImapRefreshACL = 18 };

  enum { nsImapRefreshAllACLs = 19 };

  enum { nsImapListFolder = 20 };

  enum { nsImapUpgradeToSubscription = 21 };

  enum { nsImapFolderStatus = 22 };

  enum { nsImapRefreshFolderUrls = 23 };

  enum { nsImapEnsureExistsFolder = 24 };

  enum { nsImapOfflineToOnlineCopy = 25 };

  enum { nsImapOfflineToOnlineMove = 26 };

  enum { nsImapSelectFolder = 268435458 };

  enum { nsImapLiteSelectFolder = 268435459 };

  enum { nsImapExpungeFolder = 268435460 };

  enum { nsImapMsgFetch = 268435480 };

  enum { nsImapMsgHeader = 268435481 };

  enum { nsImapSearch = 268435482 };

  enum { nsImapDeleteMsg = 268435483 };

  enum { nsImapDeleteAllMsgs = 268435484 };

  enum { nsImapAddMsgFlags = 268435485 };

  enum { nsImapSubtractMsgFlags = 268435486 };

  enum { nsImapSetMsgFlags = 268435487 };

  enum { nsImapOnlineCopy = 268435488 };

  enum { nsImapOnlineMove = 268435489 };

  enum { nsImapOnlineToOfflineCopy = 268435490 };

  enum { nsImapOnlineToOfflineMove = 268435491 };

  enum { nsImapMsgPreview = 268435492 };

  enum { nsImapBiff = 268435494 };

  enum { nsImapSelectNoopFolder = 268435495 };

  enum { nsImapAppendDraftFromFile = 268435496 };

  enum { nsImapUidExpunge = 268435497 };

  enum { nsImapSaveMessageToDisk = 268435504 };

  enum { nsImapOpenMimePart = 268435505 };

  enum { nsImapMsgDownloadForOffline = 268435506 };

  enum { nsImapDeleteFolderAndMsgs = 268435507 };

  enum { nsImapUserDefinedMsgCommand = 268435508 };

  enum { nsImapUserDefinedFetchAttribute = 268435509 };

  enum { nsImapMsgFetchPeek = 268435510 };

  enum { nsImapMsgStoreCustomKeywords = 268435511 };

}

