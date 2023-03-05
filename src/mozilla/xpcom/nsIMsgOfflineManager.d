/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgOfflineManager.idl
 */

module mozilla.xpcom.nsIMsgOfflineManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */


/* starting interface:    nsIMsgOfflineManager */
const char[] NS_IMSGOFFLINEMANAGER_IID_STR = "5e885fec-09b0-11d5-a5bf-0060b0fc04b7";

const nsIID NS_IMSGOFFLINEMANAGER_IID= 
  {0x5e885fec, 0x09b0, 0x11d5, 
    [ 0xa5, 0xbf, 0x00, 0x60, 0xb0, 0xfc, 0x04, 0xb7 ]};

extern(Windows)
interface nsIMsgOfflineManager : nsISupports {
  static const char[] IID_STR = NS_IMSGOFFLINEMANAGER_IID_STR;
  static const nsIID IID = NS_IMSGOFFLINEMANAGER_IID;

  /* attribute nsIMsgWindow window; */
  nsresult GetWindow(nsIMsgWindow  *aWindow);
  nsresult SetWindow(nsIMsgWindow  aWindow);

  /* attribute boolean inProgress; */
  nsresult GetInProgress(PRBool *aInProgress);
  nsresult SetInProgress(PRBool aInProgress);

  /* void goOnline (in boolean sendUnsentMessages, in boolean playbackOfflineImapOperations, in nsIMsgWindow aMsgWindow); */
  nsresult GoOnline(PRBool sendUnsentMessages, PRBool playbackOfflineImapOperations, nsIMsgWindow aMsgWindow);

  /* void synchronizeForOffline (in boolean downloadNews, in boolean downloadMail, in boolean sendUnsentMessages, in boolean goOfflineWhenDone, in nsIMsgWindow aMsgWindow); */
  nsresult SynchronizeForOffline(PRBool downloadNews, PRBool downloadMail, PRBool sendUnsentMessages, PRBool goOfflineWhenDone, nsIMsgWindow aMsgWindow);

}

