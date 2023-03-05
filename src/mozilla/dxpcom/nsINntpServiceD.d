/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINntpService.idl
 */

module mozilla.dxpcom.nsINntpServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsINntpService;


public import mozilla.dxpcom.nsINntpServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIUrlListener;
public import mozilla.dxpcom.nsIUrlListenerD;
public import mozilla.xpcom.nsINntpIncomingServer;
public import mozilla.dxpcom.nsINntpIncomingServerD;
public import mozilla.xpcom.MailNewsTypes2;
public import mozilla.dxpcom.MailNewsTypes2D;
public import mozilla.xpcom.nsIMsgIdentity;
public import mozilla.dxpcom.nsIMsgIdentityD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIStreamListener;

public import mozilla.dxpcom.nsIStreamListenerD;

public import mozilla.xpcom.nsISupportsArray;

public import mozilla.dxpcom.nsISupportsArrayD;

public import mozilla.xpcom.nsIFileSpec;

public import mozilla.dxpcom.nsIFileSpecD;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;

public import mozilla.xpcom.nsIMsgFolder;

public import mozilla.dxpcom.nsIMsgFolderD;

public import mozilla.xpcom.nsICacheSession;

public import mozilla.dxpcom.nsICacheSessionD;


/* starting wrapper class:    nsINntpService */
class nsINntpServiceD : public nsISupportsD {

  static const nsIID IID = NS_INNTPSERVICE_IID;


  alias nsINntpService InnerType;

  this(nsINntpService intr){
    super(intr);
    this.inner = intr;
  }

  nsINntpService opCast() {
    return inner;
  }

  void opAssign(nsINntpService value) {
    inner = value;
  }

  /* void generateNewsHeaderValsForPosting (in string newsgroupsList, out string newsgroupsHeaderVal, out string newshostHeaderVal); */
  void GenerateNewsHeaderValsForPosting(char*newsgroupsList, out char*newsgroupsHeaderVal, out char*newshostHeaderVal){
    nsresult __result = inner.GenerateNewsHeaderValsForPosting(newsgroupsList, &newsgroupsHeaderVal, &newshostHeaderVal);
    CheckException(__result);
  }

  /* nsIURI postMessage (in nsIFileSpec fileToPost, in string newsgroupNames, in string aAccountKey, in nsIUrlListener aUrlListener, in nsIMsgWindow aMsgWindow); */
  nsIURID  PostMessage(nsIFileSpecD fileToPost, char*newsgroupNames, char*aAccountKey, nsIUrlListenerD aUrlListener, nsIMsgWindowD aMsgWindow){
    nsIURI _retval;
    nsresult __result = inner.PostMessage(fileToPost ? cast(nsIFileSpec)fileToPost : null, newsgroupNames, aAccountKey, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /* nsIURI getNewNews (in nsINntpIncomingServer nntpServer, in string uri, in boolean getOld, in nsIUrlListener aUrlListener, in nsIMsgWindow aMsgWindow); */
  nsIURID  GetNewNews(nsINntpIncomingServerD nntpServer, char*uri, PRBool getOld, nsIUrlListenerD aUrlListener, nsIMsgWindowD aMsgWindow){
    nsIURI _retval;
    nsresult __result = inner.GetNewNews(nntpServer ? cast(nsINntpIncomingServer)nntpServer : null, uri, getOld, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /* nsIURI cancelMessage (in string cancelURL, in string messageURI, in nsISupports aConsumer, in nsIUrlListener aUrlListener, in nsIMsgWindow aMsgWindow); */
  nsIURID  CancelMessage(char*cancelURL, char*messageURI, nsISupportsD aConsumer, nsIUrlListenerD aUrlListener, nsIMsgWindowD aMsgWindow){
    nsIURI _retval;
    nsresult __result = inner.CancelMessage(cancelURL, messageURI, aConsumer ? cast(nsISupports)aConsumer : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /* void getListOfGroupsOnServer (in nsINntpIncomingServer nntpServer, in nsIMsgWindow aMsgWindow); */
  void GetListOfGroupsOnServer(nsINntpIncomingServerD nntpServer, nsIMsgWindowD aMsgWindow){
    nsresult __result = inner.GetListOfGroupsOnServer(nntpServer ? cast(nsINntpIncomingServer)nntpServer : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null);
    CheckException(__result);
  }

  /* void updateCounts (in nsINntpIncomingServer nntpServer, in nsIMsgWindow aMsgWindow); */
  void UpdateCounts(nsINntpIncomingServerD nntpServer, nsIMsgWindowD aMsgWindow){
    nsresult __result = inner.UpdateCounts(nntpServer ? cast(nsINntpIncomingServer)nntpServer : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null);
    CheckException(__result);
  }

  /* nsIURI fetchMessage (in nsIMsgFolder newsFolder, in nsMsgKey key, in nsIMsgWindow aMsgWindow, in nsISupports aConsumer, in nsIUrlListener aUrlListener); */
  nsIURID  FetchMessage(nsIMsgFolderD newsFolder, nsMsgKey key, nsIMsgWindowD aMsgWindow, nsISupportsD aConsumer, nsIUrlListenerD aUrlListener){
    nsIURI _retval;
    nsresult __result = inner.FetchMessage(newsFolder ? cast(nsIMsgFolder)newsFolder : null, key, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aConsumer ? cast(nsISupports)aConsumer : null, aUrlListener ? cast(nsIUrlListener)aUrlListener : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /* void downloadNewsgroupsForOffline (in nsIMsgWindow aMsgWindow, in nsIUrlListener aListener); */
  void DownloadNewsgroupsForOffline(nsIMsgWindowD aMsgWindow, nsIUrlListenerD aListener){
    nsresult __result = inner.DownloadNewsgroupsForOffline(aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aListener ? cast(nsIUrlListener)aListener : null);
    CheckException(__result);
  }

  /** 
   * can handle news-message:// and news:// 
   */
  /* void decomposeNewsURI (in string uri, out nsIMsgFolder folder, out nsMsgKey key); */
  void DecomposeNewsURI(char*uri, out nsIMsgFolderD folder, out nsMsgKey key){
    nsIMsgFolder _folder;
    nsresult __result = inner.DecomposeNewsURI(uri, &_folder, &key);
    CheckException(__result);
    folder = _folder ? new nsIMsgFolderD(_folder) : null;
  }

  /* readonly attribute nsICacheSession cacheSession; */
  nsICacheSessionD  CacheSession(){
    nsICacheSession value;
    nsresult __result = inner.GetCacheSession(&value);
    CheckException(__result);
    return new nsICacheSessionD(value);
  }

private:
  nsINntpService inner;

}

