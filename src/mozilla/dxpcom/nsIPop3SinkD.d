/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPop3Sink.idl
 */

module mozilla.dxpcom.nsIPop3SinkD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPop3Sink;


public import mozilla.dxpcom.nsIPop3SinkD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIPop3IncomingServer;
public import mozilla.dxpcom.nsIPop3IncomingServerD;
public import mozilla.xpcom.nsIMsgFolder;
public import mozilla.dxpcom.nsIMsgFolderD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIPop3Sink */
class nsIPop3SinkD : public nsISupportsD {

  static const nsIID IID = NS_IPOP3SINK_IID;


  alias nsIPop3Sink InnerType;

  this(nsIPop3Sink intr){
    super(intr);
    this.inner = intr;
  }

  nsIPop3Sink opCast() {
    return inner;
  }

  void opAssign(nsIPop3Sink value) {
    inner = value;
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

  /* attribute string mailAccountURL; */
  char* MailAccountURL(){
    char* value;
    nsresult __result = inner.GetMailAccountURL(&value);
    CheckException(__result);
    return value;
  }
  void MailAccountURL(char* aMailAccountURL){
    nsresult __result = inner.SetMailAccountURL(aMailAccountURL);
    CheckException(__result);
  }

  /* attribute boolean buildMessageUri; */
  PRBool BuildMessageUri(){
    PRBool value;
    nsresult __result = inner.GetBuildMessageUri(&value);
    CheckException(__result);
    return value;
  }
  void BuildMessageUri(PRBool aBuildMessageUri){
    nsresult __result = inner.SetBuildMessageUri(aBuildMessageUri);
    CheckException(__result);
  }

  /* attribute string messageUri; */
  char* MessageUri(){
    char* value;
    nsresult __result = inner.GetMessageUri(&value);
    CheckException(__result);
    return value;
  }
  void MessageUri(char* aMessageUri){
    nsresult __result = inner.SetMessageUri(aMessageUri);
    CheckException(__result);
  }

  /* attribute string baseMessageUri; */
  char* BaseMessageUri(){
    char* value;
    nsresult __result = inner.GetBaseMessageUri(&value);
    CheckException(__result);
    return value;
  }
  void BaseMessageUri(char* aBaseMessageUri){
    nsresult __result = inner.SetBaseMessageUri(aBaseMessageUri);
    CheckException(__result);
  }

  /* boolean BeginMailDelivery (in boolean uidlDownload, in nsIMsgWindow msgWindow); */
  PRBool BeginMailDelivery(PRBool uidlDownload, nsIMsgWindowD msgWindow){
    PRBool _retval;
    nsresult __result = inner.BeginMailDelivery(uidlDownload, msgWindow ? cast(nsIMsgWindow)msgWindow : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void endMailDelivery (in nsIPop3Protocol protocol); */
  void EndMailDelivery(nsIPop3ProtocolD protocol){
    nsresult __result = inner.EndMailDelivery(protocol ? cast(nsIPop3Protocol)protocol : null);
    CheckException(__result);
  }

  /* void AbortMailDelivery (in nsIPop3Protocol protocol); */
  void AbortMailDelivery(nsIPop3ProtocolD protocol){
    nsresult __result = inner.AbortMailDelivery(protocol ? cast(nsIPop3Protocol)protocol : null);
    CheckException(__result);
  }

  /* [noscript] voidPtr IncorporateBegin (in string uidlString, in nsIURI aURL, in unsigned long flags); */
  void * IncorporateBegin(char*uidlString, nsIURID aURL, PRUint32 flags){
void * _retval;
    nsresult __result = inner.IncorporateBegin(uidlString, aURL ? cast(nsIURI)aURL : null, flags, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] void IncorporateWrite (in string block, in long length); */
  void IncorporateWrite(char*block, PRInt32 length){
    nsresult __result = inner.IncorporateWrite(block, length);
    CheckException(__result);
  }

  /* [noscript] void IncorporateComplete (in nsIMsgWindow aMsgWindow, in PRInt32 aSize); */
  void IncorporateComplete(nsIMsgWindowD aMsgWindow, PRInt32 aSize){
    nsresult __result = inner.IncorporateComplete(aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aSize);
    CheckException(__result);
  }

  /* [noscript] void IncorporateAbort (in boolean uidlDownload); */
  void IncorporateAbort(PRBool uidlDownload){
    nsresult __result = inner.IncorporateAbort(uidlDownload);
    CheckException(__result);
  }

  /* void BiffGetNewMail (); */
  void BiffGetNewMail(){
    nsresult __result = inner.BiffGetNewMail();
    CheckException(__result);
  }

  /* void SetBiffStateAndUpdateFE (in unsigned long biffState, in long numNewMessages, in boolean notify); */
  void SetBiffStateAndUpdateFE(PRUint32 biffState, PRInt32 numNewMessages, PRBool notify){
    nsresult __result = inner.SetBiffStateAndUpdateFE(biffState, numNewMessages, notify);
    CheckException(__result);
  }

  /* [noscript] void SetSenderAuthedFlag (in voidPtr closure, in boolean authed); */
  void SetSenderAuthedFlag(void * closure, PRBool authed){
    nsresult __result = inner.SetSenderAuthedFlag(closure, authed);
    CheckException(__result);
  }

  /* attribute nsIPop3IncomingServer popServer; */
  nsIPop3IncomingServerD  PopServer(){
    nsIPop3IncomingServer value;
    nsresult __result = inner.GetPopServer(&value);
    CheckException(__result);
    return new nsIPop3IncomingServerD(value);
  }
  void PopServer(nsIPop3IncomingServerD  aPopServer){
    nsIPop3IncomingServer value;
    nsresult __result = inner.SetPopServer(value);
    CheckException(__result);
  }

  /* attribute nsIMsgFolder folder; */
  nsIMsgFolderD  Folder(){
    nsIMsgFolder value;
    nsresult __result = inner.GetFolder(&value);
    CheckException(__result);
    return new nsIMsgFolderD(value);
  }
  void Folder(nsIMsgFolderD  aFolder){
    nsIMsgFolder value;
    nsresult __result = inner.SetFolder(value);
    CheckException(__result);
  }

private:
  nsIPop3Sink inner;

}

