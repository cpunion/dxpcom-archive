/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImapMessageSink.idl
 */

module mozilla.dxpcom.nsIImapMessageSinkD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIImapMessageSink;


public import mozilla.dxpcom.nsIImapMessageSinkD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.MailNewsTypes2;
public import mozilla.dxpcom.MailNewsTypes2D;
public import mozilla.xpcom.nsIImapUrl;
public import mozilla.dxpcom.nsIImapUrlD;

public import mozilla.xpcom.nsIFileSpec;

public import mozilla.dxpcom.nsIFileSpecD;

public import mozilla.xpcom.nsIMsgMailNewsUrl;

public import mozilla.dxpcom.nsIMsgMailNewsUrlD;


/* starting wrapper class:    nsIImapMessageSink */
class nsIImapMessageSinkD : public nsISupportsD {

  static const nsIID IID = NS_IIMAPMESSAGESINK_IID;


  alias nsIImapMessageSink InnerType;

  this(nsIImapMessageSink intr){
    super(intr);
    this.inner = intr;
  }

  nsIImapMessageSink opCast() {
    return inner;
  }

  void opAssign(nsIImapMessageSink value) {
    inner = value;
  }

  /* void SetupMsgWriteStream (in string aNativePath, in boolean appendDummyEnvelope); */
  void SetupMsgWriteStream(char*aNativePath, PRBool appendDummyEnvelope){
    nsresult __result = inner.SetupMsgWriteStream(aNativePath, appendDummyEnvelope);
    CheckException(__result);
  }

  /* void ParseAdoptedMsgLine (in string adoptedMsgLine, in nsMsgKey uidOfMsg); */
  void ParseAdoptedMsgLine(char*adoptedMsgLine, nsMsgKey uidOfMsg){
    nsresult __result = inner.ParseAdoptedMsgLine(adoptedMsgLine, uidOfMsg);
    CheckException(__result);
  }

  /* void normalEndMsgWriteStream (in nsMsgKey uidOfMessage, in boolean markMsgRead, in nsIImapUrl imapUrl); */
  void NormalEndMsgWriteStream(nsMsgKey uidOfMessage, PRBool markMsgRead, nsIImapUrlD imapUrl){
    nsresult __result = inner.NormalEndMsgWriteStream(uidOfMessage, markMsgRead, imapUrl ? cast(nsIImapUrl)imapUrl : null);
    CheckException(__result);
  }

  /* void AbortMsgWriteStream (); */
  void AbortMsgWriteStream(){
    nsresult __result = inner.AbortMsgWriteStream();
    CheckException(__result);
  }

  /* attribute boolean notifyDownloadedLines; */
  PRBool NotifyDownloadedLines(){
    PRBool value;
    nsresult __result = inner.GetNotifyDownloadedLines(&value);
    CheckException(__result);
    return value;
  }
  void NotifyDownloadedLines(PRBool aNotifyDownloadedLines){
    nsresult __result = inner.SetNotifyDownloadedLines(aNotifyDownloadedLines);
    CheckException(__result);
  }

  /* void BeginMessageUpload (); */
  void BeginMessageUpload(){
    nsresult __result = inner.BeginMessageUpload();
    CheckException(__result);
  }

  /* void NotifyMessageFlags (in unsigned long flags, in nsMsgKey messageKey); */
  void NotifyMessageFlags(PRUint32 flags, nsMsgKey messageKey){
    nsresult __result = inner.NotifyMessageFlags(flags, messageKey);
    CheckException(__result);
  }

  /* void NotifyMessageDeleted (in string onlineFolderName, in boolean deleteAllMsgs, in string msgIdString); */
  void NotifyMessageDeleted(char*onlineFolderName, PRBool deleteAllMsgs, char*msgIdString){
    nsresult __result = inner.NotifyMessageDeleted(onlineFolderName, deleteAllMsgs, msgIdString);
    CheckException(__result);
  }

  /* void GetMessageSizeFromDB (in string id, in boolean idIsUid, out unsigned long size); */
  void GetMessageSizeFromDB(char*id, PRBool idIsUid, out PRUint32 size){
    nsresult __result = inner.GetMessageSizeFromDB(id, idIsUid, &size);
    CheckException(__result);
  }

  /* void SetContentModified (in nsIImapUrl aImapUrl, in nsImapContentModifiedType modified); */
  void SetContentModified(nsIImapUrlD aImapUrl, nsImapContentModifiedType modified){
    nsresult __result = inner.SetContentModified(aImapUrl ? cast(nsIImapUrl)aImapUrl : null, modified);
    CheckException(__result);
  }

  /* void SetImageCacheSessionForUrl (in nsIMsgMailNewsUrl aMailUrl); */
  void SetImageCacheSessionForUrl(nsIMsgMailNewsUrlD aMailUrl){
    nsresult __result = inner.SetImageCacheSessionForUrl(aMailUrl ? cast(nsIMsgMailNewsUrl)aMailUrl : null);
    CheckException(__result);
  }

  /* unsigned long getCurMoveCopyMessageInfo (in nsIImapUrl runningUrl, out PRTime date, out string keywords); */
  PRUint32 GetCurMoveCopyMessageInfo(nsIImapUrlD runningUrl, out PRTime date, out char*keywords){
    PRUint32 _retval;
    nsresult __result = inner.GetCurMoveCopyMessageInfo(runningUrl ? cast(nsIImapUrl)runningUrl : null, &date, &keywords, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIImapMessageSink inner;

}

