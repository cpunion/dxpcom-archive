/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUpdateService.idl
 */

module mozilla.xpcom.nsIUpdateService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMDocument; /* forward declaration */

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */

public import mozilla.xpcom.nsIRequest; /* forward declaration */

public import mozilla.xpcom.nsIRequestObserver; /* forward declaration */

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */

public import mozilla.xpcom.nsITimer;

public import mozilla.xpcom.nsIXMLHttpRequest; /* forward declaration */


/* starting interface:    nsIUpdatePatch */
const char[] NS_IUPDATEPATCH_IID_STR = "56863a67-bd69-42de-9f40-583e625b457d";

const nsIID NS_IUPDATEPATCH_IID= 
  {0x56863a67, 0xbd69, 0x42de, 
    [ 0x9f, 0x40, 0x58, 0x3e, 0x62, 0x5b, 0x45, 0x7d ]};

/**
 * An interface that describes an object representing a patch file that can
 * be downloaded and applied to a version of this application so that it
 * can be updated.
 */
extern(Windows)
interface nsIUpdatePatch : nsISupports {
  static const char[] IID_STR = NS_IUPDATEPATCH_IID_STR;
  static const nsIID IID = NS_IUPDATEPATCH_IID;

  /**
   * The type of this patch:
   * "partial"      A binary difference between two application versions
   * "complete"     A complete patch containing all of the replacement files
   *                to update to the new version
   */
  /* attribute AString type; */
  nsresult GetType(nsAString * aType);
  nsresult SetType(nsAString * aType);

  /**
   * The URL this patch was being downloaded from
   */
  /* attribute AString URL; */
  nsresult GetURL(nsAString * aURL);
  nsresult SetURL(nsAString * aURL);

  /**
   * The hash function to use when determining this file's integrity
   */
  /* attribute AString hashFunction; */
  nsresult GetHashFunction(nsAString * aHashFunction);
  nsresult SetHashFunction(nsAString * aHashFunction);

  /**
   * The value of the hash function named above that should be computed if
   * this file is not corrupt.
   */
  /* attribute AString hashValue; */
  nsresult GetHashValue(nsAString * aHashValue);
  nsresult SetHashValue(nsAString * aHashValue);

  /**
   * The size of this file, in bytes. 
   */
  /* attribute unsigned long size; */
  nsresult GetSize(PRUint32 *aSize);
  nsresult SetSize(PRUint32 aSize);

  /**
   * The state of this patch
   */
  /* attribute AString state; */
  nsresult GetState(nsAString * aState);
  nsresult SetState(nsAString * aState);

  /**
   * true if this patch is currently selected as the patch to be downloaded and
   * installed for this update transaction, false if another patch from this
   * update has been selected. 
   */
  /* attribute boolean selected; */
  nsresult GetSelected(PRBool *aSelected);
  nsresult SetSelected(PRBool aSelected);

  /**
   * Serializes this patch object into a DOM Element
   * @param   updates
   *          The document to serialize into
   * @returns The DOM Element created by the serialization process
   */
  /* nsIDOMElement serialize (in nsIDOMDocument updates); */
  nsresult Serialize(nsIDOMDocument updates, nsIDOMElement *_retval);

}


/* starting interface:    nsIUpdate */
const char[] NS_IUPDATE_IID_STR = "b0fb539e-f4ab-4ea1-bd75-e6d2813e5fc1";

const nsIID NS_IUPDATE_IID= 
  {0xb0fb539e, 0xf4ab, 0x4ea1, 
    [ 0xbd, 0x75, 0xe6, 0xd2, 0x81, 0x3e, 0x5f, 0xc1 ]};

/**
 * An interface that describes an object representing an available update to
 * the current application - this update may have several available patches
 * from which one must be selected to download and install, for example we
 * might select a binary difference patch first and attempt to apply that, 
 * then if the application process fails fall back to downloading a complete
 * file-replace patch. This object also contains information about the update
 * that the front end and other application services can use to learn more 
 * about what is going on.
 */
