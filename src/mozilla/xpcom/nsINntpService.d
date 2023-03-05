/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINntpService.idl
 */

module mozilla.xpcom.nsINntpService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIUrlListener;
public import mozilla.xpcom.nsINntpIncomingServer;
public import mozilla.xpcom.MailNewsTypes2;
public import mozilla.xpcom.nsIMsgIdentity;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIStreamListener; /* forward declaration */

public import mozilla.xpcom.nsISupportsArray; /* forward declaration */

public import mozilla.xpcom.nsIFileSpec; /* forward declaration */

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */

public import mozilla.xpcom.nsIMsgFolder; /* forward declaration */

public import mozilla.xpcom.nsICacheSession; /* forward declaration */


/* starting interface:    nsINntpService */
const char[] NS_INNTPSERVICE_IID_STR = "4c9f90e0-e19b-11d2-806e-006008128c4e";

const nsIID NS_INNTPSERVICE_IID= 
  {0x4c9f90e0, 0xe19b, 0x11d2, 
    [ 0x80, 0x6e, 0x00, 0x60, 0x08, 0x12, 0x8c, 0x4e ]};

extern(Windows)
interface nsINntpService : nsISupports {
  static const char[] IID_STR = NS_INNTPSERVICE_IID_STR;
  static const nsIID IID = NS_INNTPSERVICE_IID;

  /* void generateNewsHeaderValsForPosting (in string newsgroupsList, out string newsgroupsHeaderVal, out string newshostHeaderVal); */
  nsresult GenerateNewsHeaderValsForPosting(char *newsgroupsList, char **newsgroupsHeaderVal, char **newshostHeaderVal);

  /* nsIURI postMessage (in nsIFileSpec fileToPost, in string newsgroupNames, in string aAccountKey, in nsIUrlListener aUrlListener, in nsIMsgWindow aMsgWindow); */
  nsresult PostMessage(nsIFileSpec fileToPost, char *newsgroupNames, char *aAccountKey, nsIUrlListener aUrlListener, nsIMsgWindow aMsgWindow, nsIURI *_retval);

  /* nsIURI getNewNews (in nsINntpIncomingServer nntpServer, in string uri, in boolean getOld, in nsIUrlListener aUrlListener, in nsIMsgWindow aMsgWindow); */
  nsresult GetNewNews(nsINntpIncomingServer nntpServer, char *uri, PRBool getOld, nsIUrlListener aUrlListener, nsIMsgWindow aMsgWindow, nsIURI *_retval);

  /* nsIURI cancelMessage (in string cancelURL, in string messageURI, in nsISupports aConsumer, in nsIUrlListener aUrlListener, in nsIMsgWindow aMsgWindow); */
  nsresult CancelMessage(char *cancelURL, char *messageURI, nsISupports aConsumer, nsIUrlListener aUrlListener, nsIMsgWindow aMsgWindow, nsIURI *_retval);

  /* void getListOfGroupsOnServer (in nsINntpIncomingServer nntpServer, in nsIMsgWindow aMsgWindow); */
  nsresult GetListOfGroupsOnServer(nsINntpIncomingServer nntpServer, nsIMsgWindow aMsgWindow);

  /* void updateCounts (in nsINntpIncomingServer nntpServer, in nsIMsgWindow aMsgWindow); */
  nsresult UpdateCounts(nsINntpIncomingServer nntpServer, nsIMsgWindow aMsgWindow);

  /* nsIURI fetchMessage (in nsIMsgFolder newsFolder, in nsMsgKey key, in nsIMsgWindow aMsgWindow, in nsISupports aConsumer, in nsIUrlListener aUrlListener); */
  nsresult FetchMessage(nsIMsgFolder newsFolder, nsMsgKey key, nsIMsgWindow aMsgWindow, nsISupports aConsumer, nsIUrlListener aUrlListener, nsIURI *_retval);

  /* void downloadNewsgroupsForOffline (in nsIMsgWindow aMsgWindow, in nsIUrlListener aListener); */
  nsresult DownloadNewsgroupsForOffline(nsIMsgWindow aMsgWindow, nsIUrlListener aListener);

  /** 
   * can handle news-message:// and news:// 
   */
  /* void decomposeNewsURI (in string uri, out nsIMsgFolder folder, out nsMsgKey key); */
  nsresult DecomposeNewsURI(char *uri, nsIMsgFolder *folder, nsMsgKey *key);

  /* readonly attribute nsICacheSession cacheSession; */
  nsresult GetCacheSession(nsICacheSession  *aCacheSession);

}

