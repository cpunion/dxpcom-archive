/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImapService.idl
 */

module mozilla.xpcom.nsIImapService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIImapUrl;

public import mozilla.xpcom.nsIImapProtocol; /* forward declaration */

public import mozilla.xpcom.nsIImapMessageSink; /* forward declaration */

public import mozilla.xpcom.nsIUrlListener; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIEventQueue; /* forward declaration */

public import mozilla.xpcom.nsIMsgFolder; /* forward declaration */

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */

public import mozilla.xpcom.nsIImapIncomingServer; /* forward declaration */

public import mozilla.xpcom.nsICacheSession; /* forward declaration */


/* starting interface:    nsIImapService */
const char[] NS_IIMAPSERVICE_IID_STR = "4032dc12-8684-4458-9b41-647034d8c7d2";

const nsIID NS_IIMAPSERVICE_IID= 
  {0x4032dc12, 0x8684, 0x4458, 
    [ 0x9b, 0x41, 0x64, 0x70, 0x34, 0xd8, 0xc7, 0xd2 ]};

extern(Windows)
interface nsIImapService : nsISupports {
  static const char[] IID_STR = NS_IIMAPSERVICE_IID_STR;
  static const nsIID IID = NS_IIMAPSERVICE_IID;

  /* void selectFolder (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener, in nsIMsgWindow aMsgWindow, out nsIURI aURL); */
  nsresult SelectFolder(nsIEventQueue aClientEventQueue, nsIMsgFolder aImapMailFolder, nsIUrlListener aUrlListener, nsIMsgWindow aMsgWindow, nsIURI *aURL);

  /* void liteSelectFolder (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener, out nsIURI aURL); */
  nsresult LiteSelectFolder(nsIEventQueue aClientEventQueue, nsIMsgFolder aImapMailFolder, nsIUrlListener aUrlListener, nsIURI *aURL);

  /* void fetchMessage (in nsIImapUrl aUrl, in nsImapState aImapAction, in nsIMsgFolder aImapMailFolder, in nsIImapMessageSink aImapMessageSink, in nsIMsgWindow aMsgWindow, in nsISupports aConsumer, in string aMessageIdentifierList, in boolean convertDataToText, in string additionalHeader, out nsIURI aOutURL); */
  nsresult FetchMessage(nsIImapUrl aUrl, nsImapState aImapAction, nsIMsgFolder aImapMailFolder, nsIImapMessageSink aImapMessageSink, nsIMsgWindow aMsgWindow, nsISupports aConsumer, char *aMessageIdentifierList, PRBool convertDataToText, char *additionalHeader, nsIURI *aOutURL);

  /* void noop (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener, out nsIURI aURL); */
  nsresult Noop(nsIEventQueue aClientEventQueue, nsIMsgFolder aImapMailFolder, nsIUrlListener aUrlListener, nsIURI *aURL);

  /* void getHeaders (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener, out nsIURI aURL, in string aMessageIdentifierList, in boolean aMessageIdsAreUID); */
  nsresult GetHeaders(nsIEventQueue aClientEventQueue, nsIMsgFolder aImapMailFolder, nsIUrlListener aUrlListener, nsIURI *aURL, char *aMessageIdentifierList, PRBool aMessageIdsAreUID);

  /* nsIURI getBodyStart (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener, in string aMessageIdentifierList, in long numBytes); */
  nsresult GetBodyStart(nsIEventQueue aClientEventQueue, nsIMsgFolder aImapMailFolder, nsIUrlListener aUrlListener, char *aMessageIdentifierList, PRInt32 numBytes, nsIURI *_retval);

  /* void expunge (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener, out nsIURI aURL); */
  nsresult Expunge(nsIEventQueue aClientEventQueue, nsIMsgFolder aImapMailFolder, nsIUrlListener aUrlListener, nsIURI *aURL);

  /* nsIURI updateFolderStatus (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener); */
  nsresult UpdateFolderStatus(nsIEventQueue aClientEventQueue, nsIMsgFolder aImapMailFolder, nsIUrlListener aUrlListener, nsIURI *_retval);

  /* void biff (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener, out nsIURI aURL, in unsigned long aUidHighWater); */
  nsresult Biff(nsIEventQueue aClientEventQueue, nsIMsgFolder aImapMailFolder, nsIUrlListener aUrlListener, nsIURI *aURL, PRUint32 aUidHighWater);

  /* void deleteMessages (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener, out nsIURI aURL, in string aMessageIdentifierList, in boolean aMessageIdsAreUID); */
  nsresult DeleteMessages(nsIEventQueue aClientEventQueue, nsIMsgFolder aImapMailFolder, nsIUrlListener aUrlListener, nsIURI *aURL, char *aMessageIdentifierList, PRBool aMessageIdsAreUID);

  /* void deleteAllMessages (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener, out nsIURI aURL); */
  nsresult DeleteAllMessages(nsIEventQueue aClientEventQueue, nsIMsgFolder aImapMailFolder, nsIUrlListener aUrlListener, nsIURI *aURL);

