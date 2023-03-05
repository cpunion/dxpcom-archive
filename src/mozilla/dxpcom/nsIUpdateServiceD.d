/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUpdateService.idl
 */

module mozilla.dxpcom.nsIUpdateServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIUpdateService;


public import mozilla.dxpcom.nsIUpdateServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMDocument;

public import mozilla.dxpcom.nsIDOMDocumentD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.dxpcom.nsIDOMWindowD;

public import mozilla.xpcom.nsIRequest;

public import mozilla.dxpcom.nsIRequestD;

public import mozilla.xpcom.nsIRequestObserver;

public import mozilla.dxpcom.nsIRequestObserverD;

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;

public import mozilla.xpcom.nsITimer;

import mozilla.dxpcom.nsITimerD;

public import mozilla.xpcom.nsIXMLHttpRequest;

public import mozilla.dxpcom.nsIXMLHttpRequestD;


/* starting wrapper class:    nsIUpdatePatch */
/**
 * An interface that describes an object representing a patch file that can
 * be downloaded and applied to a version of this application so that it
 * can be updated.
 */
class nsIUpdatePatchD : public nsISupportsD {

  static const nsIID IID = NS_IUPDATEPATCH_IID;


  alias nsIUpdatePatch InnerType;

  this(nsIUpdatePatch intr){
    super(intr);
    this.inner = intr;
  }

  nsIUpdatePatch opCast() {
    return inner;
  }

  void opAssign(nsIUpdatePatch value) {
    inner = value;
  }

