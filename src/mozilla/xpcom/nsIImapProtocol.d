/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImapProtocol.idl
 */

module mozilla.xpcom.nsIImapProtocol;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIStreamListener;

public import mozilla.xpcom.nsIUrlListener; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIImapUrl; /* forward declaration */

public import mozilla.xpcom.nsIEventQueue; /* forward declaration */

public import mozilla.xpcom.nsIImapProtocol; /* forward declaration */

public import mozilla.xpcom.nsIImapIncomingServer; /* forward declaration */

public import mozilla.xpcom.nsISupportsArray; /* forward declaration */

public import mozilla.xpcom.nsIMsgFolder; /* forward declaration */

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */


/* starting interface:    nsIImapProtocol */
const char[] NS_IIMAPPROTOCOL_IID_STR = "0f660d51-e3f1-4f80-86b5-66fa31732f2b";

const nsIID NS_IIMAPPROTOCOL_IID= 
  {0x0f660d51, 0xe3f1, 0x4f80, 
    [ 0x86, 0xb5, 0x66, 0xfa, 0x31, 0x73, 0x2f, 0x2b ]};

extern(Windows)
interface nsIImapProtocol : nsISupports {
  static const char[] IID_STR = NS_IIMAPPROTOCOL_IID_STR;
  static const nsIID IID = NS_IIMAPPROTOCOL_IID;

  /* void LoadImapUrl (in nsIURI aUrl, in nsISupports aConsumer); */
  nsresult LoadImapUrl(nsIURI aUrl, nsISupports aConsumer);

  /* void IsBusy (out boolean aIsConnectionBusy, out boolean isInboxConnection); */
  nsresult IsBusy(PRBool *aIsConnectionBusy, PRBool *isInboxConnection);

  /* void CanHandleUrl (in nsIImapUrl aImapUrl, out boolean aCanRunUrl, out boolean hasToWait); */
  nsresult CanHandleUrl(nsIImapUrl aImapUrl, PRBool *aCanRunUrl, PRBool *hasToWait);

  /* void Initialize (in nsIImapHostSessionList aHostSessionList, in nsIImapIncomingServer aServer, in nsIEventQueue aSinkEventQueue); */
  nsresult Initialize(nsIImapHostSessionList aHostSessionList, nsIImapIncomingServer aServer, nsIEventQueue aSinkEventQueue);

  /* void NotifyHdrsToDownload (out unsigned long keys, in unsigned long keyCount); */
  nsresult NotifyHdrsToDownload(PRUint32 *keys, PRUint32 keyCount);

  /* void NotifyBodysToDownload (out unsigned long keys, in unsigned long count); */
  nsresult NotifyBodysToDownload(PRUint32 *keys, PRUint32 count);

  /* void GetFlagsForUID (in unsigned long uid, out boolean foundIt, out unsigned short flags, out string customFlags); */
  nsresult GetFlagsForUID(PRUint32 uid, PRBool *foundIt, PRUint16 *flags, char **customFlags);

  /* void GetSupportedUserFlags (out unsigned short flags); */
  nsresult GetSupportedUserFlags(PRUint16 *flags);

  /* void GetRunningImapURL (out nsIImapUrl aImapUrl); */
  nsresult GetRunningImapURL(nsIImapUrl *aImapUrl);

  /* void GetRunningUrl (out nsIURI aUrl); */
  nsresult GetRunningUrl(nsIURI *aUrl);

  /* void TellThreadToDie (in boolean isSafeToDie); */
  nsresult TellThreadToDie(PRBool isSafeToDie);

  /* void GetLastActiveTimeStamp (out PRTime aTimeStamp); */
  nsresult GetLastActiveTimeStamp(PRTime *aTimeStamp);

  /* void pseudoInterruptMsgLoad (in nsIMsgFolder imapFolder, in nsIMsgWindow aMsgWindow, out boolean interrupted); */
  nsresult PseudoInterruptMsgLoad(nsIMsgFolder imapFolder, nsIMsgWindow aMsgWindow, PRBool *interrupted);

  /* void GetSelectedMailboxName (out string folderName); */
  nsresult GetSelectedMailboxName(char **folderName);

  /* void ResetToAuthenticatedState (); */
  nsresult ResetToAuthenticatedState();

  /* void OverrideConnectionInfo (in wstring pHost, in unsigned short pPort, in string pCookieData); */
  nsresult OverrideConnectionInfo(PRUnichar *pHost, PRUint16 pPort, char *pCookieData);

}

