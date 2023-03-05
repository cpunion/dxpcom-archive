/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImapService.idl
 */

module mozilla.dxpcom.nsIImapServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIImapService;


public import mozilla.dxpcom.nsIImapServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIImapUrl;
public import mozilla.dxpcom.nsIImapUrlD;

public import mozilla.xpcom.nsIImapProtocol;

public import mozilla.dxpcom.nsIImapProtocolD;

public import mozilla.xpcom.nsIImapMessageSink;

public import mozilla.dxpcom.nsIImapMessageSinkD;

public import mozilla.xpcom.nsIUrlListener;

public import mozilla.dxpcom.nsIUrlListenerD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIEventQueue;

public import mozilla.dxpcom.nsIEventQueueD;

public import mozilla.xpcom.nsIMsgFolder;

public import mozilla.dxpcom.nsIMsgFolderD;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;

public import mozilla.xpcom.nsIImapIncomingServer;

public import mozilla.dxpcom.nsIImapIncomingServerD;

public import mozilla.xpcom.nsICacheSession;

public import mozilla.dxpcom.nsICacheSessionD;


/* starting wrapper class:    nsIImapService */
class nsIImapServiceD : public nsISupportsD {

  static const nsIID IID = NS_IIMAPSERVICE_IID;


  alias nsIImapService InnerType;

  this(nsIImapService intr){
    super(intr);
    this.inner = intr;
  }

  nsIImapService opCast() {
    return inner;
  }

  void opAssign(nsIImapService value) {
    inner = value;
  }

  /* void selectFolder (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener, in nsIMsgWindow aMsgWindow, out nsIURI aURL); */
  void SelectFolder(nsIEventQueueD aClientEventQueue, nsIMsgFolderD aImapMailFolder, nsIUrlListenerD aUrlListener, nsIMsgWindowD aMsgWindow, out nsIURID aURL){
    nsIURI _aURL;
    nsresult __result = inner.SelectFolder(aClientEventQueue ? cast(nsIEventQueue)aClientEventQueue : null, aImapMailFolder ? cast(nsIMsgFolder)aImapMailFolder : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, &_aURL);
    CheckException(__result);
    aURL = _aURL ? new nsIURID(_aURL) : null;
  }

  /* void liteSelectFolder (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener, out nsIURI aURL); */
  void LiteSelectFolder(nsIEventQueueD aClientEventQueue, nsIMsgFolderD aImapMailFolder, nsIUrlListenerD aUrlListener, out nsIURID aURL){
    nsIURI _aURL;
    nsresult __result = inner.LiteSelectFolder(aClientEventQueue ? cast(nsIEventQueue)aClientEventQueue : null, aImapMailFolder ? cast(nsIMsgFolder)aImapMailFolder : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, &_aURL);
    CheckException(__result);
    aURL = _aURL ? new nsIURID(_aURL) : null;
  }

  /* void fetchMessage (in nsIImapUrl aUrl, in nsImapState aImapAction, in nsIMsgFolder aImapMailFolder, in nsIImapMessageSink aImapMessageSink, in nsIMsgWindow aMsgWindow, in nsISupports aConsumer, in string aMessageIdentifierList, in boolean convertDataToText, in string additionalHeader, out nsIURI aOutURL); */
  void FetchMessage(nsIImapUrlD aUrl, nsImapState aImapAction, nsIMsgFolderD aImapMailFolder, nsIImapMessageSinkD aImapMessageSink, nsIMsgWindowD aMsgWindow, nsISupportsD aConsumer, char*aMessageIdentifierList, PRBool convertDataToText, char*additionalHeader, out nsIURID aOutURL){
    nsIURI _aOutURL;
    nsresult __result = inner.FetchMessage(aUrl ? cast(nsIImapUrl)aUrl : null, aImapAction, aImapMailFolder ? cast(nsIMsgFolder)aImapMailFolder : null, aImapMessageSink ? cast(nsIImapMessageSink)aImapMessageSink : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aConsumer ? cast(nsISupports)aConsumer : null, aMessageIdentifierList, convertDataToText, additionalHeader, &_aOutURL);
    CheckException(__result);
    aOutURL = _aOutURL ? new nsIURID(_aOutURL) : null;
  }