extern(Windows)
interface nsIUpdate : nsISupports {
  static const char[] IID_STR = NS_IUPDATE_IID_STR;
  static const nsIID IID = NS_IUPDATE_IID;

  /**
   * The type of update:
   *   "major"  A major new version of the Application
   *   "minor"  A minor update to the Application (e.g. security update)
   */
  /* attribute AString type; */
  nsresult GetType(nsAString * aType);
  nsresult SetType(nsAString * aType);

  /**
   * The name of the update, or "<Application Name> <Update Version>"
   */
  /* attribute AString name; */
  nsresult GetName(nsAString * aName);
  nsresult SetName(nsAString * aName);

  /**
   * The Application version of this update. 
   */
  /* attribute AString version; */
  nsresult GetVersion(nsAString * aVersion);
  nsresult SetVersion(nsAString * aVersion);

  /**
   * The Addon version of this update. Used by the Extension System to track 
   * compatibility of installed addons with this update. 
   */
  /* attribute AString extensionVersion; */
  nsresult GetExtensionVersion(nsAString * aExtensionVersion);
  nsresult SetExtensionVersion(nsAString * aExtensionVersion);

  /**
   * The Build ID of this update. Used to determine a particular build, down
   * to the hour, minute and second of its creation. This allows the system
   * to differentiate between several nightly builds with the same |version|
   * for example. 
   */
  /* attribute AString buildID; */
  nsresult GetBuildID(nsAString * aBuildID);
  nsresult SetBuildID(nsAString * aBuildID);

  /**
   * The URL to a page which offers details about the content of this 
   * update. Ideally, this page is not the release notes but some other page
   * that summarizes the differences between this update and the previous,
   * which also links to the release notes.
   */
  /* attribute AString detailsURL; */
  nsresult GetDetailsURL(nsAString * aDetailsURL);
  nsresult SetDetailsURL(nsAString * aDetailsURL);

  /**
   * The URL to a HTML fragment that contains a license for this update. If
   * this is specified, the user is shown the license file after they choose
   * to install the update and they must agree to it before the download 
   * commences.
   */
  /* attribute AString licenseURL; */
  nsresult GetLicenseURL(nsAString * aLicenseURL);
  nsresult SetLicenseURL(nsAString * aLicenseURL);

  /**
   * The URL to the Update Service that supplied this update.
   */
  /* attribute AString serviceURL; */
  nsresult GetServiceURL(nsAString * aServiceURL);
  nsresult SetServiceURL(nsAString * aServiceURL);

  /**
   * Whether or not the update being downloaded is a complete replacement of
   * the user's existing installation or a patch representing the difference
   * between the new version and the previous version.
   */
  /* attribute boolean isCompleteUpdate; */
  nsresult GetIsCompleteUpdate(PRBool *aIsCompleteUpdate);
  nsresult SetIsCompleteUpdate(PRBool aIsCompleteUpdate);

  /**
   * Whether or not the update is a security update or not. If this is true, 
   * then we present more serious sounding user interface messages to the 
   * user. 
   */
  /* attribute boolean isSecurityUpdate; */
  nsresult GetIsSecurityUpdate(PRBool *aIsSecurityUpdate);
  nsresult SetIsSecurityUpdate(PRBool aIsSecurityUpdate);

  /**
   * When the update was installed.
   */
  /* attribute long long installDate; */
  nsresult GetInstallDate(PRInt64 *aInstallDate);
  nsresult SetInstallDate(PRInt64 aInstallDate);

  /**
   * A message associated with this update, if any.
   */
  /* attribute AString statusText; */
  nsresult GetStatusText(nsAString * aStatusText);
  nsresult SetStatusText(nsAString * aStatusText);

  /**
   * The currently selected patch for this update.
   */
  /* readonly attribute nsIUpdatePatch selectedPatch; */
  nsresult GetSelectedPatch(nsIUpdatePatch  *aSelectedPatch);

