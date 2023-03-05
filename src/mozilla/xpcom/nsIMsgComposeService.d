/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgComposeService.idl
 */

module mozilla.xpcom.nsIMsgComposeService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIMsgCompose;
public import mozilla.xpcom.nsIMsgComposeParams;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIDOMWindowInternal; /* forward declaration */

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */

public import mozilla.xpcom.nsIMsgIdentity; /* forward declaration */

public import mozilla.xpcom.nsIMsgIncomingServer; /* forward declaration */

public import mozilla.xpcom.nsIMsgHdr;


/* starting interface:    nsIMsgComposeService */
const char[] NS_IMSGCOMPOSESERVICE_IID_STR = "bc1c0379-82ef-45ae-9710-dd4fa93252f7";

const nsIID NS_IMSGCOMPOSESERVICE_IID= 
  {0xbc1c0379, 0x82ef, 0x45ae, 
    [ 0x97, 0x10, 0xdd, 0x4f, 0xa9, 0x32, 0x52, 0xf7 ]};

extern(Windows)
interface nsIMsgComposeService : nsISupports {
  static const char[] IID_STR = NS_IMSGCOMPOSESERVICE_IID_STR;
  static const nsIID IID = NS_IMSGCOMPOSESERVICE_IID;

  /* void OpenComposeWindow (in string msgComposeWindowURL, in string originalMsgURI, in MSG_ComposeType type, in MSG_ComposeFormat format, in nsIMsgIdentity identity, in nsIMsgWindow aMsgWindow); */
  nsresult OpenComposeWindow(char *msgComposeWindowURL, char *originalMsgURI, MSG_ComposeType type, MSG_ComposeFormat format, nsIMsgIdentity identity, nsIMsgWindow aMsgWindow);

  /* void OpenComposeWindowWithURI (in string msgComposeWindowURL, in nsIURI aURI); */
  nsresult OpenComposeWindowWithURI(char *msgComposeWindowURL, nsIURI aURI);

  /* void OpenComposeWindowWithParams (in string msgComposeWindowURL, in nsIMsgComposeParams params); */
  nsresult OpenComposeWindowWithParams(char *msgComposeWindowURL, nsIMsgComposeParams params);

  /* nsIMsgCompose InitCompose (in nsIDOMWindowInternal aWindow, in nsIMsgComposeParams params); */
  nsresult InitCompose(nsIDOMWindowInternal aWindow, nsIMsgComposeParams params, nsIMsgCompose *_retval);

  /**
  * defaultIdentity
  *
  * @return the default identity, in case no identity has been setup yet, will return null
  */
  /* readonly attribute nsIMsgIdentity defaultIdentity; */
  nsresult GetDefaultIdentity(nsIMsgIdentity  *aDefaultIdentity);

  /* void TimeStamp (in string label, in boolean resetTime); */
  nsresult TimeStamp(char *label, PRBool resetTime);

  /* readonly attribute boolean logComposePerformance; */
  nsresult GetLogComposePerformance(PRBool *aLogComposePerformance);

  /* [noscript] boolean determineComposeHTML (in nsIMsgIdentity aIdentity, in MSG_ComposeFormat aFormat); */
  nsresult DetermineComposeHTML(nsIMsgIdentity aIdentity, MSG_ComposeFormat aFormat, PRBool *_retval);

  /* [noscript] void cacheWindow (in nsIDOMWindowInternal aWindow, in boolean aComposeHTML, in nsIMsgComposeRecyclingListener listener); */
  nsresult CacheWindow(nsIDOMWindowInternal aWindow, PRBool aComposeHTML, nsIMsgComposeRecyclingListener listener);

  /* boolean isCachedWindow (in nsIDOMWindowInternal aWindow); */
  nsresult IsCachedWindow(nsIDOMWindowInternal aWindow, PRBool *_retval);

  /** 
   * given a mailto url, parse the attributes and turn them into a nsIMsgComposeParams object
   * @return nsIMsgComposeParams which corresponds to the passed in mailto url
   */
  /* nsIMsgComposeParams getParamsForMailto (in nsIURI aURI); */
  nsresult GetParamsForMailto(nsIURI aURI, nsIMsgComposeParams *_retval);

  /* void forwardMessage (in AString forwardTo, in nsIMsgDBHdr aMsgHdr, in nsIMsgWindow aMsgWindow, in nsIMsgIncomingServer aServer); */
  nsresult ForwardMessage(nsAString * forwardTo, nsIMsgDBHdr aMsgHdr, nsIMsgWindow aMsgWindow, nsIMsgIncomingServer aServer);

  /* void replyWithTemplate (in nsIMsgDBHdr msgHdr, in string templateUri, in nsIMsgWindow aMsgWindow, in nsIMsgIncomingServer server); */
  nsresult ReplyWithTemplate(nsIMsgDBHdr msgHdr, char *templateUri, nsIMsgWindow aMsgWindow, nsIMsgIncomingServer server);

  /** 
   * Every open compose window registers itself with the compose service 
   * This allows consumers to get the msg compose object associated with a dom window
   *
   * @param aWindow The DOM Window 
   * @param aMsgCompose The compose object associated with the compose window
   *
   */
  /* void registerComposeWindow (in nsIDOMWindowInternal aWindow, in nsIMsgCompose aMsgCompose); */
  nsresult RegisterComposeWindow(nsIDOMWindowInternal aWindow, nsIMsgCompose aMsgCompose);

  /** 
   * When a compose window is being closed (or recyled), it unregisters itself
   * from the compose service. 
   *
   * @param aWindow The DOM Window 
   *
   */
  /* void unregisterComposeWindow (in nsIDOMWindowInternal aWindow); */
  nsresult UnregisterComposeWindow(nsIDOMWindowInternal aWindow);

  /**
   * For aWindow, returns the nsIMsgCompose object associated with the window.
   *
   * @param aWindow The DOMWindow associated with the compose window.
   *
   * @return NS_ERROR_FAILURE if we could not find a nsIMsgCompose for the passed in
   *         DOM Window.
   */
  /* nsIMsgCompose getMsgComposeForWindow (in nsIDOMWindowInternal aWindow); */
  nsresult GetMsgComposeForWindow(nsIDOMWindowInternal aWindow, nsIMsgCompose *_retval);

}