  /* void noop (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener, out nsIURI aURL); */
  void Noop(nsIEventQueueD aClientEventQueue, nsIMsgFolderD aImapMailFolder, nsIUrlListenerD aUrlListener, out nsIURID aURL){
    nsIURI _aURL;
    nsresult __result = inner.Noop(aClientEventQueue ? cast(nsIEventQueue)aClientEventQueue : null, aImapMailFolder ? cast(nsIMsgFolder)aImapMailFolder : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, &_aURL);
    CheckException(__result);
    aURL = _aURL ? new nsIURID(_aURL) : null;
  }

  /* void getHeaders (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener, out nsIURI aURL, in string aMessageIdentifierList, in boolean aMessageIdsAreUID); */
  void GetHeaders(nsIEventQueueD aClientEventQueue, nsIMsgFolderD aImapMailFolder, nsIUrlListenerD aUrlListener, out nsIURID aURL, char*aMessageIdentifierList, PRBool aMessageIdsAreUID){
    nsIURI _aURL;
    nsresult __result = inner.GetHeaders(aClientEventQueue ? cast(nsIEventQueue)aClientEventQueue : null, aImapMailFolder ? cast(nsIMsgFolder)aImapMailFolder : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, &_aURL, aMessageIdentifierList, aMessageIdsAreUID);
    CheckException(__result);
    aURL = _aURL ? new nsIURID(_aURL) : null;
  }