  /**
   * The state of the selected patch:
   *   "downloading"       The update is being downloaded.
   *   "pending"           The update is ready to be applied.
   *   "applying"          The update is being applied.
   *   "succeeded"         The update was successfully applied.
   *   "download-failed"   The update failed to be downloaded.
   *   "failed"            The update failed to be applied.
   */
  /* attribute AString state; */
  nsresult GetState(nsAString * aState);
  nsresult SetState(nsAString * aState);

  /**
   * A numeric error code that conveys additional information about the state
   * of a failed update.  If the update is not in the "failed" state, then this
   * value is zero.
   *
   * TODO: Define typical error codes (for now, see updater/errors.h)
   */
  /* attribute long errorCode; */
  nsresult GetErrorCode(PRInt32 *aErrorCode);
  nsresult SetErrorCode(PRInt32 aErrorCode);

  /**
   * The number of patches supplied by this update.
   */
  /* readonly attribute unsigned long patchCount; */
  nsresult GetPatchCount(PRUint32 *aPatchCount);

  /**
   * Retrieves a patch. 
   * @param   index
   *          The index of the patch to retrieve.
   * @returns The nsIUpdatePatch at the specified index.
   */
  /* nsIUpdatePatch getPatchAt (in unsigned long index); */
  nsresult GetPatchAt(PRUint32 index, nsIUpdatePatch *_retval);

  /**
   * Serializes this update object into a DOM Element
   * @param   updates
   *          The document to serialize into
   * @returns The DOM Element created by the serialization process
   */
  /* nsIDOMElement serialize (in nsIDOMDocument updates); */
  nsresult Serialize(nsIDOMDocument updates, nsIDOMElement *_retval);

}


/* starting interface:    nsIUpdate_MOZILLA_1_8_BRANCH */
const char[] NS_IUPDATE_MOZILLA_1_8_BRANCH_IID_STR = "5b61356d-8411-48c0-863f-7b038eb0e4a8";

const nsIID NS_IUPDATE_MOZILLA_1_8_BRANCH_IID= 
  {0x5b61356d, 0x8411, 0x48c0, 
    [ 0x86, 0x3f, 0x7b, 0x03, 0x8e, 0xb0, 0xe4, 0xa8 ]};

/**
 * A MOZILLA_1_8_BRANCH-specific interface that adds the 'channel' attribute
 * to the nsIUpdate interface. This attribute has been added to nsIUpdate on
 * the trunk.
 */
extern(Windows)
interface nsIUpdate_MOZILLA_1_8_BRANCH : nsIUpdate {
  static const char[] IID_STR = NS_IUPDATE_MOZILLA_1_8_BRANCH_IID_STR;
  static const nsIID IID = NS_IUPDATE_MOZILLA_1_8_BRANCH_IID;

  /**
   * The channel used to retrieve this update from the Update Service.
   */
  /* attribute AString channel; */
  nsresult GetChannel(nsAString * aChannel);
  nsresult SetChannel(nsAString * aChannel);

}


/* starting interface:    nsIUpdateCheckListener */
const char[] NS_IUPDATECHECKLISTENER_IID_STR = "8cbceb6e-8e27-46f2-8808-444c6499f836";

const nsIID NS_IUPDATECHECKLISTENER_IID= 
  {0x8cbceb6e, 0x8e27, 0x46f2, 
    [ 0x88, 0x08, 0x44, 0x4c, 0x64, 0x99, 0xf8, 0x36 ]};

/**
 * An interface describing an object that listens to the progress of an update
 * check operation. This object is notified as the check continues, finishes
 * and if it has an error. 
 */
extern(Windows)
interface nsIUpdateCheckListener : nsISupports {
  static const char[] IID_STR = NS_IUPDATECHECKLISTENER_IID_STR;
  static const nsIID IID = NS_IUPDATECHECKLISTENER_IID;

