/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPop3Sink.idl
 */

module mozilla.xpcom.nsIPop3Sink;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIPop3IncomingServer;
public import mozilla.xpcom.nsIMsgFolder;

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsIPop3Sink */
const char[] NS_IPOP3SINK_IID_STR = "ec54d490-bb00-11d2-ab5e-00805f8ac968";

const nsIID NS_IPOP3SINK_IID= 
  {0xec54d490, 0xbb00, 0x11d2, 
    [ 0xab, 0x5e, 0x00, 0x80, 0x5f, 0x8a, 0xc9, 0x68 ]};

extern(Windows)
interface nsIPop3Sink : nsISupports {
  static const char[] IID_STR = NS_IPOP3SINK_IID_STR;
  static const nsIID IID = NS_IPOP3SINK_IID;

  /* attribute boolean userAuthenticated; */
  nsresult GetUserAuthenticated(PRBool *aUserAuthenticated);
  nsresult SetUserAuthenticated(PRBool aUserAuthenticated);

  /* attribute string mailAccountURL; */
  nsresult GetMailAccountURL(char * *aMailAccountURL);
  nsresult SetMailAccountURL(char * aMailAccountURL);

  /* attribute boolean buildMessageUri; */
  nsresult GetBuildMessageUri(PRBool *aBuildMessageUri);
  nsresult SetBuildMessageUri(PRBool aBuildMessageUri);

  /* attribute string messageUri; */
  nsresult GetMessageUri(char * *aMessageUri);
  nsresult SetMessageUri(char * aMessageUri);

  /* attribute string baseMessageUri; */
  nsresult GetBaseMessageUri(char * *aBaseMessageUri);
  nsresult SetBaseMessageUri(char * aBaseMessageUri);

  /* boolean BeginMailDelivery (in boolean uidlDownload, in nsIMsgWindow msgWindow); */
  nsresult BeginMailDelivery(PRBool uidlDownload, nsIMsgWindow msgWindow, PRBool *_retval);

  /* void endMailDelivery (in nsIPop3Protocol protocol); */
  nsresult EndMailDelivery(nsIPop3Protocol protocol);

  /* void AbortMailDelivery (in nsIPop3Protocol protocol); */
  nsresult AbortMailDelivery(nsIPop3Protocol protocol);

  /* [noscript] voidPtr IncorporateBegin (in string uidlString, in nsIURI aURL, in unsigned long flags); */
  nsresult IncorporateBegin(char *uidlString, nsIURI aURL, PRUint32 flags, void * *_retval);

  /* [noscript] void IncorporateWrite (in string block, in long length); */
  nsresult IncorporateWrite(char *block, PRInt32 length);

  /* [noscript] void IncorporateComplete (in nsIMsgWindow aMsgWindow, in PRInt32 aSize); */
  nsresult IncorporateComplete(nsIMsgWindow aMsgWindow, PRInt32 aSize);

  /* [noscript] void IncorporateAbort (in boolean uidlDownload); */
  nsresult IncorporateAbort(PRBool uidlDownload);

  /* void BiffGetNewMail (); */
  nsresult BiffGetNewMail();

  /* void SetBiffStateAndUpdateFE (in unsigned long biffState, in long numNewMessages, in boolean notify); */
  nsresult SetBiffStateAndUpdateFE(PRUint32 biffState, PRInt32 numNewMessages, PRBool notify);

  /* [noscript] void SetSenderAuthedFlag (in voidPtr closure, in boolean authed); */
  nsresult SetSenderAuthedFlag(void * closure, PRBool authed);

  /* attribute nsIPop3IncomingServer popServer; */
  nsresult GetPopServer(nsIPop3IncomingServer  *aPopServer);
  nsresult SetPopServer(nsIPop3IncomingServer  aPopServer);

  /* attribute nsIMsgFolder folder; */
  nsresult GetFolder(nsIMsgFolder  *aFolder);
  nsresult SetFolder(nsIMsgFolder  aFolder);

}

