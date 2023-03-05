/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImapProtocol.idl
 */

module mozilla.dxpcom.nsIImapProtocolD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIImapProtocol;


public import mozilla.dxpcom.nsIImapProtocolD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIStreamListener;
public import mozilla.dxpcom.nsIStreamListenerD;

public import mozilla.xpcom.nsIUrlListener;

public import mozilla.dxpcom.nsIUrlListenerD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIImapUrl;

public import mozilla.dxpcom.nsIImapUrlD;

public import mozilla.xpcom.nsIEventQueue;

public import mozilla.dxpcom.nsIEventQueueD;

public import mozilla.xpcom.nsIImapProtocol;

public import mozilla.dxpcom.nsIImapProtocolD;

public import mozilla.xpcom.nsIImapIncomingServer;

public import mozilla.dxpcom.nsIImapIncomingServerD;

public import mozilla.xpcom.nsISupportsArray;

public import mozilla.dxpcom.nsISupportsArrayD;

public import mozilla.xpcom.nsIMsgFolder;

public import mozilla.dxpcom.nsIMsgFolderD;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;


/* starting wrapper class:    nsIImapProtocol */
class nsIImapProtocolD : public nsISupportsD {

  static const nsIID IID = NS_IIMAPPROTOCOL_IID;


  alias nsIImapProtocol InnerType;

  this(nsIImapProtocol intr){
    super(intr);
    this.inner = intr;
  }

  nsIImapProtocol opCast() {
    return inner;
  }

  void opAssign(nsIImapProtocol value) {
    inner = value;
  }

  /* void LoadImapUrl (in nsIURI aUrl, in nsISupports aConsumer); */
  void LoadImapUrl(nsIURID aUrl, nsISupportsD aConsumer){
    nsresult __result = inner.LoadImapUrl(aUrl ? cast(nsIURI)aUrl : null, aConsumer ? cast(nsISupports)aConsumer : null);
    CheckException(__result);
  }

  /* void IsBusy (out boolean aIsConnectionBusy, out boolean isInboxConnection); */
  void IsBusy(out PRBool aIsConnectionBusy, out PRBool isInboxConnection){
    nsresult __result = inner.IsBusy(&aIsConnectionBusy, &isInboxConnection);
    CheckException(__result);
  }

  /* void CanHandleUrl (in nsIImapUrl aImapUrl, out boolean aCanRunUrl, out boolean hasToWait); */
  void CanHandleUrl(nsIImapUrlD aImapUrl, out PRBool aCanRunUrl, out PRBool hasToWait){
    nsresult __result = inner.CanHandleUrl(aImapUrl ? cast(nsIImapUrl)aImapUrl : null, &aCanRunUrl, &hasToWait);
    CheckException(__result);
  }

  /* void Initialize (in nsIImapHostSessionList aHostSessionList, in nsIImapIncomingServer aServer, in nsIEventQueue aSinkEventQueue); */
  void Initialize(nsIImapHostSessionListD aHostSessionList, nsIImapIncomingServerD aServer, nsIEventQueueD aSinkEventQueue){
    nsresult __result = inner.Initialize(aHostSessionList ? cast(nsIImapHostSessionList)aHostSessionList : null, aServer ? cast(nsIImapIncomingServer)aServer : null, aSinkEventQueue ? cast(nsIEventQueue)aSinkEventQueue : null);
    CheckException(__result);
  }

  /* void NotifyHdrsToDownload (out unsigned long keys, in unsigned long keyCount); */
  void NotifyHdrsToDownload(out PRUint32 keys, PRUint32 keyCount){
    nsresult __result = inner.NotifyHdrsToDownload(&keys, keyCount);
    CheckException(__result);
  }

  /* void NotifyBodysToDownload (out unsigned long keys, in unsigned long count); */
  void NotifyBodysToDownload(out PRUint32 keys, PRUint32 count){
    nsresult __result = inner.NotifyBodysToDownload(&keys, count);
    CheckException(__result);
  }

  /* void GetFlagsForUID (in unsigned long uid, out boolean foundIt, out unsigned short flags, out string customFlags); */
  void GetFlagsForUID(PRUint32 uid, out PRBool foundIt, out PRUint16 flags, out char*customFlags){
    nsresult __result = inner.GetFlagsForUID(uid, &foundIt, &flags, &customFlags);
    CheckException(__result);
  }

  /* void GetSupportedUserFlags (out unsigned short flags); */
  void GetSupportedUserFlags(out PRUint16 flags){
    nsresult __result = inner.GetSupportedUserFlags(&flags);
    CheckException(__result);
  }

  /* void GetRunningImapURL (out nsIImapUrl aImapUrl); */
  void GetRunningImapURL(out nsIImapUrlD aImapUrl){
    nsIImapUrl _aImapUrl;
    nsresult __result = inner.GetRunningImapURL(&_aImapUrl);
    CheckException(__result);
    aImapUrl = _aImapUrl ? new nsIImapUrlD(_aImapUrl) : null;
  }

  /* void GetRunningUrl (out nsIURI aUrl); */
  void GetRunningUrl(out nsIURID aUrl){
    nsIURI _aUrl;
    nsresult __result = inner.GetRunningUrl(&_aUrl);
    CheckException(__result);
    aUrl = _aUrl ? new nsIURID(_aUrl) : null;
  }

  /* void TellThreadToDie (in boolean isSafeToDie); */
  void TellThreadToDie(PRBool isSafeToDie){
    nsresult __result = inner.TellThreadToDie(isSafeToDie);
    CheckException(__result);
  }

  /* void GetLastActiveTimeStamp (out PRTime aTimeStamp); */
  void GetLastActiveTimeStamp(out PRTime aTimeStamp){
    nsresult __result = inner.GetLastActiveTimeStamp(&aTimeStamp);
    CheckException(__result);
  }

  /* void pseudoInterruptMsgLoad (in nsIMsgFolder imapFolder, in nsIMsgWindow aMsgWindow, out boolean interrupted); */
  void PseudoInterruptMsgLoad(nsIMsgFolderD imapFolder, nsIMsgWindowD aMsgWindow, out PRBool interrupted){
    nsresult __result = inner.PseudoInterruptMsgLoad(imapFolder ? cast(nsIMsgFolder)imapFolder : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, &interrupted);
    CheckException(__result);
  }

  /* void GetSelectedMailboxName (out string folderName); */
  void GetSelectedMailboxName(out char*folderName){
    nsresult __result = inner.GetSelectedMailboxName(&folderName);
    CheckException(__result);
  }

  /* void ResetToAuthenticatedState (); */
  void ResetToAuthenticatedState(){
    nsresult __result = inner.ResetToAuthenticatedState();
    CheckException(__result);
  }

  /* void OverrideConnectionInfo (in wstring pHost, in unsigned short pPort, in string pCookieData); */
  void OverrideConnectionInfo(PRUnichar*pHost, PRUint16 pPort, char*pCookieData){
    nsresult __result = inner.OverrideConnectionInfo(pHost, pPort, pCookieData);
    CheckException(__result);
  }

private:
  nsIImapProtocol inner;

}

