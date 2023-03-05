/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIExternalHelperAppService.idl
 */

module mozilla.dxpcom.nsIExternalHelperAppServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIExternalHelperAppService;


public import mozilla.dxpcom.nsIExternalHelperAppServiceD;

public import mozilla.xpcom.nsICancelable;
public import mozilla.dxpcom.nsICancelableD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIRequest;

public import mozilla.dxpcom.nsIRequestD;

public import mozilla.xpcom.nsIStreamListener;

public import mozilla.dxpcom.nsIStreamListenerD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;

public import mozilla.xpcom.nsIMIMEInfo;

public import mozilla.dxpcom.nsIMIMEInfoD;

public import mozilla.xpcom.nsIWebProgressListener2;

public import mozilla.dxpcom.nsIWebProgressListener2D;

public import mozilla.xpcom.nsIInterfaceRequestor;

public import mozilla.dxpcom.nsIInterfaceRequestorD;


/* starting wrapper class:    nsIExternalHelperAppService */
/**
 * The external helper app service is used for finding and launching
 * platform specific external applications for a given mime content type.
 */
class nsIExternalHelperAppServiceD : public nsISupportsD {

  static const nsIID IID = NS_IEXTERNALHELPERAPPSERVICE_IID;


  alias nsIExternalHelperAppService InnerType;

  this(nsIExternalHelperAppService intr){
    super(intr);
    this.inner = intr;
  }

  nsIExternalHelperAppService opCast() {
    return inner;
  }

  void opAssign(nsIExternalHelperAppService value) {
    inner = value;
  }

  /**
   * Binds an external helper application to a stream listener. The caller
   * should pump data into the returned stream listener. When the OnStopRequest
   * is issued, the stream listener implementation will launch the helper app
   * with this data.
   * @param aMimeContentType The content type of the incoming data
   * @param aRequest The request corresponding to the incoming data
   * @param aWindowContext Use GetInterface to retrieve properties like the
   *                       dom window or parent window...
   *                       The service might need this in order to bring up dialogs.
   * @return A nsIStreamListener which the caller should pump the data into.
   */
  /* nsIStreamListener doContent (in ACString aMimeContentType, in nsIRequest aRequest, in nsIInterfaceRequestor aWindowContext); */
  nsIStreamListenerD  DoContent(char[] aMimeContentType, nsIRequestD aRequest, nsIInterfaceRequestorD aWindowContext){
    scope auto _aMimeContentType = new ACString(aMimeContentType);
    nsIStreamListener _retval;
    nsresult __result = inner.DoContent(cast(nsACString*)_aMimeContentType, aRequest ? cast(nsIRequest)aRequest : null, aWindowContext ? cast(nsIInterfaceRequestor)aWindowContext : null, &_retval);
    CheckException(__result);
    return new nsIStreamListenerD(_retval);
  }

