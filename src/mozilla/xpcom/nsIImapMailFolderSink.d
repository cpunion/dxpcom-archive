/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImapMailFolderSink.idl
 */

module mozilla.xpcom.nsIImapMailFolderSink;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.MailNewsTypes2;
public import mozilla.xpcom.nsIImapProtocol;
public import mozilla.xpcom.nsIMailboxSpec;
public import mozilla.xpcom.nsIImapUrl;

public import mozilla.xpcom.nsIMsgMailNewsUrl; /* forward declaration */

public import mozilla.xpcom.nsIImapMockChannel; /* forward declaration */

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */

public import mozilla.xpcom.nsIImapHeaderXferInfo; /* forward declaration */

alias PRInt32 ImapOnlineCopyState;


/* starting interface:    ImapOnlineCopyStateType */
const char[] IMAPONLINECOPYSTATETYPE_IID_STR = "5f7484b0-68b4-11d3-a53e-0060b0fc04b7";

const nsIID IMAPONLINECOPYSTATETYPE_IID= 
  {0x5f7484b0, 0x68b4, 0x11d3, 
    [ 0xa5, 0x3e, 0x00, 0x60, 0xb0, 0xfc, 0x04, 0xb7 ]};

extern(Windows)
interface ImapOnlineCopyStateType {
  static const char[] IID_STR = IMAPONLINECOPYSTATETYPE_IID_STR;
  static const nsIID IID = IMAPONLINECOPYSTATETYPE_IID;

  enum { kInProgress = 0 };

  enum { kSuccessfulCopy = 1 };

  enum { kSuccessfulMove = 2 };

  enum { kSuccessfulDelete = 3 };

  enum { kFailedDelete = 4 };

  enum { kReadyForAppendData = 5 };

  enum { kFailedAppend = 6 };

  enum { kInterruptedState = 7 };

  enum { kFailedCopy = 8 };

  enum { kFailedMove = 9 };

}


/* starting interface:    nsIImapMailFolderSink */
const char[] NS_IIMAPMAILFOLDERSINK_IID_STR = "3b2dd7e0-e72c-11d2-ab7b-00805f8ac968";

const nsIID NS_IIMAPMAILFOLDERSINK_IID= 
  {0x3b2dd7e0, 0xe72c, 0x11d2, 
    [ 0xab, 0x7b, 0x00, 0x80, 0x5f, 0x8a, 0xc9, 0x68 ]};

extern(Windows)
interface nsIImapMailFolderSink : nsISupports {
  static const char[] IID_STR = NS_IIMAPMAILFOLDERSINK_IID_STR;
  static const nsIID IID = NS_IIMAPMAILFOLDERSINK_IID;

  /* attribute boolean folderNeedsACLListed; */
  nsresult GetFolderNeedsACLListed(PRBool *aFolderNeedsACLListed);
  nsresult SetFolderNeedsACLListed(PRBool aFolderNeedsACLListed);

  /* attribute boolean folderNeedsSubscribing; */
  nsresult GetFolderNeedsSubscribing(PRBool *aFolderNeedsSubscribing);
  nsresult SetFolderNeedsSubscribing(PRBool aFolderNeedsSubscribing);

  /* attribute boolean folderNeedsAdded; */
  nsresult GetFolderNeedsAdded(PRBool *aFolderNeedsAdded);
  nsresult SetFolderNeedsAdded(PRBool aFolderNeedsAdded);

  /* attribute unsigned long aclFlags; */
  nsresult GetAclFlags(PRUint32 *aAclFlags);
  nsresult SetAclFlags(PRUint32 aAclFlags);

  /* attribute long uidValidity; */
  nsresult GetUidValidity(PRInt32 *aUidValidity);
  nsresult SetUidValidity(PRInt32 aUidValidity);

  /**
   * Whether we have asked the server for this folder's quota information.
   * If the server supports quotas, this occurs when the folder is opened.
   */
  /* attribute boolean folderQuotaCommandIssued; */
  nsresult GetFolderQuotaCommandIssued(PRBool *aFolderQuotaCommandIssued);
  nsresult SetFolderQuotaCommandIssued(PRBool aFolderQuotaCommandIssued);

  /**
   * Set FolderQuotaData information
   * @param aFolderQuotaRoot    The IMAP quota root for this folder, 
   *                            as returned by the GETQUOTAROOT IMAP command.
   * @param aFolderQuotaUsedKB  Used space, in KB, on this folder's quota root.
   * @param aFolderQuotaMaxKB   Size, in KB, of this folder's quota root.
   **/
  /* void setFolderQuotaData (in ACString aFolderQuotaRoot, in unsigned long aFolderQuotaUsedKB, in unsigned long aFolderQuotaMaxKB); */
  nsresult SetFolderQuotaData(nsACString * aFolderQuotaRoot, PRUint32 aFolderQuotaUsedKB, PRUint32 aFolderQuotaMaxKB);