  /**
   * Called every time there is a progress notification loading the Update
   * Service file.
   * @param   request
   *          The nsIXMLHttpRequest handling the update check.
   * @param   position
   *          The current byte downloaded
   * @param   totalSize
   *          The total number of bytes that have to be downloaded
   */
  /* void onProgress (in nsIXMLHttpRequest request, in unsigned long position, in unsigned long totalSize); */
  nsresult OnProgress(nsIXMLHttpRequest request, PRUint32 position, PRUint32 totalSize);

  /**
   * The update check was completed. 
   * @param   request
   *          The nsIXMLHttpRequest handling the update check.
   * @param   updates
   *          An array of nsIUpdate objects listing available updates.
   * @param   updateCount
   *          The size of the |updates| array.
   */
  /* void onCheckComplete (in nsIXMLHttpRequest request, [array, size_is (updateCount)] in nsIUpdate updates, in unsigned long updateCount); */
  nsresult OnCheckComplete(nsIXMLHttpRequest request, nsIUpdate *updates, PRUint32 updateCount);

  /**
   * An error occurred while loading the remote update service file. 
   * @param   request
   *          The nsIXMLHttpRequest handling the update check.
   * @param   update
   *          A nsIUpdate object that contains details about the 
   *          error in its |statusText| property.
   */
  /* void onError (in nsIXMLHttpRequest request, in nsIUpdate update); */
  nsresult OnError(nsIXMLHttpRequest request, nsIUpdate update);

}


/* starting interface:    nsIUpdateChecker */
const char[] NS_IUPDATECHECKER_IID_STR = "877ace25-8bc5-452a-8586-9c1cf2871994";

const nsIID NS_IUPDATECHECKER_IID= 
  {0x877ace25, 0x8bc5, 0x452a, 
    [ 0x85, 0x86, 0x9c, 0x1c, 0xf2, 0x87, 0x19, 0x94 ]};

/**
 * An interface describing an object that knows how to check for updates.
 */
extern(Windows)
interface nsIUpdateChecker : nsISupports {
  static const char[] IID_STR = NS_IUPDATECHECKER_IID_STR;
  static const nsIID IID = NS_IUPDATECHECKER_IID;

  /**
   * Checks for available updates, notifying a listener of the results.
   * @param   listener
   *          An object implementing nsIUpdateCheckListener which is notified
   *          of the results of an update check.
   * @param   force
   *          Forces the checker to check for updates, regardless of the 
   *          current value of the user's update settings. This is used by
   *          any piece of UI that offers the user the imperative option to
   *          check for updates now, regardless of their update settings.
   *          force will not work if the system administrator has locked
   *          the app.update.enabled preference.
   */
  /* void checkForUpdates (in nsIUpdateCheckListener listener, in boolean force); */
  nsresult CheckForUpdates(nsIUpdateCheckListener listener, PRBool force);

  /**
   * Constants for the |stopChecking| function that tell the Checker how long
   * to stop checking:
   * 
   * CURRENT_CHECK:     Stops the current (active) check only
   * CURRENT_SESSION:   Stops all checking for the current session
   * ANY_CHECKS:        Stops all checking, any session from now on
   *                    (disables update checking preferences)
   */
  enum { CURRENT_CHECK = 1U };

  enum { CURRENT_SESSION = 2U };

  enum { ANY_CHECKS = 3U };

  /**
   * Ends any pending update check.
   * @param   duration
   *          A value representing the set of checks to stop doing.
   */
  /* void stopChecking (in unsigned short duration); */
  nsresult StopChecking(PRUint16 duration);

}


/* starting interface:    nsIApplicationUpdateService */
const char[] NS_IAPPLICATIONUPDATESERVICE_IID_STR = "9849c4bf-5197-4d22-baa8-e3b44a1703d2";

const nsIID NS_IAPPLICATIONUPDATESERVICE_IID= 
  {0x9849c4bf, 0x5197, 0x4d22, 
    [ 0xba, 0xa8, 0xe3, 0xb4, 0x4a, 0x17, 0x03, 0xd2 ]};

/**
 * An interface describing a global application service that handles performing
 * background update checks and provides utilities for selecting and 
 * downloading update patches.
 */
