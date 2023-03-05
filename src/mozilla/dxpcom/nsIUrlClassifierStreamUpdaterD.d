/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUrlClassifierStreamUpdater.idl
 */

module mozilla.dxpcom.nsIUrlClassifierStreamUpdaterD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIUrlClassifierStreamUpdater;


public import mozilla.dxpcom.nsIUrlClassifierStreamUpdaterD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIUrlClassifierDBService;
public import mozilla.dxpcom.nsIUrlClassifierDBServiceD;


/* starting wrapper class:    nsIUrlClassifierStreamUpdater */
/**
 * This is a class to manage large table updates from the server.  Rather than
 * downloading the whole update and then updating the sqlite database, we
 * update tables as the data is streaming in.
 */
class nsIUrlClassifierStreamUpdaterD : public nsISupportsD {

  static const nsIID IID = NS_IURLCLASSIFIERSTREAMUPDATER_IID;


  alias nsIUrlClassifierStreamUpdater InnerType;

  this(nsIUrlClassifierStreamUpdater intr){
    super(intr);
    this.inner = intr;
  }

  nsIUrlClassifierStreamUpdater opCast() {
    return inner;
  }

  void opAssign(nsIUrlClassifierStreamUpdater value) {
    inner = value;
  }

  /**
   * The Url to download from.  Should be plain ascii text.
   */
  /* attribute ACString updateUrl; */
  char[] UpdateUrl(){
    scope auto value = new ACString();
    nsresult __result = inner.GetUpdateUrl(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void UpdateUrl(char[] aUpdateUrl){
    scope auto value = new ACString(aUpdateUrl);
    nsresult __result = inner.SetUpdateUrl(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
   * Try to download updates from updateUrl.  Only one instance of this
   * runs at a time, so we return false if another instance is already
   * running.
   * @param aTableCallback Called once for each table that we successfully
   *     download with the table header as the parameter.
   * @param aErrorCallback Called if we get an http error or a connection
   *   refused.
   */
  /* boolean downloadUpdates (in nsIUrlClassifierCallback aTableCallback, in nsIUrlClassifierCallback aErrorCallback); */
  PRBool DownloadUpdates(nsIUrlClassifierCallbackD aTableCallback, nsIUrlClassifierCallbackD aErrorCallback){
    PRBool _retval;
    nsresult __result = inner.DownloadUpdates(aTableCallback ? cast(nsIUrlClassifierCallback)aTableCallback : null, aErrorCallback ? cast(nsIUrlClassifierCallback)aErrorCallback : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIUrlClassifierStreamUpdater inner;

}