  /* readonly attribute boolean shouldDownloadAllHeaders; */
  nsresult GetShouldDownloadAllHeaders(PRBool *aShouldDownloadAllHeaders);

  /* string GetOnlineDelimiter (); */
  nsresult GetOnlineDelimiter(char **_retval);

  /* void OnNewIdleMessages (); */
  nsresult OnNewIdleMessages();

  /* void UpdateImapMailboxInfo (in nsIImapProtocol aProtocol, in nsIMailboxSpec aSpec); */
  nsresult UpdateImapMailboxInfo(nsIImapProtocol aProtocol, nsIMailboxSpec aSpec);

  /* void UpdateImapMailboxStatus (in nsIImapProtocol aProtocol, in nsIMailboxSpec aSpec); */
  nsresult UpdateImapMailboxStatus(nsIImapProtocol aProtocol, nsIMailboxSpec aSpec);

  /* void parseMsgHdrs (in nsIImapProtocol aProtocol, in nsIImapHeaderXferInfo aHdrXferInfo); */
  nsresult ParseMsgHdrs(nsIImapProtocol aProtocol, nsIImapHeaderXferInfo aHdrXferInfo);

  /* void AbortHeaderParseStream (in nsIImapProtocol aProtocol); */
  nsresult AbortHeaderParseStream(nsIImapProtocol aProtocol);

  /* void OnlineCopyCompleted (in nsIImapProtocol aProtocol, in ImapOnlineCopyState aCopyState); */
  nsresult OnlineCopyCompleted(nsIImapProtocol aProtocol, ImapOnlineCopyState aCopyState);

  /* void StartMessage (in nsIMsgMailNewsUrl aUrl); */
  nsresult StartMessage(nsIMsgMailNewsUrl aUrl);

  /* void EndMessage (in nsIMsgMailNewsUrl aUrl, in nsMsgKey uidOfMessage); */
  nsresult EndMessage(nsIMsgMailNewsUrl aUrl, nsMsgKey uidOfMessage);

  /* void NotifySearchHit (in nsIMsgMailNewsUrl aUrl, in string hitLine); */
  nsresult NotifySearchHit(nsIMsgMailNewsUrl aUrl, char *hitLine);

  /* void copyNextStreamMessage (in boolean copySucceeded, in nsISupports copyState); */
  nsresult CopyNextStreamMessage(PRBool copySucceeded, nsISupports copyState);

  /* void prepareToReleaseObject (in nsISupports aISupports); */
  nsresult PrepareToReleaseObject(nsISupports aISupports);

  /* void releaseObject (); */
  nsresult ReleaseObject();

  /* void closeMockChannel (in nsIImapMockChannel aChannel); */
  nsresult CloseMockChannel(nsIImapMockChannel aChannel);

  /* void setUrlState (in nsIImapProtocol aProtocol, in nsIMsgMailNewsUrl aUrl, in boolean isRunning, in nsresult status); */
  nsresult SetUrlState(nsIImapProtocol aProtocol, nsIMsgMailNewsUrl aUrl, PRBool isRunning, nsresult status);

  /* void releaseUrlCacheEntry (in nsIMsgMailNewsUrl aUrl); */
  nsresult ReleaseUrlCacheEntry(nsIMsgMailNewsUrl aUrl);

  /* void headerFetchCompleted (in nsIImapProtocol aProtocol); */
  nsresult HeaderFetchCompleted(nsIImapProtocol aProtocol);

  /* void setBiffStateAndUpdate (in long biffState); */
  nsresult SetBiffStateAndUpdate(PRInt32 biffState);

  /* void progressStatus (in nsIImapProtocol aProtocol, in unsigned long aMsgId, in wstring extraInfo); */
  nsresult ProgressStatus(nsIImapProtocol aProtocol, PRUint32 aMsgId, PRUnichar *extraInfo);

  /* void percentProgress (in nsIImapProtocol aProtocol, in wstring aMessage, in long aCurrentProgress, in long aMaxProgressProgressInfo); */
  nsresult PercentProgress(nsIImapProtocol aProtocol, PRUnichar *aMessage, PRInt32 aCurrentProgress, PRInt32 aMaxProgressProgressInfo);

  /* void clearFolderRights (); */
  nsresult ClearFolderRights();

  /* void setCopyResponseUid (in string msgIdString, in nsIImapUrl aUrl); */
  nsresult SetCopyResponseUid(char *msgIdString, nsIImapUrl aUrl);

  /* void setAppendMsgUid (in nsMsgKey newKey, in nsIImapUrl aUrl); */
  nsresult SetAppendMsgUid(nsMsgKey newKey, nsIImapUrl aUrl);

  /* ACString getMessageId (in nsIImapUrl aUrl); */
  nsresult GetMessageId(nsIImapUrl aUrl, nsACString * _retval);

}

