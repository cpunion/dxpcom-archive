/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPop3IncomingServer.idl
 */

module mozilla.xpcom.nsIPop3IncomingServer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIPop3Protocol; /* forward declaration */

public import mozilla.xpcom.nsISupportsArray; /* forward declaration */

public import mozilla.xpcom.nsIMsgFolder; /* forward declaration */

public import mozilla.xpcom.nsIUrlListener; /* forward declaration */

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */


/* starting interface:    nsIPop3IncomingServer */
const char[] NS_IPOP3INCOMINGSERVER_IID_STR = "dcae2877-b7e7-47e1-80ca-5a67de03ec4c";

const nsIID NS_IPOP3INCOMINGSERVER_IID= 
  {0xdcae2877, 0xb7e7, 0x47e1, 
    [ 0x80, 0xca, 0x5a, 0x67, 0xde, 0x03, 0xec, 0x4c ]};

extern(Windows)
interface nsIPop3IncomingServer : nsISupports {
  static const char[] IID_STR = NS_IPOP3INCOMINGSERVER_IID_STR;
  static const nsIID IID = NS_IPOP3INCOMINGSERVER_IID;

  /* attribute boolean leaveMessagesOnServer; */
  nsresult GetLeaveMessagesOnServer(PRBool *aLeaveMessagesOnServer);
  nsresult SetLeaveMessagesOnServer(PRBool aLeaveMessagesOnServer);

  /* attribute boolean headersOnly; */
  nsresult GetHeadersOnly(PRBool *aHeadersOnly);
  nsresult SetHeadersOnly(PRBool aHeadersOnly);

  /* attribute boolean deleteMailLeftOnServer; */
  nsresult GetDeleteMailLeftOnServer(PRBool *aDeleteMailLeftOnServer);
  nsresult SetDeleteMailLeftOnServer(PRBool aDeleteMailLeftOnServer);

  /* attribute boolean authLogin; */
  nsresult GetAuthLogin(PRBool *aAuthLogin);
  nsresult SetAuthLogin(PRBool aAuthLogin);

  /* attribute boolean dotFix; */
  nsresult GetDotFix(PRBool *aDotFix);
  nsresult SetDotFix(PRBool aDotFix);

  /* attribute unsigned long pop3CapabilityFlags; */
  nsresult GetPop3CapabilityFlags(PRUint32 *aPop3CapabilityFlags);
  nsresult SetPop3CapabilityFlags(PRUint32 aPop3CapabilityFlags);

  /* attribute boolean deleteByAgeFromServer; */
  nsresult GetDeleteByAgeFromServer(PRBool *aDeleteByAgeFromServer);
  nsresult SetDeleteByAgeFromServer(PRBool aDeleteByAgeFromServer);

  /* attribute long numDaysToLeaveOnServer; */
  nsresult GetNumDaysToLeaveOnServer(PRInt32 *aNumDaysToLeaveOnServer);
  nsresult SetNumDaysToLeaveOnServer(PRInt32 aNumDaysToLeaveOnServer);

  /* attribute nsIPop3Protocol runningProtocol; */
  nsresult GetRunningProtocol(nsIPop3Protocol  *aRunningProtocol);
  nsresult SetRunningProtocol(nsIPop3Protocol  aRunningProtocol);

  /* void addUidlToMark (in string aUidl, in PRInt32 newStatus); */
  nsresult AddUidlToMark(char *aUidl, PRInt32 newStatus);

  /* void markMessages (); */
  nsresult MarkMessages();

  /* attribute boolean authenticated; */
  nsresult GetAuthenticated(PRBool *aAuthenticated);
  nsresult SetAuthenticated(PRBool aAuthenticated);

  /* attribute string deferredToAccount; */
  nsresult GetDeferredToAccount(char * *aDeferredToAccount);
  nsresult SetDeferredToAccount(char * aDeferredToAccount);

  /* attribute boolean deferGetNewMail; */
  nsresult GetDeferGetNewMail(PRBool *aDeferGetNewMail);
  nsresult SetDeferGetNewMail(PRBool aDeferGetNewMail);

  /* void downloadMailFromServers (in nsISupportsArray aServers, in nsIMsgWindow aMsgWindow, in nsIMsgFolder aFolder, in nsIUrlListener aListener); */
  nsresult DownloadMailFromServers(nsISupportsArray aServers, nsIMsgWindow aMsgWindow, nsIMsgFolder aFolder, nsIUrlListener aListener);

}

