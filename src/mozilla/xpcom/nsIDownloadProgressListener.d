/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDownloadProgressListener.idl
 */

module mozilla.xpcom.nsIDownloadProgressListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIWebProgress; /* forward declaration */

public import mozilla.xpcom.nsIRequest; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIDownload; /* forward declaration */

public import mozilla.xpcom.nsIDOMDocument; /* forward declaration */


/* starting interface:    nsIDownloadProgressListener */
const char[] NS_IDOWNLOADPROGRESSLISTENER_IID_STR = "c7e22278-53a7-49d9-999f-0e7861738b50";

const nsIID NS_IDOWNLOADPROGRESSLISTENER_IID= 
  {0xc7e22278, 0x53a7, 0x49d9, 
    [ 0x99, 0x9f, 0x0e, 0x78, 0x61, 0x73, 0x8b, 0x50 ]};

extern(Windows)
interface nsIDownloadProgressListener : nsISupports {
  static const char[] IID_STR = NS_IDOWNLOADPROGRESSLISTENER_IID_STR;
  static const nsIID IID = NS_IDOWNLOADPROGRESSLISTENER_IID;

  /**
  * document
  * The document of the download manager frontend.
  */
  /* attribute nsIDOMDocument document; */
  nsresult GetDocument(nsIDOMDocument  *aDocument);
  nsresult SetDocument(nsIDOMDocument  aDocument);

  /* void onStateChange (in nsIWebProgress aWebProgress, in nsIRequest aRequest, in unsigned long aStateFlags, in nsresult aStatus, in nsIDownload aDownload); */
  nsresult OnStateChange(nsIWebProgress aWebProgress, nsIRequest aRequest, PRUint32 aStateFlags, nsresult aStatus, nsIDownload aDownload);

  /* void onProgressChange (in nsIWebProgress aWebProgress, in nsIRequest aRequest, in long long aCurSelfProgress, in long long aMaxSelfProgress, in long long aCurTotalProgress, in long long aMaxTotalProgress, in nsIDownload aDownload); */
  nsresult OnProgressChange(nsIWebProgress aWebProgress, nsIRequest aRequest, PRInt64 aCurSelfProgress, PRInt64 aMaxSelfProgress, PRInt64 aCurTotalProgress, PRInt64 aMaxTotalProgress, nsIDownload aDownload);

  /* void onStatusChange (in nsIWebProgress aWebProgress, in nsIRequest aRequest, in nsresult aStatus, in wstring aMessage, in nsIDownload aDownload); */
  nsresult OnStatusChange(nsIWebProgress aWebProgress, nsIRequest aRequest, nsresult aStatus, PRUnichar *aMessage, nsIDownload aDownload);

  /* void onLocationChange (in nsIWebProgress aWebProgress, in nsIRequest aRequest, in nsIURI aLocation, in nsIDownload aDownload); */
  nsresult OnLocationChange(nsIWebProgress aWebProgress, nsIRequest aRequest, nsIURI aLocation, nsIDownload aDownload);

  /* void onSecurityChange (in nsIWebProgress aWebProgress, in nsIRequest aRequest, in unsigned long aState, in nsIDownload aDownload); */
  nsresult OnSecurityChange(nsIWebProgress aWebProgress, nsIRequest aRequest, PRUint32 aState, nsIDownload aDownload);

}

