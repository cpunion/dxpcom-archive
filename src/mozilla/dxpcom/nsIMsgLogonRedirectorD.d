/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgLogonRedirector.idl
 */

module mozilla.dxpcom.nsIMsgLogonRedirectorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgLogonRedirector;


public import mozilla.dxpcom.nsIMsgLogonRedirectorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIPrompt;

public import mozilla.dxpcom.nsIPromptD;


/* starting wrapper class:    nsMsgLogonRedirectionStates */
class nsMsgLogonRedirectionStatesD {

  static const nsIID IID = NS_MSGLOGONREDIRECTIONSTATES_IID;


  alias nsMsgLogonRedirectionStates InnerType;

  this(nsMsgLogonRedirectionStates intr){
    this.inner = intr;
  }

  nsMsgLogonRedirectionStates opCast() {
    return inner;
  }

  void opAssign(nsMsgLogonRedirectionStates value) {
    inner = value;
  }

  enum { Idle = 0 }

  enum { Connecting = 1 }

  enum { Negotiating = 2 }

  enum { Waiting = 3 }

  enum { Validating = 4 }

private:
  nsMsgLogonRedirectionStates inner;

}


/* starting wrapper class:    nsMsgLogonRedirectionServiceIDs */
class nsMsgLogonRedirectionServiceIDsD {

  static const nsIID IID = NS_MSGLOGONREDIRECTIONSERVICEIDS_IID;


  alias nsMsgLogonRedirectionServiceIDs InnerType;

  this(nsMsgLogonRedirectionServiceIDs intr){
    this.inner = intr;
  }

  nsMsgLogonRedirectionServiceIDs opCast() {
    return inner;
  }

  void opAssign(nsMsgLogonRedirectionServiceIDs value) {
    inner = value;
  }

  enum { Imap = 0 }

  enum { Smtp = 1 }

  enum { AbSync = 2 }

private:
  nsMsgLogonRedirectionServiceIDs inner;

}


/* starting wrapper class:    nsIMsgLogonRedirectionRequester */
class nsIMsgLogonRedirectionRequesterD : public nsISupportsD {

  static const nsIID IID = NS_IMSGLOGONREDIRECTIONREQUESTER_IID;


  alias nsIMsgLogonRedirectionRequester InnerType;

  this(nsIMsgLogonRedirectionRequester intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgLogonRedirectionRequester opCast() {
    return inner;
  }

  void opAssign(nsIMsgLogonRedirectionRequester value) {
    inner = value;
  }

  /* void OnLogonRedirectionError (in wstring pErrMsg, in boolean badPassword); */
  void OnLogonRedirectionError(PRUnichar*pErrMsg, PRBool badPassword){
    nsresult __result = inner.OnLogonRedirectionError(pErrMsg, badPassword);
    CheckException(__result);
  }

  /* void OnLogonRedirectionProgress (in nsMsgLogonRedirectionState pState); */
  void OnLogonRedirectionProgress(nsMsgLogonRedirectionState pState){
    nsresult __result = inner.OnLogonRedirectionProgress(pState);
    CheckException(__result);
  }

  /* void OnLogonRedirectionReply (in wstring pHost, in unsigned short pPort, in string pCookieData, in unsigned short pCookieSize); */
  void OnLogonRedirectionReply(PRUnichar*pHost, PRUint16 pPort, char*pCookieData, PRUint16 pCookieSize){
    nsresult __result = inner.OnLogonRedirectionReply(pHost, pPort, pCookieData, pCookieSize);
    CheckException(__result);
  }

private:
  nsIMsgLogonRedirectionRequester inner;

}


/* starting wrapper class:    nsIMsgLogonRedirector */
class nsIMsgLogonRedirectorD : public nsISupportsD {

  static const nsIID IID = NS_IMSGLOGONREDIRECTOR_IID;


  alias nsIMsgLogonRedirector InnerType;

  this(nsIMsgLogonRedirector intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgLogonRedirector opCast() {
    return inner;
  }

  void opAssign(nsIMsgLogonRedirector value) {
    inner = value;
  }

  /* boolean requiresPassword (in string aUserName, in string aRedirectorType); */
  PRBool RequiresPassword(char*aUserName, char*aRedirectorType){
    PRBool _retval;
    nsresult __result = inner.RequiresPassword(aUserName, aRedirectorType, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void logon (in string userName, in string password, in string redirectorType, in nsIPrompt aPrompt, in nsIMsgLogonRedirectionRequester listener, in nsMsgLogonRedirectionServiceID aServiceID); */
  void Logon(char*userName, char*password, char*redirectorType, nsIPromptD aPrompt, nsIMsgLogonRedirectionRequesterD listener, nsMsgLogonRedirectionServiceID aServiceID){
    nsresult __result = inner.Logon(userName, password, redirectorType, aPrompt ? cast(nsIPrompt)aPrompt : null, listener ? cast(nsIMsgLogonRedirectionRequester)listener : null, aServiceID);
    CheckException(__result);
  }

  /* void logoff (in string userName); */
  void Logoff(char*userName){
    nsresult __result = inner.Logoff(userName);
    CheckException(__result);
  }

private:
  nsIMsgLogonRedirector inner;

}