  /**
   * The type of this patch:
   * "partial"      A binary difference between two application versions
   * "complete"     A complete patch containing all of the replacement files
   *                to update to the new version
   */
  /* attribute AString type; */
  wchar[] Type(){
    scope auto value = new AString();
    nsresult __result = inner.GetType(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Type(wchar[] aType){
    scope auto value = new AString(aType);
    nsresult __result = inner.SetType(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   * The URL this patch was being downloaded from
   */
  /* attribute AString URL; */
  wchar[] URL(){
    scope auto value = new AString();
    nsresult __result = inner.GetURL(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void URL(wchar[] aURL){
    scope auto value = new AString(aURL);
    nsresult __result = inner.SetURL(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   * The hash function to use when determining this file's integrity
   */
  /* attribute AString hashFunction; */
  wchar[] HashFunction(){
    scope auto value = new AString();
    nsresult __result = inner.GetHashFunction(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void HashFunction(wchar[] aHashFunction){
    scope auto value = new AString(aHashFunction);
    nsresult __result = inner.SetHashFunction(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   * The value of the hash function named above that should be computed if
   * this file is not corrupt.
   */
  /* attribute AString hashValue; */
  wchar[] HashValue(){
    scope auto value = new AString();
    nsresult __result = inner.GetHashValue(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void HashValue(wchar[] aHashValue){
    scope auto value = new AString(aHashValue);
    nsresult __result = inner.SetHashValue(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   * The size of this file, in bytes. 
   */
  /* attribute unsigned long size; */
  PRUint32 Size(){
    PRUint32 value;
    nsresult __result = inner.GetSize(&value);
    CheckException(__result);
    return value;
  }
  void Size(PRUint32 aSize){
    nsresult __result = inner.SetSize(aSize);
    CheckException(__result);
  }

  /**
   * The state of this patch
   */
  /* attribute AString state; */
  wchar[] State(){
    scope auto value = new AString();
    nsresult __result = inner.GetState(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void State(wchar[] aState){
    scope auto value = new AString(aState);
    nsresult __result = inner.SetState(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   * true if this patch is currently selected as the patch to be downloaded and
   * installed for this update transaction, false if another patch from this
   * update has been selected. 
   */
  /* attribute boolean selected; */
  PRBool Selected(){
    PRBool value;
    nsresult __result = inner.GetSelected(&value);
    CheckException(__result);
    return value;
  }
  void Selected(PRBool aSelected){
    nsresult __result = inner.SetSelected(aSelected);
    CheckException(__result);
  }

  /**
   * Serializes this patch object into a DOM Element
   * @param   updates
   *          The document to serialize into
   * @returns The DOM Element created by the serialization process
   */
  /* nsIDOMElement serialize (in nsIDOMDocument updates); */
  nsIDOMElementD  Serialize(nsIDOMDocumentD updates){
    nsIDOMElement _retval;
    nsresult __result = inner.Serialize(updates ? cast(nsIDOMDocument)updates : null, &_retval);
    CheckException(__result);
    return new nsIDOMElementD(_retval);
  }

private:
  nsIUpdatePatch inner;

}


/* starting wrapper class:    nsIUpdate */
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
class nsIUpdateD : public nsISupportsD {

  static const nsIID IID = NS_IUPDATE_IID;


  alias nsIUpdate InnerType;

  this(nsIUpdate intr){
    super(intr);
    this.inner = intr;
  }

  nsIUpdate opCast() {
    return inner;
  }

  void opAssign(nsIUpdate value) {
    inner = value;
  }

  /**
   * The type of update:
   *   "major"  A major new version of the Application
   *   "minor"  A minor update to the Application (e.g. security update)
   */
  /* attribute AString type; */
  wchar[] Type(){
    scope auto value = new AString();
    nsresult __result = inner.GetType(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Type(wchar[] aType){
    scope auto value = new AString(aType);
    nsresult __result = inner.SetType(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   * The name of the update, or "<Application Name> <Update Version>"
   */
  /* attribute AString name; */
  wchar[] Name(){
    scope auto value = new AString();
    nsresult __result = inner.GetName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Name(wchar[] aName){
    scope auto value = new AString(aName);
    nsresult __result = inner.SetName(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   * The Application version of this update. 
   */
  /* attribute AString version; */
  wchar[] Version(){
    scope auto value = new AString();
    nsresult __result = inner.GetVersion(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Version(wchar[] aVersion){
    scope auto value = new AString(aVersion);
    nsresult __result = inner.SetVersion(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   * The Addon version of this update. Used by the Extension System to track 
   * compatibility of installed addons with this update. 
   */
  /* attribute AString extensionVersion; */
  wchar[] ExtensionVersion(){
    scope auto value = new AString();
    nsresult __result = inner.GetExtensionVersion(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void ExtensionVersion(wchar[] aExtensionVersion){
    scope auto value = new AString(aExtensionVersion);
    nsresult __result = inner.SetExtensionVersion(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   * The Build ID of this update. Used to determine a particular build, down
   * to the hour, minute and second of its creation. This allows the system
   * to differentiate between several nightly builds with the same |version|
   * for example. 
   */
  /* attribute AString buildID; */
  wchar[] BuildID(){
    scope auto value = new AString();
    nsresult __result = inner.GetBuildID(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void BuildID(wchar[] aBuildID){
    scope auto value = new AString(aBuildID);
    nsresult __result = inner.SetBuildID(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   * The URL to a page which offers details about the content of this 
   * update. Ideally, this page is not the release notes but some other page
   * that summarizes the differences between this update and the previous,
   * which also links to the release notes.
   */
  /* attribute AString detailsURL; */
  wchar[] DetailsURL(){
    scope auto value = new AString();
    nsresult __result = inner.GetDetailsURL(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void DetailsURL(wchar[] aDetailsURL){
    scope auto value = new AString(aDetailsURL);
    nsresult __result = inner.SetDetailsURL(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   * The URL to a HTML fragment that contains a license for this update. If
   * this is specified, the user is shown the license file after they choose
   * to install the update and they must agree to it before the download 
   * commences.
   */
  /* attribute AString licenseURL; */
  wchar[] LicenseURL(){
    scope auto value = new AString();
    nsresult __result = inner.GetLicenseURL(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void LicenseURL(wchar[] aLicenseURL){
    scope auto value = new AString(aLicenseURL);
    nsresult __result = inner.SetLicenseURL(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   * The URL to the Update Service that supplied this update.
   */
  /* attribute AString serviceURL; */
  wchar[] ServiceURL(){
    scope auto value = new AString();
    nsresult __result = inner.GetServiceURL(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void ServiceURL(wchar[] aServiceURL){
    scope auto value = new AString(aServiceURL);
    nsresult __result = inner.SetServiceURL(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   * Whether or not the update being downloaded is a complete replacement of
   * the user's existing installation or a patch representing the difference
   * between the new version and the previous version.
   */
  /* attribute boolean isCompleteUpdate; */
  PRBool IsCompleteUpdate(){
    PRBool value;
    nsresult __result = inner.GetIsCompleteUpdate(&value);
    CheckException(__result);
    return value;
  }
  void IsCompleteUpdate(PRBool aIsCompleteUpdate){
    nsresult __result = inner.SetIsCompleteUpdate(aIsCompleteUpdate);
    CheckException(__result);
  }

  /**
   * Whether or not the update is a security update or not. If this is true, 
   * then we present more serious sounding user interface messages to the 
   * user. 
   */
  /* attribute boolean isSecurityUpdate; */
  PRBool IsSecurityUpdate(){
    PRBool value;
    nsresult __result = inner.GetIsSecurityUpdate(&value);
    CheckException(__result);
    return value;
  }
  void IsSecurityUpdate(PRBool aIsSecurityUpdate){
    nsresult __result = inner.SetIsSecurityUpdate(aIsSecurityUpdate);
    CheckException(__result);
  }

  /**
   * When the update was installed.
   */
  /* attribute long long installDate; */
  PRInt64 InstallDate(){
    PRInt64 value;
    nsresult __result = inner.GetInstallDate(&value);
    CheckException(__result);
    return value;
  }
  void InstallDate(PRInt64 aInstallDate){
    nsresult __result = inner.SetInstallDate(aInstallDate);
    CheckException(__result);
  }

  /**
   * A message associated with this update, if any.
   */
  /* attribute AString statusText; */
  wchar[] StatusText(){
    scope auto value = new AString();
    nsresult __result = inner.GetStatusText(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void StatusText(wchar[] aStatusText){
    scope auto value = new AString(aStatusText);
    nsresult __result = inner.SetStatusText(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   * The currently selected patch for this update.
   */
  /* readonly attribute nsIUpdatePatch selectedPatch; */
  nsIUpdatePatchD  SelectedPatch(){
    nsIUpdatePatch value;
    nsresult __result = inner.GetSelectedPatch(&value);
    CheckException(__result);
    return new nsIUpdatePatchD(value);
  }

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
  wchar[] State(){
    scope auto value = new AString();
    nsresult __result = inner.GetState(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void State(wchar[] aState){
    scope auto value = new AString(aState);
    nsresult __result = inner.SetState(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   * A numeric error code that conveys additional information about the state
   * of a failed update.  If the update is not in the "failed" state, then this
   * value is zero.
   *
   * TODO: Define typical error codes (for now, see updater/errors.h)
   */
  /* attribute long errorCode; */
  PRInt32 ErrorCode(){
    PRInt32 value;
    nsresult __result = inner.GetErrorCode(&value);
    CheckException(__result);
    return value;
  }
  void ErrorCode(PRInt32 aErrorCode){
    nsresult __result = inner.SetErrorCode(aErrorCode);
    CheckException(__result);
  }

  /**
   * The number of patches supplied by this update.
   */
  /* readonly attribute unsigned long patchCount; */
  PRUint32 PatchCount(){
    PRUint32 value;
    nsresult __result = inner.GetPatchCount(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Retrieves a patch. 
   * @param   index
   *          The index of the patch to retrieve.
   * @returns The nsIUpdatePatch at the specified index.
   */
  /* nsIUpdatePatch getPatchAt (in unsigned long index); */
  nsIUpdatePatchD  GetPatchAt(PRUint32 index){
    nsIUpdatePatch _retval;
    nsresult __result = inner.GetPatchAt(index, &_retval);
    CheckException(__result);
    return new nsIUpdatePatchD(_retval);
  }

  /**
   * Serializes this update object into a DOM Element
   * @param   updates
   *          The document to serialize into
   * @returns The DOM Element created by the serialization process
   */
  /* nsIDOMElement serialize (in nsIDOMDocument updates); */
  nsIDOMElementD  Serialize(nsIDOMDocumentD updates){
    nsIDOMElement _retval;
    nsresult __result = inner.Serialize(updates ? cast(nsIDOMDocument)updates : null, &_retval);
    CheckException(__result);
    return new nsIDOMElementD(_retval);
  }

private:
  nsIUpdate inner;

}


/* starting wrapper class:    nsIUpdate_MOZILLA_1_8_BRANCH */
/**
 * A MOZILLA_1_8_BRANCH-specific interface that adds the 'channel' attribute
 * to the nsIUpdate interface. This attribute has been added to nsIUpdate on
 * the trunk.
 */
class nsIUpdate_MOZILLA_1_8_BRANCHD : public nsIUpdateD {

  static const nsIID IID = NS_IUPDATE_MOZILLA_1_8_BRANCH_IID;


  alias nsIUpdate_MOZILLA_1_8_BRANCH InnerType;

  this(nsIUpdate_MOZILLA_1_8_BRANCH intr){
    super(intr);
    this.inner = intr;
  }

  nsIUpdate_MOZILLA_1_8_BRANCH opCast() {
    return inner;
  }

  void opAssign(nsIUpdate_MOZILLA_1_8_BRANCH value) {
    inner = value;
  }

  /**
   * The channel used to retrieve this update from the Update Service.
   */
  /* attribute AString channel; */
  wchar[] Channel(){
    scope auto value = new AString();
    nsresult __result = inner.GetChannel(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Channel(wchar[] aChannel){
    scope auto value = new AString(aChannel);
    nsresult __result = inner.SetChannel(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIUpdate_MOZILLA_1_8_BRANCH inner;

}


/* starting wrapper class:    nsIUpdateCheckListener */
/**
 * An interface describing an object that listens to the progress of an update
 * check operation. This object is notified as the check continues, finishes
 * and if it has an error. 
 */
class nsIUpdateCheckListenerD : public nsISupportsD {

  static const nsIID IID = NS_IUPDATECHECKLISTENER_IID;


  alias nsIUpdateCheckListener InnerType;

  this(nsIUpdateCheckListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIUpdateCheckListener opCast() {
    return inner;
  }

  void opAssign(nsIUpdateCheckListener value) {
    inner = value;
  }

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
  void OnProgress(nsIXMLHttpRequestD request, PRUint32 position, PRUint32 totalSize){
    nsresult __result = inner.OnProgress(request ? cast(nsIXMLHttpRequest)request : null, position, totalSize);
    CheckException(__result);
  }

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
  void OnCheckComplete(nsIXMLHttpRequestD request, nsIUpdateD *updates, PRUint32 updateCount){
    nsresult __result = inner.OnCheckComplete(request ? cast(nsIXMLHttpRequest)request : null, updates ? cast(nsIUpdate)updates : null, updateCount);
    CheckException(__result);
  }

  /**
   * An error occurred while loading the remote update service file. 
   * @param   request
   *          The nsIXMLHttpRequest handling the update check.
   * @param   update
   *          A nsIUpdate object that contains details about the 
   *          error in its |statusText| property.
   */
  /* void onError (in nsIXMLHttpRequest request, in nsIUpdate update); */
  void OnError(nsIXMLHttpRequestD request, nsIUpdateD update){
    nsresult __result = inner.OnError(request ? cast(nsIXMLHttpRequest)request : null, update ? cast(nsIUpdate)update : null);
    CheckException(__result);
  }

private:
  nsIUpdateCheckListener inner;

}


/* starting wrapper class:    nsIUpdateChecker */
/**
 * An interface describing an object that knows how to check for updates.
 */
class nsIUpdateCheckerD : public nsISupportsD {

  static const nsIID IID = NS_IUPDATECHECKER_IID;


  alias nsIUpdateChecker InnerType;

  this(nsIUpdateChecker intr){
    super(intr);
    this.inner = intr;
  }

  nsIUpdateChecker opCast() {
    return inner;
  }

  void opAssign(nsIUpdateChecker value) {
    inner = value;
  }

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
  void CheckForUpdates(nsIUpdateCheckListenerD listener, PRBool force){
    nsresult __result = inner.CheckForUpdates(listener ? cast(nsIUpdateCheckListener)listener : null, force);
    CheckException(__result);
  }

  /**
   * Constants for the |stopChecking| function that tell the Checker how long
   * to stop checking:
   * 
   * CURRENT_CHECK:     Stops the current (active) check only
   * CURRENT_SESSION:   Stops all checking for the current session
   * ANY_CHECKS:        Stops all checking, any session from now on
   *                    (disables update checking preferences)
   */
  enum { CURRENT_CHECK = 1U }

  enum { CURRENT_SESSION = 2U }

  enum { ANY_CHECKS = 3U }

  /**
   * Ends any pending update check.
   * @param   duration
   *          A value representing the set of checks to stop doing.
   */
  /* void stopChecking (in unsigned short duration); */
  void StopChecking(PRUint16 duration){
    nsresult __result = inner.StopChecking(duration);
    CheckException(__result);
  }

private:
  nsIUpdateChecker inner;

}


/* starting wrapper class:    nsIApplicationUpdateService */
/**
 * An interface describing a global application service that handles performing
 * background update checks and provides utilities for selecting and 
 * downloading update patches.
 */
class nsIApplicationUpdateServiceD : public nsISupportsD {

  static const nsIID IID = NS_IAPPLICATIONUPDATESERVICE_IID;


  alias nsIApplicationUpdateService InnerType;

  this(nsIApplicationUpdateService intr){
    super(intr);
    this.inner = intr;
  }

  nsIApplicationUpdateService opCast() {
    return inner;
  }

  void opAssign(nsIApplicationUpdateService value) {
    inner = value;
  }

  /**
   * The Update Checker used for background update checking.
   */
  /* readonly attribute nsIUpdateChecker backgroundChecker; */
  nsIUpdateCheckerD  BackgroundChecker(){
    nsIUpdateChecker value;
    nsresult __result = inner.GetBackgroundChecker(&value);
    CheckException(__result);
    return new nsIUpdateCheckerD(value);
  }

  /**
   * Selects the best update to install from a list of available updates.
   * @param   updates
   *          An array of updates that are available
   * @param   updateCount
   *          The length of the |updates| array
   */
  /* nsIUpdate selectUpdate ([array, size_is (updateCount)] in nsIUpdate updates, in unsigned long updateCount); */
  nsIUpdateD  SelectUpdate(nsIUpdateD *updates, PRUint32 updateCount){
    nsIUpdate _retval;
    nsresult __result = inner.SelectUpdate(updates ? cast(nsIUpdate)updates : null, updateCount, &_retval);
    CheckException(__result);
    return new nsIUpdateD(_retval);
  }

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
  void AddDownloadListener(nsIRequestObserverD listener){
    nsresult __result = inner.AddDownloadListener(listener ? cast(nsIRequestObserver)listener : null);
    CheckException(__result);
  }

  /**
   * Removes a listener that is receiving progress and state information
   * about the update that is currently being downloaded. 
   * @param   listener
   *          The listener object to remove.
   */
  /* void removeDownloadListener (in nsIRequestObserver listener); */
  void RemoveDownloadListener(nsIRequestObserverD listener){
    nsresult __result = inner.RemoveDownloadListener(listener ? cast(nsIRequestObserver)listener : null);
    CheckException(__result);
  }

  /**
   * 
   */
  /* AString downloadUpdate (in nsIUpdate update, in boolean background); */
  wchar[] DownloadUpdate(nsIUpdateD update, PRBool background){
    scope auto _retval = new AString;
    nsresult __result = inner.DownloadUpdate(update ? cast(nsIUpdate)update : null, background, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Pauses the active update download process
   */
  /* void pauseDownload (); */
  void PauseDownload(){
    nsresult __result = inner.PauseDownload();
    CheckException(__result);
  }

  /**
   * Whether or not there is an download happening at the moment.
   */
  /* readonly attribute boolean isDownloading; */
  PRBool IsDownloading(){
    PRBool value;
    nsresult __result = inner.GetIsDownloading(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Whether or not the Update Service can download and install updates.
   * This is a function of whether or not the current user has access 
   * privileges to the install directory.
   */
  /* readonly attribute boolean canUpdate; */
  PRBool CanUpdate(){
    PRBool value;
    nsresult __result = inner.GetCanUpdate(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIApplicationUpdateService inner;

}


/* starting wrapper class:    nsIUpdateManager */
/**
 * An interface describing a global application service that maintains a list
 * of updates previously performed as well as the current active update. 
 */
class nsIUpdateManagerD : public nsISupportsD {

  static const nsIID IID = NS_IUPDATEMANAGER_IID;


  alias nsIUpdateManager InnerType;

  this(nsIUpdateManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIUpdateManager opCast() {
    return inner;
  }

  void opAssign(nsIUpdateManager value) {
    inner = value;
  }

  /**
   * Gets the update at the specified index
   * @param   index
   *          The index within the updates array
   * @returns The nsIUpdate object at the specified index
   */
  /* nsIUpdate getUpdateAt (in long index); */
  nsIUpdateD  GetUpdateAt(PRInt32 index){
    nsIUpdate _retval;
    nsresult __result = inner.GetUpdateAt(index, &_retval);
    CheckException(__result);
    return new nsIUpdateD(_retval);
  }

  /**
   * Gets the total number of updates in the history list. 
   */
  /* readonly attribute long updateCount; */
  PRInt32 UpdateCount(){
    PRInt32 value;
    nsresult __result = inner.GetUpdateCount(&value);
    CheckException(__result);
    return value;
  }

  /**
   * The active (current) update. The active update is not in the history list.
   */
  /* attribute nsIUpdate activeUpdate; */
  nsIUpdateD  ActiveUpdate(){
    nsIUpdate value;
    nsresult __result = inner.GetActiveUpdate(&value);
    CheckException(__result);
    return new nsIUpdateD(value);
  }
  void ActiveUpdate(nsIUpdateD  aActiveUpdate){
    nsIUpdate value;
    nsresult __result = inner.SetActiveUpdate(value);
    CheckException(__result);
  }

  /**
   * Saves all updates to disk. 
   */
  /* void saveUpdates (); */
  void SaveUpdates(){
    nsresult __result = inner.SaveUpdates();
    CheckException(__result);
  }

private:
  nsIUpdateManager inner;

}


/* starting wrapper class:    nsIUpdatePrompt */
/**
 * An interface describing an object that can show various kinds of Update 
 * notification UI to the user. 
 */
class nsIUpdatePromptD : public nsISupportsD {

  static const nsIID IID = NS_IUPDATEPROMPT_IID;


  alias nsIUpdatePrompt InnerType;

  this(nsIUpdatePrompt intr){
    super(intr);
    this.inner = intr;
  }

  nsIUpdatePrompt opCast() {
    return inner;
  }

  void opAssign(nsIUpdatePrompt value) {
    inner = value;
  }

  /**
   * Shows a user interface that checks for and then displays the available
   * updates.
   */
  /* void checkForUpdates (); */
  void CheckForUpdates(){
    nsresult __result = inner.CheckForUpdates();
    CheckException(__result);
  }

  /**
   * Show a message advising that an update is available for download and
   * install.
   * @param   update
   *          The update to be downloaded and installed
   */
  /* void showUpdateAvailable (in nsIUpdate update); */
  void ShowUpdateAvailable(nsIUpdateD update){
    nsresult __result = inner.ShowUpdateAvailable(update ? cast(nsIUpdate)update : null);
    CheckException(__result);
  }

  /**
   * Show a message advising that an update has now been downloaded and that
   * the user should restart their software should be restarted so that the
   * update can be installed.
   * @param   update
   *          The update that was downloaded
   */
  /* void showUpdateDownloaded (in nsIUpdate update); */
  void ShowUpdateDownloaded(nsIUpdateD update){
    nsresult __result = inner.ShowUpdateDownloaded(update ? cast(nsIUpdate)update : null);
    CheckException(__result);
  }

  /**
   * Shows a message detailing the update which was installed.
   * @param   update
   *          The nsIUpdate object which was just installed
   */
  /* void showUpdateInstalled (in nsIUpdate update); */
  void ShowUpdateInstalled(nsIUpdateD update){
    nsresult __result = inner.ShowUpdateInstalled(update ? cast(nsIUpdate)update : null);
    CheckException(__result);
  }

  /**
   * Shows an error message UI telling the user about some kind of update
   * failure, e.g. failure to apply patch.
   * @param   update
   *          The nsIUpdate object which we could not install
   */
  /* void showUpdateError (in nsIUpdate update); */
  void ShowUpdateError(nsIUpdateD update){
    nsresult __result = inner.ShowUpdateError(update ? cast(nsIUpdate)update : null);
    CheckException(__result);
  }

  /**
   * Shows a list of all updates installed to date.
   * @param   parent
   *          A parent window to anchor this window to. Can be null.
   */
  /* void showUpdateHistory (in nsIDOMWindow parent); */
  void ShowUpdateHistory(nsIDOMWindowD parent){
    nsresult __result = inner.ShowUpdateHistory(parent ? cast(nsIDOMWindow)parent : null);
    CheckException(__result);
  }

private:
  nsIUpdatePrompt inner;

}


/* starting wrapper class:    nsIUpdateTimerManager */
/**
 * An interface describing a global application service that allows long 
 * duration (e.g. 1-7 or more days, weeks or months) timers to be registered
 * and then fired. 
 */
class nsIUpdateTimerManagerD : public nsISupportsD {

  static const nsIID IID = NS_IUPDATETIMERMANAGER_IID;


  alias nsIUpdateTimerManager InnerType;

  this(nsIUpdateTimerManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIUpdateTimerManager opCast() {
    return inner;
  }

  void opAssign(nsIUpdateTimerManager value) {
    inner = value;
  }

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
  void RegisterTimer(wchar[] id, nsITimerCallbackD callback, PRUint32 interval){
    scope auto _id = new AString(id);
    nsresult __result = inner.RegisterTimer(cast(nsAString*)_id, callback ? cast(nsITimerCallback)callback : null, interval);
    CheckException(__result);
  }

private:
  nsIUpdateTimerManager inner;

}

