/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImapMessageSink.idl
 */

module mozilla.xpcom.nsIImapMessageSink;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.MailNewsTypes2;
public import mozilla.xpcom.nsIImapUrl;

public import mozilla.xpcom.nsIFileSpec; /* forward declaration */

public import mozilla.xpcom.nsIMsgMailNewsUrl; /* forward declaration */


/* starting interface:    nsIImapMessageSink */
const char[] NS_IIMAPMESSAGESINK_IID_STR = "b92c9161-2345-4adb-af90-5a42cd898209";

const nsIID NS_IIMAPMESSAGESINK_IID= 
  {0xb92c9161, 0x2345, 0x4adb, 
    [ 0xaf, 0x90, 0x5a, 0x42, 0xcd, 0x89, 0x82, 0x09 ]};

extern(Windows)
interface nsIImapMessageSink : nsISupports {
  static const char[] IID_STR = NS_IIMAPMESSAGESINK_IID_STR;
  static const nsIID IID = NS_IIMAPMESSAGESINK_IID;

  /* void SetupMsgWriteStream (in string aNativePath, in boolean appendDummyEnvelope); */
  nsresult SetupMsgWriteStream(char *aNativePath, PRBool appendDummyEnvelope);

  /* void ParseAdoptedMsgLine (in string adoptedMsgLine, in nsMsgKey uidOfMsg); */
  nsresult ParseAdoptedMsgLine(char *adoptedMsgLine, nsMsgKey uidOfMsg);

  /* void normalEndMsgWriteStream (in nsMsgKey uidOfMessage, in boolean markMsgRead, in nsIImapUrl imapUrl); */
  nsresult NormalEndMsgWriteStream(nsMsgKey uidOfMessage, PRBool markMsgRead, nsIImapUrl imapUrl);

  /* void AbortMsgWriteStream (); */
  nsresult AbortMsgWriteStream();

  /* attribute boolean notifyDownloadedLines; */
  nsresult GetNotifyDownloadedLines(PRBool *aNotifyDownloadedLines);
  nsresult SetNotifyDownloadedLines(PRBool aNotifyDownloadedLines);

  /* void BeginMessageUpload (); */
  nsresult BeginMessageUpload();

  /* void NotifyMessageFlags (in unsigned long flags, in nsMsgKey messageKey); */
  nsresult NotifyMessageFlags(PRUint32 flags, nsMsgKey messageKey);

  /* void NotifyMessageDeleted (in string onlineFolderName, in boolean deleteAllMsgs, in string msgIdString); */
  nsresult NotifyMessageDeleted(char *onlineFolderName, PRBool deleteAllMsgs, char *msgIdString);

  /* void GetMessageSizeFromDB (in string id, in boolean idIsUid, out unsigned long size); */
  nsresult GetMessageSizeFromDB(char *id, PRBool idIsUid, PRUint32 *size);

  /* void SetContentModified (in nsIImapUrl aImapUrl, in nsImapContentModifiedType modified); */
  nsresult SetContentModified(nsIImapUrl aImapUrl, nsImapContentModifiedType modified);

  /* void SetImageCacheSessionForUrl (in nsIMsgMailNewsUrl aMailUrl); */
  nsresult SetImageCacheSessionForUrl(nsIMsgMailNewsUrl aMailUrl);

  /* unsigned long getCurMoveCopyMessageInfo (in nsIImapUrl runningUrl, out PRTime date, out string keywords); */
  nsresult GetCurMoveCopyMessageInfo(nsIImapUrl runningUrl, PRTime *date, char **keywords, PRUint32 *_retval);

}

