/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINewsBlogFeedDownloader.idl
 */

module mozilla.xpcom.nsINewsBlogFeedDownloader;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIMsgFolder; /* forward declaration */

public import mozilla.xpcom.nsIUrlListener; /* forward declaration */

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */


/* starting interface:    nsINewsBlogFeedDownloader */
const char[] NS_INEWSBLOGFEEDDOWNLOADER_IID_STR = "c1c47796-c8b0-4d12-97aa-c93883ea1c97";

const nsIID NS_INEWSBLOGFEEDDOWNLOADER_IID= 
  {0xc1c47796, 0xc8b0, 0x4d12, 
    [ 0x97, 0xaa, 0xc9, 0x38, 0x83, 0xea, 0x1c, 0x97 ]};

extern(Windows)
interface nsINewsBlogFeedDownloader : nsISupports {
  static const char[] IID_STR = NS_INEWSBLOGFEEDDOWNLOADER_IID_STR;
  static const nsIID IID = NS_INEWSBLOGFEEDDOWNLOADER_IID;

  /* void downloadFeed (in string aUrl, in nsIMsgFolder aFolder, in boolean aQuickMode, in wstring aTitle, in nsIUrlListener aUrlListener, in nsIMsgWindow aMsgWindow); */
  nsresult DownloadFeed(char *aUrl, nsIMsgFolder aFolder, PRBool aQuickMode, PRUnichar *aTitle, nsIUrlListener aUrlListener, nsIMsgWindow aMsgWindow);

  /* void subscribeToFeed (in string aUrl, in nsIMsgFolder aFolder, in nsIMsgWindow aMsgWindow); */
  nsresult SubscribeToFeed(char *aUrl, nsIMsgFolder aFolder, nsIMsgWindow aMsgWindow);

  /* void updateSubscriptionsDS (in nsIMsgFolder aFolder, in boolean aUnsubscribe); */
  nsresult UpdateSubscriptionsDS(nsIMsgFolder aFolder, PRBool aUnsubscribe);

}