  /* void addMessageFlags (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener, out nsIURI aURL, in string aMessageIdentifierList, in imapMessageFlagsType aFlags, in boolean aMessageIdsAreUID); */
  nsresult AddMessageFlags(nsIEventQueue aClientEventQueue, nsIMsgFolder aImapMailFolder, nsIUrlListener aUrlListener, nsIURI *aURL, char *aMessageIdentifierList, imapMessageFlagsType aFlags, PRBool aMessageIdsAreUID);

  /* void subtractMessageFlags (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener, out nsIURI aURL, in string aMessageIdentifierList, in imapMessageFlagsType aFlags, in boolean aMessageIdsAreUID); */
  nsresult SubtractMessageFlags(nsIEventQueue aClientEventQueue, nsIMsgFolder aImapMailFolder, nsIUrlListener aUrlListener, nsIURI *aURL, char *aMessageIdentifierList, imapMessageFlagsType aFlags, PRBool aMessageIdsAreUID);

  /* void setMessageFlags (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener, out nsIURI aURL, in string aMessageIdentifierList, in imapMessageFlagsType aFlags, in boolean aMessageIdsAreUID); */
  nsresult SetMessageFlags(nsIEventQueue aClientEventQueue, nsIMsgFolder aImapMailFolder, nsIUrlListener aUrlListener, nsIURI *aURL, char *aMessageIdentifierList, imapMessageFlagsType aFlags, PRBool aMessageIdsAreUID);

  /* void discoverAllFolders (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener, in nsIMsgWindow aMsgWindow, out nsIURI aURL); */
  nsresult DiscoverAllFolders(nsIEventQueue aClientEventQueue, nsIMsgFolder aImapMailFolder, nsIUrlListener aUrlListener, nsIMsgWindow aMsgWindow, nsIURI *aURL);

  /* void discoverAllAndSubscribedFolders (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener, out nsIURI aURL); */
  nsresult DiscoverAllAndSubscribedFolders(nsIEventQueue aClientEventQueue, nsIMsgFolder aImapMailFolder, nsIUrlListener aUrlListener, nsIURI *aURL);

  /* void discoverChildren (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener, in string folderPath, out nsIURI aURL); */
  nsresult DiscoverChildren(nsIEventQueue aClientEventQueue, nsIMsgFolder aImapMailFolder, nsIUrlListener aUrlListener, char *folderPath, nsIURI *aURL);

  /* void onlineMessageCopy (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aSrcFolder, in string aMessageIds, in nsIMsgFolder aDstFolder, in boolean aIdsAreUids, in boolean aIsMove, in nsIUrlListener aUrlListener, out nsIURI aURL, in nsISupports aCopyState, in nsIMsgWindow aWindow); */
  nsresult OnlineMessageCopy(nsIEventQueue aClientEventQueue, nsIMsgFolder aSrcFolder, char *aMessageIds, nsIMsgFolder aDstFolder, PRBool aIdsAreUids, PRBool aIsMove, nsIUrlListener aUrlListener, nsIURI *aURL, nsISupports aCopyState, nsIMsgWindow aWindow);

  /* void appendMessageFromFile (in nsIEventQueue aClientEventQueue, in nsIFileSpec aFileSpec, in nsIMsgFolder aDstFolder, in string aMessageId, in boolean idsAreUids, in boolean aInSelectedState, in nsIUrlListener aUrlListener, out nsIURI aURL, in nsISupports aCopyState, in nsIMsgWindow aMsgWindow); */
  nsresult AppendMessageFromFile(nsIEventQueue aClientEventQueue, nsIFileSpec aFileSpec, nsIMsgFolder aDstFolder, char *aMessageId, PRBool idsAreUids, PRBool aInSelectedState, nsIUrlListener aUrlListener, nsIURI *aURL, nsISupports aCopyState, nsIMsgWindow aMsgWindow);

  /* void downloadMessagesForOffline (in string aMessageIds, in nsIMsgFolder aSrcFolder, in nsIUrlListener aListener, in nsIMsgWindow aMsgWindow); */
  nsresult DownloadMessagesForOffline(char *aMessageIds, nsIMsgFolder aSrcFolder, nsIUrlListener aListener, nsIMsgWindow aMsgWindow);

  /* nsIURI moveFolder (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aSrcFolder, in nsIMsgFolder aDstFolder, in nsIUrlListener aUrlListener, in nsIMsgWindow msgWindow); */
  nsresult MoveFolder(nsIEventQueue aClientEventQueue, nsIMsgFolder aSrcFolder, nsIMsgFolder aDstFolder, nsIUrlListener aUrlListener, nsIMsgWindow msgWindow, nsIURI *_retval);

  /* nsIURI renameLeaf (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aSrcFolder, in wstring aLeafName, in nsIUrlListener aUrlListener, in nsIMsgWindow msgWindow); */
  nsresult RenameLeaf(nsIEventQueue aClientEventQueue, nsIMsgFolder aSrcFolder, PRUnichar *aLeafName, nsIUrlListener aUrlListener, nsIMsgWindow msgWindow, nsIURI *_retval);

