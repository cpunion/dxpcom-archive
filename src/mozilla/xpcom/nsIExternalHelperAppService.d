/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIExternalHelperAppService.idl
 */

module mozilla.xpcom.nsIExternalHelperAppService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsICancelable;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIRequest; /* forward declaration */

public import mozilla.xpcom.nsIStreamListener; /* forward declaration */

public import mozilla.xpcom.nsIFile; /* forward declaration */

public import mozilla.xpcom.nsIMIMEInfo; /* forward declaration */

public import mozilla.xpcom.nsIWebProgressListener2; /* forward declaration */

public import mozilla.xpcom.nsIInterfaceRequestor; /* forward declaration */


/* starting interface:    nsIExternalHelperAppService */
const char[] NS_IEXTERNALHELPERAPPSERVICE_IID_STR = "0ea90cf3-2dd9-470f-8f76-f141743c5678";

const nsIID NS_IEXTERNALHELPERAPPSERVICE_IID= 
  {0x0ea90cf3, 0x2dd9, 0x470f, 
    [ 0x8f, 0x76, 0xf1, 0x41, 0x74, 0x3c, 0x56, 0x78 ]};

/**
 * The external helper app service is used for finding and launching
 * platform specific external applications for a given mime content type.
 */
extern(Windows)
interface nsIExternalHelperAppService : nsISupports {
  static const char[] IID_STR = NS_IEXTERNALHELPERAPPSERVICE_IID_STR;
  static const nsIID IID = NS_IEXTERNALHELPERAPPSERVICE_IID;

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
  nsresult DoContent(nsACString * aMimeContentType, nsIRequest aRequest, nsIInterfaceRequestor aWindowContext, nsIStreamListener *_retval);

  /**
   * Returns true if data from a URL with this extension combination
   * is to be decoded from aEncodingType prior to saving or passing
   * off to helper apps, false otherwise.
   */
  /* boolean applyDecodingForExtension (in AUTF8String aExtension, in ACString aEncodingType); */
  nsresult ApplyDecodingForExtension(nsACString * aExtension, nsACString * aEncodingType, PRBool *_retval);

}


/* starting interface:    nsPIExternalAppLauncher */
const char[] NS_PIEXTERNALAPPLAUNCHER_IID_STR = "d0b5d7d3-9565-403d-9fb5-e5089c4567c6";

const nsIID NS_PIEXTERNALAPPLAUNCHER_IID= 
  {0xd0b5d7d3, 0x9565, 0x403d, 
    [ 0x9f, 0xb5, 0xe5, 0x08, 0x9c, 0x45, 0x67, 0xc6 ]};

/**
 * This is a private interface shared between external app handlers and the platform specific
 * external helper app service
 */
extern(Windows)
interface nsPIExternalAppLauncher : nsISupports {
  static const char[] IID_STR = NS_PIEXTERNALAPPLAUNCHER_IID_STR;
  static const nsIID IID = NS_PIEXTERNALAPPLAUNCHER_IID;

  /**
   * mscott --> eventually I should move this into a new service so other
   * consumers can add temporary files they want deleted on exit.
   * @param aTemporaryFile A temporary file we should delete on exit.
   */
  /* void deleteTemporaryFileOnExit (in nsIFile aTemporaryFile); */
  nsresult DeleteTemporaryFileOnExit(nsIFile aTemporaryFile);

}


/* starting interface:    nsIHelperAppLauncher */
const char[] NS_IHELPERAPPLAUNCHER_IID_STR = "99a0882d-2ff9-4659-9952-9ac531ba5592";

const nsIID NS_IHELPERAPPLAUNCHER_IID= 
  {0x99a0882d, 0x2ff9, 0x4659, 
    [ 0x99, 0x52, 0x9a, 0xc5, 0x31, 0xba, 0x55, 0x92 ]};

/**
 * A helper app launcher is a small object created to handle the launching
 * of an external application.
 *
 * Note that cancelling the load via the nsICancelable interface will release
 * the reference to the launcher dialog.
 */
extern(Windows)
interface nsIHelperAppLauncher : nsICancelable {
  static const char[] IID_STR = NS_IHELPERAPPLAUNCHER_IID_STR;
  static const nsIID IID = NS_IHELPERAPPLAUNCHER_IID;

  /**
   * The mime info object associated with the content type this helper app
   * launcher is currently attempting to load
   */
  /* readonly attribute nsIMIMEInfo MIMEInfo; */
  nsresult GetMIMEInfo(nsIMIMEInfo  *aMIMEInfo);

  /**
   * The source uri
   */
  /* readonly attribute nsIURI source; */
  nsresult GetSource(nsIURI  *aSource);

  /**
   * The suggested name for this file
   */
  /* readonly attribute AString suggestedFileName; */
  nsresult GetSuggestedFileName(nsAString * aSuggestedFileName);

  /**
   * Called when we want to just save the content to a particular file.
   * NOTE: This will release the reference to the nsIHelperAppLauncherDialog.
   * @param aNewFileLocation Location where the content should be saved
   */
  /* void saveToDisk (in nsIFile aNewFileLocation, in boolean aRememberThisPreference); */
  nsresult SaveToDisk(nsIFile aNewFileLocation, PRBool aRememberThisPreference);

  /**
   * Use aApplication to launch with this content.
   * NOTE: This will release the reference to the nsIHelperAppLauncherDialog.
   * @param aApplication nsIFile corresponding to the location of the application to use.
   * @param aRememberThisPreference TRUE if we should remember this choice.
   */
  /* void launchWithApplication (in nsIFile aApplication, in boolean aRememberThisPreference); */
  nsresult LaunchWithApplication(nsIFile aApplication, PRBool aRememberThisPreference);

  /**
   * The following methods are used by the progress dialog to get or set
   * information on the current helper app launcher download.
   * This reference will be released when the download is finished (after the
   * listener receives the STATE_STOP notification).
   */
  /* void setWebProgressListener (in nsIWebProgressListener2 aWebProgressListener); */
  nsresult SetWebProgressListener(nsIWebProgressListener2 aWebProgressListener);

  /**
   * when the stand alone progress window actually closes, it calls this method
   * so we can release any local state...
   */
  /* void closeProgressWindow (); */
  nsresult CloseProgressWindow();

  /**
   * The file we are saving to
   */
  /* readonly attribute nsIFile targetFile; */
  nsresult GetTargetFile(nsIFile  *aTargetFile);

  /**
   * Time when the download started
   */
  /* readonly attribute PRTime timeDownloadStarted; */
  nsresult GetTimeDownloadStarted(PRTime *aTimeDownloadStarted);

}

