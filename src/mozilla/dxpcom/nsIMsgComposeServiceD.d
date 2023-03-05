/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgComposeService.idl
 */

module mozilla.dxpcom.nsIMsgComposeServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgComposeService;


public import mozilla.dxpcom.nsIMsgComposeServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIMsgCompose;
public import mozilla.dxpcom.nsIMsgComposeD;
public import mozilla.xpcom.nsIMsgComposeParams;
public import mozilla.dxpcom.nsIMsgComposeParamsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIDOMWindowInternal;

public import mozilla.dxpcom.nsIDOMWindowInternalD;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;

public import mozilla.xpcom.nsIMsgIdentity;

public import mozilla.dxpcom.nsIMsgIdentityD;

public import mozilla.xpcom.nsIMsgIncomingServer;

public import mozilla.dxpcom.nsIMsgIncomingServerD;

public import mozilla.xpcom.nsIMsgHdr;

import mozilla.dxpcom.nsIMsgHdrD;


/* starting wrapper class:    nsIMsgComposeService */
class nsIMsgComposeServiceD : public nsISupportsD {

  static const nsIID IID = NS_IMSGCOMPOSESERVICE_IID;


  alias nsIMsgComposeService InnerType;

  this(nsIMsgComposeService intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgComposeService opCast() {
    return inner;
  }

  void opAssign(nsIMsgComposeService value) {
    inner = value;
  }

  /* void OpenComposeWindow (in string msgComposeWindowURL, in string originalMsgURI, in MSG_ComposeType type, in MSG_ComposeFormat format, in nsIMsgIdentity identity, in nsIMsgWindow aMsgWindow); */
  void OpenComposeWindow(char*msgComposeWindowURL, char*originalMsgURI, MSG_ComposeType type, MSG_ComposeFormat format, nsIMsgIdentityD identity, nsIMsgWindowD aMsgWindow){
    nsresult __result = inner.OpenComposeWindow(msgComposeWindowURL, originalMsgURI, type, format, identity ? cast(nsIMsgIdentity)identity : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null);
    CheckException(__result);
  }

  /* void OpenComposeWindowWithURI (in string msgComposeWindowURL, in nsIURI aURI); */
  void OpenComposeWindowWithURI(char*msgComposeWindowURL, nsIURID aURI){
    nsresult __result = inner.OpenComposeWindowWithURI(msgComposeWindowURL, aURI ? cast(nsIURI)aURI : null);
    CheckException(__result);
  }

  /* void OpenComposeWindowWithParams (in string msgComposeWindowURL, in nsIMsgComposeParams params); */
  void OpenComposeWindowWithParams(char*msgComposeWindowURL, nsIMsgComposeParamsD params){
    nsresult __result = inner.OpenComposeWindowWithParams(msgComposeWindowURL, params ? cast(nsIMsgComposeParams)params : null);
    CheckException(__result);
  }

  /* nsIMsgCompose InitCompose (in nsIDOMWindowInternal aWindow, in nsIMsgComposeParams params); */
  nsIMsgComposeD  InitCompose(nsIDOMWindowInternalD aWindow, nsIMsgComposeParamsD params){
    nsIMsgCompose _retval;
    nsresult __result = inner.InitCompose(aWindow ? cast(nsIDOMWindowInternal)aWindow : null, params ? cast(nsIMsgComposeParams)params : null, &_retval);
    CheckException(__result);
    return new nsIMsgComposeD(_retval);
  }

  /**
  * defaultIdentity
  *
  * @return the default identity, in case no identity has been setup yet, will return null
  */
  /* readonly attribute nsIMsgIdentity defaultIdentity; */
  nsIMsgIdentityD  DefaultIdentity(){
    nsIMsgIdentity value;
    nsresult __result = inner.GetDefaultIdentity(&value);
    CheckException(__result);
    return new nsIMsgIdentityD(value);
  }

  /* void TimeStamp (in string label, in boolean resetTime); */
  void TimeStamp(char*label, PRBool resetTime){
    nsresult __result = inner.TimeStamp(label, resetTime);
    CheckException(__result);
  }

  /* readonly attribute boolean logComposePerformance; */
  PRBool LogComposePerformance(){
    PRBool value;
    nsresult __result = inner.GetLogComposePerformance(&value);
    CheckException(__result);
    return value;
  }

  /* [noscript] boolean determineComposeHTML (in nsIMsgIdentity aIdentity, in MSG_ComposeFormat aFormat); */
  PRBool DetermineComposeHTML(nsIMsgIdentityD aIdentity, MSG_ComposeFormat aFormat){
    PRBool _retval;
    nsresult __result = inner.DetermineComposeHTML(aIdentity ? cast(nsIMsgIdentity)aIdentity : null, aFormat, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] void cacheWindow (in nsIDOMWindowInternal aWindow, in boolean aComposeHTML, in nsIMsgComposeRecyclingListener listener); */
  void CacheWindow(nsIDOMWindowInternalD aWindow, PRBool aComposeHTML, nsIMsgComposeRecyclingListenerD listener){
    nsresult __result = inner.CacheWindow(aWindow ? cast(nsIDOMWindowInternal)aWindow : null, aComposeHTML, listener ? cast(nsIMsgComposeRecyclingListener)listener : null);
    CheckException(__result);
  }

  /* boolean isCachedWindow (in nsIDOMWindowInternal aWindow); */
  PRBool IsCachedWindow(nsIDOMWindowInternalD aWindow){
    PRBool _retval;
    nsresult __result = inner.IsCachedWindow(aWindow ? cast(nsIDOMWindowInternal)aWindow : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /** 
   * given a mailto url, parse the attributes and turn them into a nsIMsgComposeParams object
   * @return nsIMsgComposeParams which corresponds to the passed in mailto url
   */
  /* nsIMsgComposeParams getParamsForMailto (in nsIURI aURI); */
  nsIMsgComposeParamsD  GetParamsForMailto(nsIURID aURI){
    nsIMsgComposeParams _retval;
    nsresult __result = inner.GetParamsForMailto(aURI ? cast(nsIURI)aURI : null, &_retval);
    CheckException(__result);
    return new nsIMsgComposeParamsD(_retval);
  }

  /* void forwardMessage (in AString forwardTo, in nsIMsgDBHdr aMsgHdr, in nsIMsgWindow aMsgWindow, in nsIMsgIncomingServer aServer); */
  void ForwardMessage(wchar[] forwardTo, nsIMsgDBHdrD aMsgHdr, nsIMsgWindowD aMsgWindow, nsIMsgIncomingServerD aServer){
    scope auto _forwardTo = new AString(forwardTo);
    nsresult __result = inner.ForwardMessage(cast(nsAString*)_forwardTo, aMsgHdr ? cast(nsIMsgDBHdr)aMsgHdr : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aServer ? cast(nsIMsgIncomingServer)aServer : null);
    CheckException(__result);
  }

  /* void replyWithTemplate (in nsIMsgDBHdr msgHdr, in string templateUri, in nsIMsgWindow aMsgWindow, in nsIMsgIncomingServer server); */
  void ReplyWithTemplate(nsIMsgDBHdrD msgHdr, char*templateUri, nsIMsgWindowD aMsgWindow, nsIMsgIncomingServerD server){
    nsresult __result = inner.ReplyWithTemplate(msgHdr ? cast(nsIMsgDBHdr)msgHdr : null, templateUri, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, server ? cast(nsIMsgIncomingServer)server : null);
    CheckException(__result);
  }

  /** 
   * Every open compose window registers itself with the compose service 
   * This allows consumers to get the msg compose object associated with a dom window
   *
   * @param aWindow The DOM Window 
   * @param aMsgCompose The compose object associated with the compose window
   *
   */
  /* void registerComposeWindow (in nsIDOMWindowInternal aWindow, in nsIMsgCompose aMsgCompose); */
  void RegisterComposeWindow(nsIDOMWindowInternalD aWindow, nsIMsgComposeD aMsgCompose){
    nsresult __result = inner.RegisterComposeWindow(aWindow ? cast(nsIDOMWindowInternal)aWindow : null, aMsgCompose ? cast(nsIMsgCompose)aMsgCompose : null);
    CheckException(__result);
  }

  /** 
   * When a compose window is being closed (or recyled), it unregisters itself
   * from the compose service. 
   *
   * @param aWindow The DOM Window 
   *
   */
  /* void unregisterComposeWindow (in nsIDOMWindowInternal aWindow); */
  void UnregisterComposeWindow(nsIDOMWindowInternalD aWindow){
    nsresult __result = inner.UnregisterComposeWindow(aWindow ? cast(nsIDOMWindowInternal)aWindow : null);
    CheckException(__result);
  }

  /**
   * For aWindow, returns the nsIMsgCompose object associated with the window.
   *
   * @param aWindow The DOMWindow associated with the compose window.
   *
   * @return NS_ERROR_FAILURE if we could not find a nsIMsgCompose for the passed in
   *         DOM Window.
   */
  /* nsIMsgCompose getMsgComposeForWindow (in nsIDOMWindowInternal aWindow); */
  nsIMsgComposeD  GetMsgComposeForWindow(nsIDOMWindowInternalD aWindow){
    nsIMsgCompose _retval;
    nsresult __result = inner.GetMsgComposeForWindow(aWindow ? cast(nsIDOMWindowInternal)aWindow : null, &_retval);
    CheckException(__result);
    return new nsIMsgComposeD(_retval);
  }

private:
  nsIMsgComposeService inner;

}