  /* nsIURI getBodyStart (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener, in string aMessageIdentifierList, in long numBytes); */
  nsIURID  GetBodyStart(nsIEventQueueD aClientEventQueue, nsIMsgFolderD aImapMailFolder, nsIUrlListenerD aUrlListener, char*aMessageIdentifierList, PRInt32 numBytes){
    nsIURI _retval;
    nsresult __result = inner.GetBodyStart(aClientEventQueue ? cast(nsIEventQueue)aClientEventQueue : null, aImapMailFolder ? cast(nsIMsgFolder)aImapMailFolder : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, aMessageIdentifierList, numBytes, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /* void expunge (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener, out nsIURI aURL); */
  void Expunge(nsIEventQueueD aClientEventQueue, nsIMsgFolderD aImapMailFolder, nsIUrlListenerD aUrlListener, out nsIURID aURL){
    nsIURI _aURL;
    nsresult __result = inner.Expunge(aClientEventQueue ? cast(nsIEventQueue)aClientEventQueue : null, aImapMailFolder ? cast(nsIMsgFolder)aImapMailFolder : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, &_aURL);
    CheckException(__result);
    aURL = _aURL ? new nsIURID(_aURL) : null;
  }

  /* nsIURI updateFolderStatus (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener); */
  nsIURID  UpdateFolderStatus(nsIEventQueueD aClientEventQueue, nsIMsgFolderD aImapMailFolder, nsIUrlListenerD aUrlListener){
    nsIURI _retval;
    nsresult __result = inner.UpdateFolderStatus(aClientEventQueue ? cast(nsIEventQueue)aClientEventQueue : null, aImapMailFolder ? cast(nsIMsgFolder)aImapMailFolder : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /* void biff (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener, out nsIURI aURL, in unsigned long aUidHighWater); */
  void Biff(nsIEventQueueD aClientEventQueue, nsIMsgFolderD aImapMailFolder, nsIUrlListenerD aUrlListener, out nsIURID aURL, PRUint32 aUidHighWater){
    nsIURI _aURL;
    nsresult __result = inner.Biff(aClientEventQueue ? cast(nsIEventQueue)aClientEventQueue : null, aImapMailFolder ? cast(nsIMsgFolder)aImapMailFolder : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, &_aURL, aUidHighWater);
    CheckException(__result);
    aURL = _aURL ? new nsIURID(_aURL) : null;
  }

  /* void deleteMessages (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener, out nsIURI aURL, in string aMessageIdentifierList, in boolean aMessageIdsAreUID); */
  void DeleteMessages(nsIEventQueueD aClientEventQueue, nsIMsgFolderD aImapMailFolder, nsIUrlListenerD aUrlListener, out nsIURID aURL, char*aMessageIdentifierList, PRBool aMessageIdsAreUID){
    nsIURI _aURL;
    nsresult __result = inner.DeleteMessages(aClientEventQueue ? cast(nsIEventQueue)aClientEventQueue : null, aImapMailFolder ? cast(nsIMsgFolder)aImapMailFolder : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, &_aURL, aMessageIdentifierList, aMessageIdsAreUID);
    CheckException(__result);
    aURL = _aURL ? new nsIURID(_aURL) : null;
  }

  /* void deleteAllMessages (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener, out nsIURI aURL); */
  void DeleteAllMessages(nsIEventQueueD aClientEventQueue, nsIMsgFolderD aImapMailFolder, nsIUrlListenerD aUrlListener, out nsIURID aURL){
    nsIURI _aURL;
    nsresult __result = inner.DeleteAllMessages(aClientEventQueue ? cast(nsIEventQueue)aClientEventQueue : null, aImapMailFolder ? cast(nsIMsgFolder)aImapMailFolder : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, &_aURL);
    CheckException(__result);
    aURL = _aURL ? new nsIURID(_aURL) : null;
  }

  /* void addMessageFlags (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener, out nsIURI aURL, in string aMessageIdentifierList, in imapMessageFlagsType aFlags, in boolean aMessageIdsAreUID); */
  void AddMessageFlags(nsIEventQueueD aClientEventQueue, nsIMsgFolderD aImapMailFolder, nsIUrlListenerD aUrlListener, out nsIURID aURL, char*aMessageIdentifierList, imapMessageFlagsType aFlags, PRBool aMessageIdsAreUID){
    nsIURI _aURL;
    nsresult __result = inner.AddMessageFlags(aClientEventQueue ? cast(nsIEventQueue)aClientEventQueue : null, aImapMailFolder ? cast(nsIMsgFolder)aImapMailFolder : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, &_aURL, aMessageIdentifierList, aFlags, aMessageIdsAreUID);
    CheckException(__result);
    aURL = _aURL ? new nsIURID(_aURL) : null;
  }

  /* void subtractMessageFlags (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener, out nsIURI aURL, in string aMessageIdentifierList, in imapMessageFlagsType aFlags, in boolean aMessageIdsAreUID); */
  void SubtractMessageFlags(nsIEventQueueD aClientEventQueue, nsIMsgFolderD aImapMailFolder, nsIUrlListenerD aUrlListener, out nsIURID aURL, char*aMessageIdentifierList, imapMessageFlagsType aFlags, PRBool aMessageIdsAreUID){
    nsIURI _aURL;
    nsresult __result = inner.SubtractMessageFlags(aClientEventQueue ? cast(nsIEventQueue)aClientEventQueue : null, aImapMailFolder ? cast(nsIMsgFolder)aImapMailFolder : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, &_aURL, aMessageIdentifierList, aFlags, aMessageIdsAreUID);
    CheckException(__result);
    aURL = _aURL ? new nsIURID(_aURL) : null;
  }

  /* void setMessageFlags (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener, out nsIURI aURL, in string aMessageIdentifierList, in imapMessageFlagsType aFlags, in boolean aMessageIdsAreUID); */
  void SetMessageFlags(nsIEventQueueD aClientEventQueue, nsIMsgFolderD aImapMailFolder, nsIUrlListenerD aUrlListener, out nsIURID aURL, char*aMessageIdentifierList, imapMessageFlagsType aFlags, PRBool aMessageIdsAreUID){
    nsIURI _aURL;
    nsresult __result = inner.SetMessageFlags(aClientEventQueue ? cast(nsIEventQueue)aClientEventQueue : null, aImapMailFolder ? cast(nsIMsgFolder)aImapMailFolder : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, &_aURL, aMessageIdentifierList, aFlags, aMessageIdsAreUID);
    CheckException(__result);
    aURL = _aURL ? new nsIURID(_aURL) : null;
  }

  /* void discoverAllFolders (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener, in nsIMsgWindow aMsgWindow, out nsIURI aURL); */
  void DiscoverAllFolders(nsIEventQueueD aClientEventQueue, nsIMsgFolderD aImapMailFolder, nsIUrlListenerD aUrlListener, nsIMsgWindowD aMsgWindow, out nsIURID aURL){
    nsIURI _aURL;
    nsresult __result = inner.DiscoverAllFolders(aClientEventQueue ? cast(nsIEventQueue)aClientEventQueue : null, aImapMailFolder ? cast(nsIMsgFolder)aImapMailFolder : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, &_aURL);
    CheckException(__result);
    aURL = _aURL ? new nsIURID(_aURL) : null;
  }

  /* void discoverAllAndSubscribedFolders (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener, out nsIURI aURL); */
  void DiscoverAllAndSubscribedFolders(nsIEventQueueD aClientEventQueue, nsIMsgFolderD aImapMailFolder, nsIUrlListenerD aUrlListener, out nsIURID aURL){
    nsIURI _aURL;
    nsresult __result = inner.DiscoverAllAndSubscribedFolders(aClientEventQueue ? cast(nsIEventQueue)aClientEventQueue : null, aImapMailFolder ? cast(nsIMsgFolder)aImapMailFolder : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, &_aURL);
    CheckException(__result);
    aURL = _aURL ? new nsIURID(_aURL) : null;
  }

  /* void discoverChildren (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aImapMailFolder, in nsIUrlListener aUrlListener, in string folderPath, out nsIURI aURL); */
  void DiscoverChildren(nsIEventQueueD aClientEventQueue, nsIMsgFolderD aImapMailFolder, nsIUrlListenerD aUrlListener, char*folderPath, out nsIURID aURL){
    nsIURI _aURL;
    nsresult __result = inner.DiscoverChildren(aClientEventQueue ? cast(nsIEventQueue)aClientEventQueue : null, aImapMailFolder ? cast(nsIMsgFolder)aImapMailFolder : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, folderPath, &_aURL);
    CheckException(__result);
    aURL = _aURL ? new nsIURID(_aURL) : null;
  }

  /* void onlineMessageCopy (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aSrcFolder, in string aMessageIds, in nsIMsgFolder aDstFolder, in boolean aIdsAreUids, in boolean aIsMove, in nsIUrlListener aUrlListener, out nsIURI aURL, in nsISupports aCopyState, in nsIMsgWindow aWindow); */
  void OnlineMessageCopy(nsIEventQueueD aClientEventQueue, nsIMsgFolderD aSrcFolder, char*aMessageIds, nsIMsgFolderD aDstFolder, PRBool aIdsAreUids, PRBool aIsMove, nsIUrlListenerD aUrlListener, out nsIURID aURL, nsISupportsD aCopyState, nsIMsgWindowD aWindow){
    nsIURI _aURL;
    nsresult __result = inner.OnlineMessageCopy(aClientEventQueue ? cast(nsIEventQueue)aClientEventQueue : null, aSrcFolder ? cast(nsIMsgFolder)aSrcFolder : null, aMessageIds, aDstFolder ? cast(nsIMsgFolder)aDstFolder : null, aIdsAreUids, aIsMove, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, &_aURL, aCopyState ? cast(nsISupports)aCopyState : null, aWindow ? cast(nsIMsgWindow)aWindow : null);
    CheckException(__result);
    aURL = _aURL ? new nsIURID(_aURL) : null;
  }

  /* void appendMessageFromFile (in nsIEventQueue aClientEventQueue, in nsIFileSpec aFileSpec, in nsIMsgFolder aDstFolder, in string aMessageId, in boolean idsAreUids, in boolean aInSelectedState, in nsIUrlListener aUrlListener, out nsIURI aURL, in nsISupports aCopyState, in nsIMsgWindow aMsgWindow); */
  void AppendMessageFromFile(nsIEventQueueD aClientEventQueue, nsIFileSpecD aFileSpec, nsIMsgFolderD aDstFolder, char*aMessageId, PRBool idsAreUids, PRBool aInSelectedState, nsIUrlListenerD aUrlListener, out nsIURID aURL, nsISupportsD aCopyState, nsIMsgWindowD aMsgWindow){
    nsIURI _aURL;
    nsresult __result = inner.AppendMessageFromFile(aClientEventQueue ? cast(nsIEventQueue)aClientEventQueue : null, aFileSpec ? cast(nsIFileSpec)aFileSpec : null, aDstFolder ? cast(nsIMsgFolder)aDstFolder : null, aMessageId, idsAreUids, aInSelectedState, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, &_aURL, aCopyState ? cast(nsISupports)aCopyState : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null);
    CheckException(__result);
    aURL = _aURL ? new nsIURID(_aURL) : null;
  }

  /* void downloadMessagesForOffline (in string aMessageIds, in nsIMsgFolder aSrcFolder, in nsIUrlListener aListener, in nsIMsgWindow aMsgWindow); */
  void DownloadMessagesForOffline(char*aMessageIds, nsIMsgFolderD aSrcFolder, nsIUrlListenerD aListener, nsIMsgWindowD aMsgWindow){
    nsresult __result = inner.DownloadMessagesForOffline(aMessageIds, aSrcFolder ? cast(nsIMsgFolder)aSrcFolder : null, aListener ? cast(nsIUrlListener)aListener : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null);
    CheckException(__result);
  }

  /* nsIURI moveFolder (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aSrcFolder, in nsIMsgFolder aDstFolder, in nsIUrlListener aUrlListener, in nsIMsgWindow msgWindow); */
  nsIURID  MoveFolder(nsIEventQueueD aClientEventQueue, nsIMsgFolderD aSrcFolder, nsIMsgFolderD aDstFolder, nsIUrlListenerD aUrlListener, nsIMsgWindowD msgWindow){
    nsIURI _retval;
    nsresult __result = inner.MoveFolder(aClientEventQueue ? cast(nsIEventQueue)aClientEventQueue : null, aSrcFolder ? cast(nsIMsgFolder)aSrcFolder : null, aDstFolder ? cast(nsIMsgFolder)aDstFolder : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, msgWindow ? cast(nsIMsgWindow)msgWindow : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /* nsIURI renameLeaf (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aSrcFolder, in wstring aLeafName, in nsIUrlListener aUrlListener, in nsIMsgWindow msgWindow); */
  nsIURID  RenameLeaf(nsIEventQueueD aClientEventQueue, nsIMsgFolderD aSrcFolder, PRUnichar*aLeafName, nsIUrlListenerD aUrlListener, nsIMsgWindowD msgWindow){
    nsIURI _retval;
    nsresult __result = inner.RenameLeaf(aClientEventQueue ? cast(nsIEventQueue)aClientEventQueue : null, aSrcFolder ? cast(nsIMsgFolder)aSrcFolder : null, aLeafName, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, msgWindow ? cast(nsIMsgWindow)msgWindow : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /* nsIURI deleteFolder (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aFolder, in nsIUrlListener aUrlListener); */
  nsIURID  DeleteFolder(nsIEventQueueD aClientEventQueue, nsIMsgFolderD aFolder, nsIUrlListenerD aUrlListener){
    nsIURI _retval;
    nsresult __result = inner.DeleteFolder(aClientEventQueue ? cast(nsIEventQueue)aClientEventQueue : null, aFolder ? cast(nsIMsgFolder)aFolder : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /* nsIURI createFolder (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aParentFolder, in wstring aLeafName, in nsIUrlListener aUrlListener); */
  nsIURID  CreateFolder(nsIEventQueueD aClientEventQueue, nsIMsgFolderD aParentFolder, PRUnichar*aLeafName, nsIUrlListenerD aUrlListener){
    nsIURI _retval;
    nsresult __result = inner.CreateFolder(aClientEventQueue ? cast(nsIEventQueue)aClientEventQueue : null, aParentFolder ? cast(nsIMsgFolder)aParentFolder : null, aLeafName, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /* nsIURI listFolder (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aMailFolder, in nsIUrlListener aUrlListener); */
  nsIURID  ListFolder(nsIEventQueueD aClientEventQueue, nsIMsgFolderD aMailFolder, nsIUrlListenerD aUrlListener){
    nsIURI _retval;
    nsresult __result = inner.ListFolder(aClientEventQueue ? cast(nsIEventQueue)aClientEventQueue : null, aMailFolder ? cast(nsIMsgFolder)aMailFolder : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /* nsIURI subscribeFolder (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aMailFolder, in wstring mailboxName, in nsIUrlListener aUrlListener); */
  nsIURID  SubscribeFolder(nsIEventQueueD aClientEventQueue, nsIMsgFolderD aMailFolder, PRUnichar*mailboxName, nsIUrlListenerD aUrlListener){
    nsIURI _retval;
    nsresult __result = inner.SubscribeFolder(aClientEventQueue ? cast(nsIEventQueue)aClientEventQueue : null, aMailFolder ? cast(nsIMsgFolder)aMailFolder : null, mailboxName, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /* nsIURI unsubscribeFolder (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aMailFolder, in wstring mailboxName, in nsIUrlListener aUrlListener); */
  nsIURID  UnsubscribeFolder(nsIEventQueueD aClientEventQueue, nsIMsgFolderD aMailFolder, PRUnichar*mailboxName, nsIUrlListenerD aUrlListener){
    nsIURI _retval;
    nsresult __result = inner.UnsubscribeFolder(aClientEventQueue ? cast(nsIEventQueue)aClientEventQueue : null, aMailFolder ? cast(nsIMsgFolder)aMailFolder : null, mailboxName, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /* nsIURI ensureFolderExists (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aParentFolder, in wstring aLeafName, in nsIUrlListener aUrlListener); */
  nsIURID  EnsureFolderExists(nsIEventQueueD aClientEventQueue, nsIMsgFolderD aParentFolder, PRUnichar*aLeafName, nsIUrlListenerD aUrlListener){
    nsIURI _retval;
    nsresult __result = inner.EnsureFolderExists(aClientEventQueue ? cast(nsIEventQueue)aClientEventQueue : null, aParentFolder ? cast(nsIMsgFolder)aParentFolder : null, aLeafName, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /* nsIURI getFolderAdminUrl (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aMailFolder, in nsIMsgWindow aMsgWindow, in nsIUrlListener aUrlListener); */
  nsIURID  GetFolderAdminUrl(nsIEventQueueD aClientEventQueue, nsIMsgFolderD aMailFolder, nsIMsgWindowD aMsgWindow, nsIUrlListenerD aUrlListener){
    nsIURI _retval;
    nsresult __result = inner.GetFolderAdminUrl(aClientEventQueue ? cast(nsIEventQueue)aClientEventQueue : null, aMailFolder ? cast(nsIMsgFolder)aMailFolder : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /* nsIURI issueCommandOnMsgs (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aMailFolder, in nsIMsgWindow aMsgWindow, in string aCommand, in string aMessageIdentifierList); */
  nsIURID  IssueCommandOnMsgs(nsIEventQueueD aClientEventQueue, nsIMsgFolderD aMailFolder, nsIMsgWindowD aMsgWindow, char*aCommand, char*aMessageIdentifierList){
    nsIURI _retval;
    nsresult __result = inner.IssueCommandOnMsgs(aClientEventQueue ? cast(nsIEventQueue)aClientEventQueue : null, aMailFolder ? cast(nsIMsgFolder)aMailFolder : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aCommand, aMessageIdentifierList, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /* nsIURI fetchCustomMsgAttribute (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aMailFolder, in nsIMsgWindow aMsgWindow, in string aAttribute, in string aMessageIdentifierList); */
  nsIURID  FetchCustomMsgAttribute(nsIEventQueueD aClientEventQueue, nsIMsgFolderD aMailFolder, nsIMsgWindowD aMsgWindow, char*aAttribute, char*aMessageIdentifierList){
    nsIURI _retval;
    nsresult __result = inner.FetchCustomMsgAttribute(aClientEventQueue ? cast(nsIEventQueue)aClientEventQueue : null, aMailFolder ? cast(nsIMsgFolder)aMailFolder : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aAttribute, aMessageIdentifierList, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /* nsIURI storeCustomKeywords (in nsIEventQueue aClientEventQueue, in nsIMsgFolder aMailFolder, in nsIMsgWindow aMsgWindow, in string flagsToAdd, in string flagsToSubtract, in string aMessageIdentifierList); */
  nsIURID  StoreCustomKeywords(nsIEventQueueD aClientEventQueue, nsIMsgFolderD aMailFolder, nsIMsgWindowD aMsgWindow, char*flagsToAdd, char*flagsToSubtract, char*aMessageIdentifierList){
    nsIURI _retval;
    nsresult __result = inner.StoreCustomKeywords(aClientEventQueue ? cast(nsIEventQueue)aClientEventQueue : null, aMailFolder ? cast(nsIMsgFolder)aMailFolder : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, flagsToAdd, flagsToSubtract, aMessageIdentifierList, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /* void getListOfFoldersOnServer (in nsIImapIncomingServer aServer, in nsIMsgWindow aMsgWindow); */
  void GetListOfFoldersOnServer(nsIImapIncomingServerD aServer, nsIMsgWindowD aMsgWindow){
    nsresult __result = inner.GetListOfFoldersOnServer(aServer ? cast(nsIImapIncomingServer)aServer : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null);
    CheckException(__result);
  }

  /* void getListOfFoldersWithPath (in nsIImapIncomingServer aServer, in nsIMsgWindow aMsgWindow, in string folderPath); */
  void GetListOfFoldersWithPath(nsIImapIncomingServerD aServer, nsIMsgWindowD aMsgWindow, char*folderPath){
    nsresult __result = inner.GetListOfFoldersWithPath(aServer ? cast(nsIImapIncomingServer)aServer : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, folderPath);
    CheckException(__result);
  }

  /* nsISupports playbackAllOfflineOperations (in nsIMsgWindow aMsgWindow, in nsIUrlListener aListener); */
  nsISupportsD  PlaybackAllOfflineOperations(nsIMsgWindowD aMsgWindow, nsIUrlListenerD aListener){
    nsISupports _retval;
    nsresult __result = inner.PlaybackAllOfflineOperations(aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aListener ? cast(nsIUrlListener)aListener : null, &_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

  /* void downloadAllOffineImapFolders (in nsIMsgWindow aMsgWindow, in nsIUrlListener aListener); */
  void DownloadAllOffineImapFolders(nsIMsgWindowD aMsgWindow, nsIUrlListenerD aListener){
    nsresult __result = inner.DownloadAllOffineImapFolders(aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aListener ? cast(nsIUrlListener)aListener : null);
    CheckException(__result);
  }

  /* readonly attribute nsICacheSession cacheSession; */
  nsICacheSessionD  CacheSession(){
    nsICacheSession value;
    nsresult __result = inner.GetCacheSession(&value);
    CheckException(__result);
    return new nsICacheSessionD(value);
  }

private:
  nsIImapService inner;

}