  /**
   * Returns true if data from a URL with this extension combination
   * is to be decoded from aEncodingType prior to saving or passing
   * off to helper apps, false otherwise.
   */
  /* boolean applyDecodingForExtension (in AUTF8String aExtension, in ACString aEncodingType); */
  PRBool ApplyDecodingForExtension(char[] aExtension, char[] aEncodingType){
    scope auto _aExtension = new ACString(aExtension);
    scope auto _aEncodingType = new ACString(aEncodingType);
    PRBool _retval;
    nsresult __result = inner.ApplyDecodingForExtension(cast(nsACString*)_aExtension, cast(nsACString*)_aEncodingType, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIExternalHelperAppService inner;

}


/* starting wrapper class:    nsPIExternalAppLauncher */
/**
 * This is a private interface shared between external app handlers and the platform specific
 * external helper app service
 */
class nsPIExternalAppLauncherD : public nsISupportsD {

  static const nsIID IID = NS_PIEXTERNALAPPLAUNCHER_IID;


  alias nsPIExternalAppLauncher InnerType;

  this(nsPIExternalAppLauncher intr){
    super(intr);
    this.inner = intr;
  }

  nsPIExternalAppLauncher opCast() {
    return inner;
  }

  void opAssign(nsPIExternalAppLauncher value) {
    inner = value;
  }

  /**
   * mscott --> eventually I should move this into a new service so other
   * consumers can add temporary files they want deleted on exit.
   * @param aTemporaryFile A temporary file we should delete on exit.
   */
  /* void deleteTemporaryFileOnExit (in nsIFile aTemporaryFile); */
  void DeleteTemporaryFileOnExit(nsIFileD aTemporaryFile){
    nsresult __result = inner.DeleteTemporaryFileOnExit(aTemporaryFile ? cast(nsIFile)aTemporaryFile : null);
    CheckException(__result);
  }

private:
  nsPIExternalAppLauncher inner;

}


/* starting wrapper class:    nsIHelperAppLauncher */
/**
 * A helper app launcher is a small object created to handle the launching
 * of an external application.
 *
 * Note that cancelling the load via the nsICancelable interface will release
 * the reference to the launcher dialog.
 */
class nsIHelperAppLauncherD : public nsICancelableD {

  static const nsIID IID = NS_IHELPERAPPLAUNCHER_IID;


  alias nsIHelperAppLauncher InnerType;

  this(nsIHelperAppLauncher intr){
    super(intr);
    this.inner = intr;
  }

  nsIHelperAppLauncher opCast() {
    return inner;
  }

  void opAssign(nsIHelperAppLauncher value) {
    inner = value;
  }

  /**
   * The mime info object associated with the content type this helper app
   * launcher is currently attempting to load
   */
  /* readonly attribute nsIMIMEInfo MIMEInfo; */
  nsIMIMEInfoD  MIMEInfo(){
    nsIMIMEInfo value;
    nsresult __result = inner.GetMIMEInfo(&value);
    CheckException(__result);
    return new nsIMIMEInfoD(value);
  }

  /**
   * The source uri
   */
  /* readonly attribute nsIURI source; */
  nsIURID  Source(){
    nsIURI value;
    nsresult __result = inner.GetSource(&value);
    CheckException(__result);
    return new nsIURID(value);
  }

  /**
   * The suggested name for this file
   */
  /* readonly attribute AString suggestedFileName; */
  wchar[] SuggestedFileName(){
    scope auto value = new AString();
    nsresult __result = inner.GetSuggestedFileName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * Called when we want to just save the content to a particular file.
   * NOTE: This will release the reference to the nsIHelperAppLauncherDialog.
   * @param aNewFileLocation Location where the content should be saved
   */
  /* void saveToDisk (in nsIFile aNewFileLocation, in boolean aRememberThisPreference); */
  void SaveToDisk(nsIFileD aNewFileLocation, PRBool aRememberThisPreference){
    nsresult __result = inner.SaveToDisk(aNewFileLocation ? cast(nsIFile)aNewFileLocation : null, aRememberThisPreference);
    CheckException(__result);
  }

  /**
   * Use aApplication to launch with this content.
   * NOTE: This will release the reference to the nsIHelperAppLauncherDialog.
   * @param aApplication nsIFile corresponding to the location of the application to use.
   * @param aRememberThisPreference TRUE if we should remember this choice.
   */
  /* void launchWithApplication (in nsIFile aApplication, in boolean aRememberThisPreference); */
  void LaunchWithApplication(nsIFileD aApplication, PRBool aRememberThisPreference){
    nsresult __result = inner.LaunchWithApplication(aApplication ? cast(nsIFile)aApplication : null, aRememberThisPreference);
    CheckException(__result);
  }

  /**
   * The following methods are used by the progress dialog to get or set
   * information on the current helper app launcher download.
   * This reference will be released when the download is finished (after the
   * listener receives the STATE_STOP notification).
   */
  /* void setWebProgressListener (in nsIWebProgressListener2 aWebProgressListener); */
  void SetWebProgressListener(nsIWebProgressListener2D aWebProgressListener){
    nsresult __result = inner.SetWebProgressListener(aWebProgressListener ? cast(nsIWebProgressListener2)aWebProgressListener : null);
    CheckException(__result);
  }

  /**
   * when the stand alone progress window actually closes, it calls this method
   * so we can release any local state...
   */
  /* void closeProgressWindow (); */
  void CloseProgressWindow(){
    nsresult __result = inner.CloseProgressWindow();
    CheckException(__result);
  }

  /**
   * The file we are saving to
   */
  /* readonly attribute nsIFile targetFile; */
  nsIFileD  TargetFile(){
    nsIFile value;
    nsresult __result = inner.GetTargetFile(&value);
    CheckException(__result);
    return new nsIFileD(value);
  }

  /**
   * Time when the download started
   */
  /* readonly attribute PRTime timeDownloadStarted; */
  PRTime TimeDownloadStarted(){
    PRTime value;
    nsresult __result = inner.GetTimeDownloadStarted(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIHelperAppLauncher inner;

}