extern(Windows)
interface nsIApplicationUpdateService : nsISupports {
  static const char[] IID_STR = NS_IAPPLICATIONUPDATESERVICE_IID_STR;
  static const nsIID IID = NS_IAPPLICATIONUPDATESERVICE_IID;

  /**
   * The Update Checker used for background update checking.
   */
  /* readonly attribute nsIUpdateChecker backgroundChecker; */
  nsresult GetBackgroundChecker(nsIUpdateChecker  *aBackgroundChecker);

  /**
   * Selects the best update to install from a list of available updates.
   * @param   updates
   *          An array of updates that are available
   * @param   updateCount
   *          The length of the |updates| array
   */
  /* nsIUpdate selectUpdate ([array, size_is (updateCount)] in nsIUpdate updates, in unsigned long updateCount); */
  nsresult SelectUpdate(nsIUpdate *updates, PRUint32 updateCount, nsIUpdate *_retval);

  /**
   * Adds a listener that receives progress and state information about the 
   * update that is currently being downloaded, e.g. to update a user 
   * interface.
   * @param   listener
   *          An object implementing nsIRequestObserver and optionally
   *          nsIProgressEventSink that is to be notified of state and
   *          progress information as the update is downloaded.
   */
  /* void addDownloadListener (in nsIRequestObserver listener); */
  nsresult AddDownloadListener(nsIRequestObserver listener);

  /**
   * Removes a listener that is receiving progress and state information
   * about the update that is currently being downloaded. 
   * @param   listener
   *          The listener object to remove.
   */
  /* void removeDownloadListener (in nsIRequestObserver listener); */
  nsresult RemoveDownloadListener(nsIRequestObserver listener);

  /**
   * 
   */
  /* AString downloadUpdate (in nsIUpdate update, in boolean background); */
  nsresult DownloadUpdate(nsIUpdate update, PRBool background, nsAString * _retval);

  /**
   * Pauses the active update download process
   */
  /* void pauseDownload (); */
  nsresult PauseDownload();

  /**
   * Whether or not there is an download happening at the moment.
   */
  /* readonly attribute boolean isDownloading; */
  nsresult GetIsDownloading(PRBool *aIsDownloading);

  /**
   * Whether or not the Update Service can download and install updates.
   * This is a function of whether or not the current user has access 
   * privileges to the install directory.
   */
  /* readonly attribute boolean canUpdate; */
  nsresult GetCanUpdate(PRBool *aCanUpdate);

}


/* starting interface:    nsIUpdateManager */
const char[] NS_IUPDATEMANAGER_IID_STR = "fede66a9-9f96-4507-a22a-775ee885577e";

const nsIID NS_IUPDATEMANAGER_IID= 
  {0xfede66a9, 0x9f96, 0x4507, 
    [ 0xa2, 0x2a, 0x77, 0x5e, 0xe8, 0x85, 0x57, 0x7e ]};

/**
 * An interface describing a global application service that maintains a list
 * of updates previously performed as well as the current active update. 
 */
extern(Windows)
interface nsIUpdateManager : nsISupports {
  static const char[] IID_STR = NS_IUPDATEMANAGER_IID_STR;
  static const nsIID IID = NS_IUPDATEMANAGER_IID;

  /**
   * Gets the update at the specified index
   * @param   index
   *          The index within the updates array
   * @returns The nsIUpdate object at the specified index
   */
  /* nsIUpdate getUpdateAt (in long index); */
  nsresult GetUpdateAt(PRInt32 index, nsIUpdate *_retval);

  /**
   * Gets the total number of updates in the history list. 
   */
  /* readonly attribute long updateCount; */
  nsresult GetUpdateCount(PRInt32 *aUpdateCount);

  /**
   * The active (current) update. The active update is not in the history list.
   */
  /* attribute nsIUpdate activeUpdate; */
  nsresult GetActiveUpdate(nsIUpdate  *aActiveUpdate);
  nsresult SetActiveUpdate(nsIUpdate  aActiveUpdate);

