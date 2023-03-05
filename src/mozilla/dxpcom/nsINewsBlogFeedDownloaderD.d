/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINewsBlogFeedDownloader.idl
 */

module mozilla.dxpcom.nsINewsBlogFeedDownloaderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsINewsBlogFeedDownloader;


public import mozilla.dxpcom.nsINewsBlogFeedDownloaderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIMsgFolder;

public import mozilla.dxpcom.nsIMsgFolderD;

public import mozilla.xpcom.nsIUrlListener;

public import mozilla.dxpcom.nsIUrlListenerD;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;


/* starting wrapper class:    nsINewsBlogFeedDownloader */
class nsINewsBlogFeedDownloaderD : public nsISupportsD {

  static const nsIID IID = NS_INEWSBLOGFEEDDOWNLOADER_IID;


  alias nsINewsBlogFeedDownloader InnerType;

  this(nsINewsBlogFeedDownloader intr){
    super(intr);
    this.inner = intr;
  }

  nsINewsBlogFeedDownloader opCast() {
    return inner;
  }

  void opAssign(nsINewsBlogFeedDownloader value) {
    inner = value;
  }

  /* void downloadFeed (in string aUrl, in nsIMsgFolder aFolder, in boolean aQuickMode, in wstring aTitle, in nsIUrlListener aUrlListener, in nsIMsgWindow aMsgWindow); */
  void DownloadFeed(char*aUrl, nsIMsgFolderD aFolder, PRBool aQuickMode, PRUnichar*aTitle, nsIUrlListenerD aUrlListener, nsIMsgWindowD aMsgWindow){
    nsresult __result = inner.DownloadFeed(aUrl, aFolder ? cast(nsIMsgFolder)aFolder : null, aQuickMode, aTitle, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null);
    CheckException(__result);
  }

  /* void subscribeToFeed (in string aUrl, in nsIMsgFolder aFolder, in nsIMsgWindow aMsgWindow); */
  void SubscribeToFeed(char*aUrl, nsIMsgFolderD aFolder, nsIMsgWindowD aMsgWindow){
    nsresult __result = inner.SubscribeToFeed(aUrl, aFolder ? cast(nsIMsgFolder)aFolder : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null);
    CheckException(__result);
  }

  /* void updateSubscriptionsDS (in nsIMsgFolder aFolder, in boolean aUnsubscribe); */
  void UpdateSubscriptionsDS(nsIMsgFolderD aFolder, PRBool aUnsubscribe){
    nsresult __result = inner.UpdateSubscriptionsDS(aFolder ? cast(nsIMsgFolder)aFolder : null, aUnsubscribe);
    CheckException(__result);
  }

private:
  nsINewsBlogFeedDownloader inner;

}