  /* nsIURI deleteFolder (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aFolder, in nsIUrlListener aUrlListener); */
  nsresult DeleteFolder(nsIEventQueue aClientEventQueue, nsIMsgFolder aFolder, nsIUrlListener aUrlListener, nsIURI *_retval);

  /* nsIURI createFolder (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aParentFolder, in wstring aLeafName, in nsIUrlListener aUrlListener); */
  nsresult CreateFolder(nsIEventQueue aClientEventQueue, nsIMsgFolder aParentFolder, PRUnichar *aLeafName, nsIUrlListener aUrlListener, nsIURI *_retval);

  /* nsIURI listFolder (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aMailFolder, in nsIUrlListener aUrlListener); */
  nsresult ListFolder(nsIEventQueue aClientEventQueue, nsIMsgFolder aMailFolder, nsIUrlListener aUrlListener, nsIURI *_retval);

  /* nsIURI subscribeFolder (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aMailFolder, in wstring mailboxName, in nsIUrlListener aUrlListener); */
  nsresult SubscribeFolder(nsIEventQueue aClientEventQueue, nsIMsgFolder aMailFolder, PRUnichar *mailboxName, nsIUrlListener aUrlListener, nsIURI *_retval);

  /* nsIURI unsubscribeFolder (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aMailFolder, in wstring mailboxName, in nsIUrlListener aUrlListener); */
  nsresult UnsubscribeFolder(nsIEventQueue aClientEventQueue, nsIMsgFolder aMailFolder, PRUnichar *mailboxName, nsIUrlListener aUrlListener, nsIURI *_retval);

  /* nsIURI ensureFolderExists (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aParentFolder, in wstring aLeafName, in nsIUrlListener aUrlListener); */
  nsresult EnsureFolderExists(nsIEventQueue aClientEventQueue, nsIMsgFolder aParentFolder, PRUnichar *aLeafName, nsIUrlListener aUrlListener, nsIURI *_retval);

  /* nsIURI getFolderAdminUrl (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aMailFolder, in nsIMsgWindow aMsgWindow, in nsIUrlListener aUrlListener); */
  nsresult GetFolderAdminUrl(nsIEventQueue aClientEventQueue, nsIMsgFolder aMailFolder, nsIMsgWindow aMsgWindow, nsIUrlListener aUrlListener, nsIURI *_retval);

  /* nsIURI issueCommandOnMsgs (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aMailFolder, in nsIMsgWindow aMsgWindow, in string aCommand, in string aMessageIdentifierList); */
  nsresult IssueCommandOnMsgs(nsIEventQueue aClientEventQueue, nsIMsgFolder aMailFolder, nsIMsgWindow aMsgWindow, char *aCommand, char *aMessageIdentifierList, nsIURI *_retval);

  /* nsIURI fetchCustomMsgAttribute (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aMailFolder, in nsIMsgWindow aMsgWindow, in string aAttribute, in string aMessageIdentifierList); */
  nsresult FetchCustomMsgAttribute(nsIEventQueue aClientEventQueue, nsIMsgFolder aMailFolder, nsIMsgWindow aMsgWindow, char *aAttribute, char *aMessageIdentifierList, nsIURI *_retval);

  /* nsIURI storeCustomKeywords (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aMailFolder, in nsIMsgWindow aMsgWindow, in string flagsToAdd, in string flagsToSubtract, in string aMessageIdentifierList); */
  nsresult StoreCustomKeywords(nsIEventQueue aClientEventQueue, nsIMsgFolder aMailFolder, nsIMsgWindow aMsgWindow, char *flagsToAdd, char *flagsToSubtract, char *aMessageIdentifierList, nsIURI *_retval);

  /* void getListOfFoldersOnServer (in nsIImapIncomingServer aServer, in nsIMsgWindow aMsgWindow); */
  nsresult GetListOfFoldersOnServer(nsIImapIncomingServer aServer, nsIMsgWindow aMsgWindow);

  /* void getListOfFoldersWithPath (in nsIImapIncomingServer aServer, in nsIMsgWindow aMsgWindow, in string folderPath); */
  nsresult GetListOfFoldersWithPath(nsIImapIncomingServer aServer, nsIMsgWindow aMsgWindow, char *folderPath);

  /* nsISupports playbackAllOfflineOperations (in nsIMsgWindow aMsgWindow, in nsIUrlListener aListener); */
  nsresult PlaybackAllOfflineOperations(nsIMsgWindow aMsgWindow, nsIUrlListener aListener, nsISupports *_retval);

  /* void downloadAllOffineImapFolders (in nsIMsgWindow aMsgWindow, in nsIUrlListener aListener); */
  nsresult DownloadAllOffineImapFolders(nsIMsgWindow aMsgWindow, nsIUrlListener aListener);

  /* readonly attribute nsICacheSession cacheSession; */
  nsresult GetCacheSession(nsICacheSession  *aCacheSession);

}