  /**
   * Saves all updates to disk. 
   */
  /* void saveUpdates (); */
  nsresult SaveUpdates();

}


/* starting interface:    nsIUpdatePrompt */
const char[] NS_IUPDATEPROMPT_IID_STR = "22b00276-ec23-4034-a764-395da539b4be";

const nsIID NS_IUPDATEPROMPT_IID= 
  {0x22b00276, 0xec23, 0x4034, 
    [ 0xa7, 0x64, 0x39, 0x5d, 0xa5, 0x39, 0xb4, 0xbe ]};

/**
 * An interface describing an object that can show various kinds of Update 
 * notification UI to the user. 
 */
extern(Windows)
interface nsIUpdatePrompt : nsISupports {
  static const char[] IID_STR = NS_IUPDATEPROMPT_IID_STR;
  static const nsIID IID = NS_IUPDATEPROMPT_IID;

  /**
   * Shows a user interface that checks for and then displays the available
   * updates.
   */
  /* void checkForUpdates (); */
  nsresult CheckForUpdates();

  /**
   * Show a message advising that an update is available for download and
   * install.
   * @param   update
   *          The update to be downloaded and installed
   */
  /* void showUpdateAvailable (in nsIUpdate update); */
  nsresult ShowUpdateAvailable(nsIUpdate update);

  /**
   * Show a message advising that an update has now been downloaded and that
   * the user should restart their software should be restarted so that the
   * update can be installed.
   * @param   update
   *          The update that was downloaded
   */
  /* void showUpdateDownloaded (in nsIUpdate update); */
  nsresult ShowUpdateDownloaded(nsIUpdate update);

  /**
   * Shows a message detailing the update which was installed.
   * @param   update
   *          The nsIUpdate object which was just installed
   */
  /* void showUpdateInstalled (in nsIUpdate update); */
  nsresult ShowUpdateInstalled(nsIUpdate update);

  /**
   * Shows an error message UI telling the user about some kind of update
   * failure, e.g. failure to apply patch.
   * @param   update
   *          The nsIUpdate object which we could not install
   */
  /* void showUpdateError (in nsIUpdate update); */
  nsresult ShowUpdateError(nsIUpdate update);

  /**
   * Shows a list of all updates installed to date.
   * @param   parent
   *          A parent window to anchor this window to. Can be null.
   */
  /* void showUpdateHistory (in nsIDOMWindow parent); */
  nsresult ShowUpdateHistory(nsIDOMWindow parent);

}


/* starting interface:    nsIUpdateTimerManager */
const char[] NS_IUPDATETIMERMANAGER_IID_STR = "0765c92c-6145-4253-9db4-594d8023087e";

const nsIID NS_IUPDATETIMERMANAGER_IID= 
  {0x0765c92c, 0x6145, 0x4253, 
    [ 0x9d, 0xb4, 0x59, 0x4d, 0x80, 0x23, 0x08, 0x7e ]};

/**
 * An interface describing a global application service that allows long 
 * duration (e.g. 1-7 or more days, weeks or months) timers to be registered
 * and then fired. 
 */
extern(Windows)
interface nsIUpdateTimerManager : nsISupports {
  static const char[] IID_STR = NS_IUPDATETIMERMANAGER_IID_STR;
  static const nsIID IID = NS_IUPDATETIMERMANAGER_IID;

  /**
   * Register an interval with the timer manager. The timer manager 
   * periodically checks to see if the interval has expired and if it has
   * calls the specified callback. This is persistent across application
   * restarts and can handle intervals of long durations.
   * @param   id
   *          An id that identifies the interval, used for persistence
   * @param   callback
   *          A nsITimerCallback object that is notified when the interval
   *          expires
   * @param   interval
   *          The length of time, in seconds, of the interval
   */
  /* void registerTimer (in AString id, in nsITimerCallback callback, in unsigned long interval); */
  nsresult RegisterTimer(nsAString * id, nsITimerCallback callback, PRUint32 interval);

}

