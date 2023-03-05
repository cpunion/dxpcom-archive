/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPop3IncomingServer.idl
 */

module mozilla.dxpcom.nsIPop3IncomingServerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPop3IncomingServer;


public import mozilla.dxpcom.nsIPop3IncomingServerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIPop3Protocol;

public import mozilla.dxpcom.nsIPop3ProtocolD;

public import mozilla.xpcom.nsISupportsArray;

public import mozilla.dxpcom.nsISupportsArrayD;

public import mozilla.xpcom.nsIMsgFolder;

public import mozilla.dxpcom.nsIMsgFolderD;

public import mozilla.xpcom.nsIUrlListener;

public import mozilla.dxpcom.nsIUrlListenerD;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;


/* starting wrapper class:    nsIPop3IncomingServer */
class nsIPop3IncomingServerD : public nsISupportsD {

  static const nsIID IID = NS_IPOP3INCOMINGSERVER_IID;


  alias nsIPop3IncomingServer InnerType;

  this(nsIPop3IncomingServer intr){
    super(intr);
    this.inner = intr;
  }

  nsIPop3IncomingServer opCast() {
    return inner;
  }

  void opAssign(nsIPop3IncomingServer value) {
    inner = value;
  }

  /* attribute boolean leaveMessagesOnServer; */
  PRBool LeaveMessagesOnServer(){
    PRBool value;
    nsresult __result = inner.GetLeaveMessagesOnServer(&value);
    CheckException(__result);
    return value;
  }
  void LeaveMessagesOnServer(PRBool aLeaveMessagesOnServer){
    nsresult __result = inner.SetLeaveMessagesOnServer(aLeaveMessagesOnServer);
    CheckException(__result);
  }

  /* attribute boolean headersOnly; */
  PRBool HeadersOnly(){
    PRBool value;
    nsresult __result = inner.GetHeadersOnly(&value);
    CheckException(__result);
    return value;
  }
  void HeadersOnly(PRBool aHeadersOnly){
    nsresult __result = inner.SetHeadersOnly(aHeadersOnly);
    CheckException(__result);
  }

  /* attribute boolean deleteMailLeftOnServer; */
  PRBool DeleteMailLeftOnServer(){
    PRBool value;
    nsresult __result = inner.GetDeleteMailLeftOnServer(&value);
    CheckException(__result);
    return value;
  }
  void DeleteMailLeftOnServer(PRBool aDeleteMailLeftOnServer){
    nsresult __result = inner.SetDeleteMailLeftOnServer(aDeleteMailLeftOnServer);
    CheckException(__result);
  }

  /* attribute boolean authLogin; */
  PRBool AuthLogin(){
    PRBool value;
    nsresult __result = inner.GetAuthLogin(&value);
    CheckException(__result);
    return value;
  }
  void AuthLogin(PRBool aAuthLogin){
    nsresult __result = inner.SetAuthLogin(aAuthLogin);
    CheckException(__result);
  }

  /* attribute boolean dotFix; */
  PRBool DotFix(){
    PRBool value;
    nsresult __result = inner.GetDotFix(&value);
    CheckException(__result);
    return value;
  }
  void DotFix(PRBool aDotFix){
    nsresult __result = inner.SetDotFix(aDotFix);
    CheckException(__result);
  }

  /* attribute unsigned long pop3CapabilityFlags; */
  PRUint32 Pop3CapabilityFlags(){
    PRUint32 value;
    nsresult __result = inner.GetPop3CapabilityFlags(&value);
    CheckException(__result);
    return value;
  }
  void Pop3CapabilityFlags(PRUint32 aPop3CapabilityFlags){
    nsresult __result = inner.SetPop3CapabilityFlags(aPop3CapabilityFlags);
    CheckException(__result);
  }

  /* attribute boolean deleteByAgeFromServer; */
  PRBool DeleteByAgeFromServer(){
    PRBool value;
    nsresult __result = inner.GetDeleteByAgeFromServer(&value);
    CheckException(__result);
    return value;
  }
  void DeleteByAgeFromServer(PRBool aDeleteByAgeFromServer){
    nsresult __result = inner.SetDeleteByAgeFromServer(aDeleteByAgeFromServer);
    CheckException(__result);
  }

  /* attribute long numDaysToLeaveOnServer; */
  PRInt32 NumDaysToLeaveOnServer(){
    PRInt32 value;
    nsresult __result = inner.GetNumDaysToLeaveOnServer(&value);
    CheckException(__result);
    return value;
  }
  void NumDaysToLeaveOnServer(PRInt32 aNumDaysToLeaveOnServer){
    nsresult __result = inner.SetNumDaysToLeaveOnServer(aNumDaysToLeaveOnServer);
    CheckException(__result);
  }

  /* attribute nsIPop3Protocol runningProtocol; */
  nsIPop3ProtocolD  RunningProtocol(){
    nsIPop3Protocol value;
    nsresult __result = inner.GetRunningProtocol(&value);
    CheckException(__result);
    return new nsIPop3ProtocolD(value);
  }
  void RunningProtocol(nsIPop3ProtocolD  aRunningProtocol){
    nsIPop3Protocol value;
    nsresult __result = inner.SetRunningProtocol(value);
    CheckException(__result);
  }

  /* void addUidlToMark (in string aUidl, in PRInt32 newStatus); */
  void AddUidlToMark(char*aUidl, PRInt32 newStatus){
    nsresult __result = inner.AddUidlToMark(aUidl, newStatus);
    CheckException(__result);
  }

  /* void markMessages (); */
  void MarkMessages(){
    nsresult __result = inner.MarkMessages();
    CheckException(__result);
  }

  /* attribute boolean authenticated; */
  PRBool Authenticated(){
    PRBool value;
    nsresult __result = inner.GetAuthenticated(&value);
    CheckException(__result);
    return value;
  }
  void Authenticated(PRBool aAuthenticated){
    nsresult __result = inner.SetAuthenticated(aAuthenticated);
    CheckException(__result);
  }

  /* attribute string deferredToAccount; */
  char* DeferredToAccount(){
    char* value;
    nsresult __result = inner.GetDeferredToAccount(&value);
    CheckException(__result);
    return value;
  }
  void DeferredToAccount(char* aDeferredToAccount){
    nsresult __result = inner.SetDeferredToAccount(aDeferredToAccount);
    CheckException(__result);
  }

  /* attribute boolean deferGetNewMail; */
  PRBool DeferGetNewMail(){
    PRBool value;
    nsresult __result = inner.GetDeferGetNewMail(&value);
    CheckException(__result);
    return value;
  }
  void DeferGetNewMail(PRBool aDeferGetNewMail){
    nsresult __result = inner.SetDeferGetNewMail(aDeferGetNewMail);
    CheckException(__result);
  }

  /* void downloadMailFromServers (in nsISupportsArray aServers, in nsIMsgWindow aMsgWindow, in nsIMsgFolder aFolder, in nsIUrlListener aListener); */
  void DownloadMailFromServers(nsISupportsArrayD aServers, nsIMsgWindowD aMsgWindow, nsIMsgFolderD aFolder, nsIUrlListenerD aListener){
    nsresult __result = inner.DownloadMailFromServers(aServers ? cast(nsISupportsArray)aServers : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aFolder ? cast(nsIMsgFolder)aFolder : null, aListener ? cast(nsIUrlListener)aListener : null);
    CheckException(__result);
  }

private:
  nsIPop3IncomingServer inner;

}

