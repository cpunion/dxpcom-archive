/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgLogonRedirector.idl
 */

module mozilla.xpcom.nsIMsgLogonRedirector;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

alias PRInt32 nsMsgLogonRedirectionState;

public import mozilla.xpcom.nsIPrompt; /* forward declaration */


/* starting interface:    nsMsgLogonRedirectionStates */
const char[] NS_MSGLOGONREDIRECTIONSTATES_IID_STR = "e20261f6-df4f-11d3-b9f9-00108335942a";

const nsIID NS_MSGLOGONREDIRECTIONSTATES_IID= 
  {0xe20261f6, 0xdf4f, 0x11d3, 
    [ 0xb9, 0xf9, 0x00, 0x10, 0x83, 0x35, 0x94, 0x2a ]};

extern(Windows)
interface nsMsgLogonRedirectionStates {
  static const char[] IID_STR = NS_MSGLOGONREDIRECTIONSTATES_IID_STR;
  static const nsIID IID = NS_MSGLOGONREDIRECTIONSTATES_IID;

  enum { Idle = 0 };

  enum { Connecting = 1 };

  enum { Negotiating = 2 };

  enum { Waiting = 3 };

  enum { Validating = 4 };

}

alias PRInt32 nsMsgLogonRedirectionServiceID;


/* starting interface:    nsMsgLogonRedirectionServiceIDs */
const char[] NS_MSGLOGONREDIRECTIONSERVICEIDS_IID_STR = "182cb845-eb0d-11d3-98b7-001083010e9b";

const nsIID NS_MSGLOGONREDIRECTIONSERVICEIDS_IID= 
  {0x182cb845, 0xeb0d, 0x11d3, 
    [ 0x98, 0xb7, 0x00, 0x10, 0x83, 0x01, 0x0e, 0x9b ]};

extern(Windows)
interface nsMsgLogonRedirectionServiceIDs {
  static const char[] IID_STR = NS_MSGLOGONREDIRECTIONSERVICEIDS_IID_STR;
  static const nsIID IID = NS_MSGLOGONREDIRECTIONSERVICEIDS_IID;

  enum { Imap = 0 };

  enum { Smtp = 1 };

  enum { AbSync = 2 };

}


/* starting interface:    nsIMsgLogonRedirectionRequester */
const char[] NS_IMSGLOGONREDIRECTIONREQUESTER_IID_STR = "3c882b66-df4f-11d3-b9f9-00108335942a";

const nsIID NS_IMSGLOGONREDIRECTIONREQUESTER_IID= 
  {0x3c882b66, 0xdf4f, 0x11d3, 
    [ 0xb9, 0xf9, 0x00, 0x10, 0x83, 0x35, 0x94, 0x2a ]};

extern(Windows)
interface nsIMsgLogonRedirectionRequester : nsISupports {
  static const char[] IID_STR = NS_IMSGLOGONREDIRECTIONREQUESTER_IID_STR;
  static const nsIID IID = NS_IMSGLOGONREDIRECTIONREQUESTER_IID;

  /* void OnLogonRedirectionError (in wstring pErrMsg, in boolean badPassword); */
  nsresult OnLogonRedirectionError(PRUnichar *pErrMsg, PRBool badPassword);

  /* void OnLogonRedirectionProgress (in nsMsgLogonRedirectionState pState); */
  nsresult OnLogonRedirectionProgress(nsMsgLogonRedirectionState pState);

  /* void OnLogonRedirectionReply (in wstring pHost, in unsigned short pPort, in string pCookieData, in unsigned short pCookieSize); */
  nsresult OnLogonRedirectionReply(PRUnichar *pHost, PRUint16 pPort, char *pCookieData, PRUint16 pCookieSize);

}


/* starting interface:    nsIMsgLogonRedirector */
const char[] NS_IMSGLOGONREDIRECTOR_IID_STR = "0c2e96ac-e0ae-11d3-a560-0060b0fc04b7";

const nsIID NS_IMSGLOGONREDIRECTOR_IID= 
  {0x0c2e96ac, 0xe0ae, 0x11d3, 
    [ 0xa5, 0x60, 0x00, 0x60, 0xb0, 0xfc, 0x04, 0xb7 ]};

extern(Windows)
interface nsIMsgLogonRedirector : nsISupports {
  static const char[] IID_STR = NS_IMSGLOGONREDIRECTOR_IID_STR;
  static const nsIID IID = NS_IMSGLOGONREDIRECTOR_IID;

  /* boolean requiresPassword (in string aUserName, in string aRedirectorType); */
  nsresult RequiresPassword(char *aUserName, char *aRedirectorType, PRBool *_retval);

  /* void logon (in string userName, in string password, in string redirectorType, in nsIPrompt aPrompt, in nsIMsgLogonRedirectionRequester listener, in nsMsgLogonRedirectionServiceID aServiceID); */
  nsresult Logon(char *userName, char *password, char *redirectorType, nsIPrompt aPrompt, nsIMsgLogonRedirectionRequester listener, nsMsgLogonRedirectionServiceID aServiceID);

  /* void logoff (in string userName); */
  nsresult Logoff(char *userName);

}

