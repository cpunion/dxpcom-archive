/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDownloadProgressListener.idl
 */

module mozilla.dxpcom.nsIDownloadProgressListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDownloadProgressListener;


public import mozilla.dxpcom.nsIDownloadProgressListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIWebProgress;

public import mozilla.dxpcom.nsIWebProgressD;

public import mozilla.xpcom.nsIRequest;

public import mozilla.dxpcom.nsIRequestD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIDownload;

public import mozilla.dxpcom.nsIDownloadD;

public import mozilla.xpcom.nsIDOMDocument;

public import mozilla.dxpcom.nsIDOMDocumentD;


/* starting wrapper class:    nsIDownloadProgressListener */
class nsIDownloadProgressListenerD : public nsISupportsD {

  static const nsIID IID = NS_IDOWNLOADPROGRESSLISTENER_IID;


  alias nsIDownloadProgressListener InnerType;

  this(nsIDownloadProgressListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIDownloadProgressListener opCast() {
    return inner;
  }

  void opAssign(nsIDownloadProgressListener value) {
    inner = value;
  }

  /**
  * document
  * The document of the download manager frontend.
  */
  /* attribute nsIDOMDocument document; */
  nsIDOMDocumentD  Document(){
    nsIDOMDocument value;
    nsresult __result = inner.GetDocument(&value);
    CheckException(__result);
    return new nsIDOMDocumentD(value);
  }
  void Document(nsIDOMDocumentD  aDocument){
    nsIDOMDocument value;
    nsresult __result = inner.SetDocument(value);
    CheckException(__result);
  }

  /* void onStateChange (in nsIWebProgress aWebProgress, in nsIRequest aRequest, in unsigned long aStateFlags, in nsresult aStatus, in nsIDownload aDownload); */
  void OnStateChange(nsIWebProgressD aWebProgress, nsIRequestD aRequest, PRUint32 aStateFlags, nsresult aStatus, nsIDownloadD aDownload){
    nsresult __result = inner.OnStateChange(aWebProgress ? cast(nsIWebProgress)aWebProgress : null, aRequest ? cast(nsIRequest)aRequest : null, aStateFlags, aStatus, aDownload ? cast(nsIDownload)aDownload : null);
    CheckException(__result);
  }

  /* void onProgressChange (in nsIWebProgress aWebProgress, in nsIRequest aRequest, in long long aCurSelfProgress, in long long aMaxSelfProgress, in long long aCurTotalProgress, in long long aMaxTotalProgress, in nsIDownload aDownload); */
  void OnProgressChange(nsIWebProgressD aWebProgress, nsIRequestD aRequest, PRInt64 aCurSelfProgress, PRInt64 aMaxSelfProgress, PRInt64 aCurTotalProgress, PRInt64 aMaxTotalProgress, nsIDownloadD aDownload){
    nsresult __result = inner.OnProgressChange(aWebProgress ? cast(nsIWebProgress)aWebProgress : null, aRequest ? cast(nsIRequest)aRequest : null, aCurSelfProgress, aMaxSelfProgress, aCurTotalProgress, aMaxTotalProgress, aDownload ? cast(nsIDownload)aDownload : null);
    CheckException(__result);
  }

  /* void onStatusChange (in nsIWebProgress aWebProgress, in nsIRequest aRequest, in nsresult aStatus, in wstring aMessage, in nsIDownload aDownload); */
  void OnStatusChange(nsIWebProgressD aWebProgress, nsIRequestD aRequest, nsresult aStatus, PRUnichar*aMessage, nsIDownloadD aDownload){
    nsresult __result = inner.OnStatusChange(aWebProgress ? cast(nsIWebProgress)aWebProgress : null, aRequest ? cast(nsIRequest)aRequest : null, aStatus, aMessage, aDownload ? cast(nsIDownload)aDownload : null);
    CheckException(__result);
  }

  /* void onLocationChange (in nsIWebProgress aWebProgress, in nsIRequest aRequest, in nsIURI aLocation, in nsIDownload aDownload); */
  void OnLocationChange(nsIWebProgressD aWebProgress, nsIRequestD aRequest, nsIURID aLocation, nsIDownloadD aDownload){
    nsresult __result = inner.OnLocationChange(aWebProgress ? cast(nsIWebProgress)aWebProgress : null, aRequest ? cast(nsIRequest)aRequest : null, aLocation ? cast(nsIURI)aLocation : null, aDownload ? cast(nsIDownload)aDownload : null);
    CheckException(__result);
  }

  /* void onSecurityChange (in nsIWebProgress aWebProgress, in nsIRequest aRequest, in unsigned long aState, in nsIDownload aDownload); */
  void OnSecurityChange(nsIWebProgressD aWebProgress, nsIRequestD aRequest, PRUint32 aState, nsIDownloadD aDownload){
    nsresult __result = inner.OnSecurityChange(aWebProgress ? cast(nsIWebProgress)aWebProgress : null, aRequest ? cast(nsIRequest)aRequest : null, aState, aDownload ? cast(nsIDownload)aDownload : null);
    CheckException(__result);
  }

private:
  nsIDownloadProgressListener inner;

}

