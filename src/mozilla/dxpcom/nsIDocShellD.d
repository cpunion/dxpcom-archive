/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDocShell.idl
 */

module mozilla.dxpcom.nsIDocShellD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDocShell;


public import mozilla.dxpcom.nsIDocShellD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIChannel;

public import mozilla.dxpcom.nsIChannelD;

public import mozilla.xpcom.nsIContentViewer;

public import mozilla.dxpcom.nsIContentViewerD;

public import mozilla.xpcom.nsIURIContentListener;

public import mozilla.dxpcom.nsIURIContentListenerD;

public import mozilla.xpcom.nsIChromeEventHandler;

public import mozilla.dxpcom.nsIChromeEventHandlerD;

public import mozilla.xpcom.nsIDocShellLoadInfo;

public import mozilla.dxpcom.nsIDocShellLoadInfoD;

public import mozilla.xpcom.nsIDocumentCharsetInfo;

public import mozilla.dxpcom.nsIDocumentCharsetInfoD;

public import mozilla.xpcom.nsIWebNavigation;

public import mozilla.dxpcom.nsIWebNavigationD;

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;

public import mozilla.xpcom.nsIRequest;

public import mozilla.dxpcom.nsIRequestD;

public import mozilla.xpcom.nsISHEntry;

public import mozilla.dxpcom.nsISHEntryD;

public import mozilla.xpcom.nsISecureBrowserUI;

public import mozilla.dxpcom.nsISecureBrowserUID;

public import mozilla.xpcom.nsIDOMStorage;

public import mozilla.dxpcom.nsIDOMStorageD;


/* starting wrapper class:    nsIDocShell */
class nsIDocShellD : public nsISupportsD {

  static const nsIID IID = NS_IDOCSHELL_IID;


  alias nsIDocShell InnerType;

  this(nsIDocShell intr){
    super(intr);
    this.inner = intr;
  }

  nsIDocShell opCast() {
    return inner;
  }

  void opAssign(nsIDocShell value) {
    inner = value;
  }

  /**
   * Loads a given URI.  This will give priority to loading the requested URI
   * in the object implementing	this interface.  If it can't be loaded here
   * however, the URL dispatcher will go through its normal process of content
   * loading.
   *
   * @param uri        - The URI to load.
   * @param loadInfo   - This is the extended load info for this load.  This
   *                     most often will be null, but if you need to do 
   *                     additional setup for this load you can get a loadInfo
   *                     object by calling createLoadInfo.  Once you have this
   *                     object you can set the needed properties on it and
   *                     then pass it to loadURI.
   * @param aLoadFlags - Flags to modify load behaviour. Flags are defined
   *                     in nsIWebNavigation.
   */
  /* [noscript] void loadURI (in nsIURI uri, in nsIDocShellLoadInfo loadInfo, in unsigned long aLoadFlags, in boolean firstParty); */
  void LoadURI(nsIURID uri, nsIDocShellLoadInfoD loadInfo, PRUint32 aLoadFlags, PRBool firstParty){
    nsresult __result = inner.LoadURI(uri ? cast(nsIURI)uri : null, loadInfo ? cast(nsIDocShellLoadInfo)loadInfo : null, aLoadFlags, firstParty);
    CheckException(__result);
  }

  /**
   * Loads a given stream. This will give priority to loading the requested
   * stream in the object implementing this interface. If it can't be loaded
   * here however, the URL dispatched will go through its normal process of
   * content loading.
   *
   * @param aStream         - The input stream that provides access to the data
   *                          to be loaded.  This must be a blocking, threadsafe
   *                          stream implementation.
   * @param aURI            - The URI representing the stream, or null.
   * @param aContentType    - The type (MIME) of data being loaded (empty if unknown).
   * @param aContentCharset - The charset of the data being loaded (empty if unknown).
   * @param aLoadInfo       - This is the extended load info for this load.  This
   *                          most often will be null, but if you need to do 
   *                          additional setup for this load you can get a
   *                          loadInfo object by calling createLoadInfo.  Once
   *                          you have this object you can set the needed 
   *                          properties on it and then pass it to loadStream.
   */
  /* [noscript] void loadStream (in nsIInputStream aStream, in nsIURI aURI, in ACString aContentType, in ACString aContentCharset, in nsIDocShellLoadInfo aLoadInfo); */
  void LoadStream(nsIInputStreamD aStream, nsIURID aURI, char[] aContentType, char[] aContentCharset, nsIDocShellLoadInfoD aLoadInfo){
    scope auto _aContentType = new ACString(aContentType);
    scope auto _aContentCharset = new ACString(aContentCharset);
    nsresult __result = inner.LoadStream(aStream ? cast(nsIInputStream)aStream : null, aURI ? cast(nsIURI)aURI : null, cast(nsACString*)_aContentType, cast(nsACString*)_aContentCharset, aLoadInfo ? cast(nsIDocShellLoadInfo)aLoadInfo : null);
    CheckException(__result);
  }

  enum { INTERNAL_LOAD_FLAGS_NONE = 0 }

  enum { INTERNAL_LOAD_FLAGS_INHERIT_OWNER = 1 }

  enum { INTERNAL_LOAD_FLAGS_DONT_SEND_REFERRER = 2 }

  enum { INTERNAL_LOAD_FLAGS_ALLOW_THIRD_PARTY_FIXUP = 4 }

  enum { INTERNAL_LOAD_FLAGS_FIRST_LOAD = 8 }

  /**
   * Loads the given URI.  This method is identical to loadURI(...) except
   * that its parameter list is broken out instead of being packaged inside
   * of an nsIDocShellLoadInfo object...
   *
   * @param aURI            - The URI to load.
   * @param aReferrer       - Referring URI
   * @param aOwner          - Owner (security principal) 
   * @param aInheritOwner   - Flag indicating whether the owner of the current
   *                          document should be inherited if aOwner is null.
   * @param aStopActiveDoc  - Flag indicating whether loading the current
   *                          document should be stopped.
   * @param aWindowTarget   - Window target for the load.
   * @param aTypeHint       - A hint as to the content-type of the resulting
   *                          data.  May be null or empty if no hint.
   * @param aPostDataStream - Post data stream (if POSTing)
   * @param aHeadersStream  - Stream containing "extra" request headers...
   * @param aLoadFlags      - Flags to modify load behaviour. Flags are defined
   *                          in nsIWebNavigation.
   * @param aSHEntry        - Active Session History entry (if loading from SH)
   */
  /* [noscript] void internalLoad (in nsIURI aURI, in nsIURI aReferrer, in nsISupports aOwner, in PRUint32 aFlags, in wstring aWindowTarget, in string aTypeHint, in nsIInputStream aPostDataStream, in nsIInputStream aHeadersStream, in unsigned long aLoadFlags, in nsISHEntry aSHEntry, in boolean firstParty, out nsIDocShell aDocShell, out nsIRequest aRequest); */
  void InternalLoad(nsIURID aURI, nsIURID aReferrer, nsISupportsD aOwner, PRUint32 aFlags, PRUnichar*aWindowTarget, char*aTypeHint, nsIInputStreamD aPostDataStream, nsIInputStreamD aHeadersStream, PRUint32 aLoadFlags, nsISHEntryD aSHEntry, PRBool firstParty, out nsIDocShellD aDocShell, out nsIRequestD aRequest){
    nsIDocShell _aDocShell;
    nsIRequest _aRequest;
    nsresult __result = inner.InternalLoad(aURI ? cast(nsIURI)aURI : null, aReferrer ? cast(nsIURI)aReferrer : null, aOwner ? cast(nsISupports)aOwner : null, aFlags, aWindowTarget, aTypeHint, aPostDataStream ? cast(nsIInputStream)aPostDataStream : null, aHeadersStream ? cast(nsIInputStream)aHeadersStream : null, aLoadFlags, aSHEntry ? cast(nsISHEntry)aSHEntry : null, firstParty, &_aDocShell, &_aRequest);
    CheckException(__result);
    aDocShell = _aDocShell ? new nsIDocShellD(_aDocShell) : null;
    aRequest = _aRequest ? new nsIRequestD(_aRequest) : null;
  }

  /**
   * Creates a DocShellLoadInfo object that you can manipulate and then pass
   * to loadURI.
   */
  /* void createLoadInfo (out nsIDocShellLoadInfo loadInfo); */
  void CreateLoadInfo(out nsIDocShellLoadInfoD loadInfo){
    nsIDocShellLoadInfo _loadInfo;
    nsresult __result = inner.CreateLoadInfo(&_loadInfo);
    CheckException(__result);
    loadInfo = _loadInfo ? new nsIDocShellLoadInfoD(_loadInfo) : null;
  }

  /**
   * Reset state to a new content model within the current document and the document
   * viewer.  Called by the document before initiating an out of band document.write().
   */
  /* void prepareForNewContentModel (); */
  void PrepareForNewContentModel(){
    nsresult __result = inner.PrepareForNewContentModel();
    CheckException(__result);
  }

  /**
   * For editors and suchlike who wish to change the URI associated with the
   * document. Note if you want to get the current URI, use the read-only
   * property on nsIWebNavigation.
   */
  /* void setCurrentURI (in nsIURI aURI); */
  void SetCurrentURI(nsIURID aURI){
    nsresult __result = inner.SetCurrentURI(aURI ? cast(nsIURI)aURI : null);
    CheckException(__result);
  }

  /**
   * Notify the associated content viewer and all child docshells that they are
   * about to be hidden.  If |isUnload| is true, then the document is being
   * unloaded as well.
   */
  /* [noscript] void firePageHideNotification (in boolean isUnload); */
  void FirePageHideNotification(PRBool isUnload){
    nsresult __result = inner.FirePageHideNotification(isUnload);
    CheckException(__result);
  }

  /**
   * Presentation context for the currently loaded document.  This may be null.
   */
  /* [noscript] readonly attribute nsPresContext presContext; */
  nsPresContext * PresContext(){
    nsPresContext * value;
    nsresult __result = inner.GetPresContext(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Presentation shell for the currently loaded document.  This may be null.
   */
  /* [noscript] readonly attribute nsIPresShell presShell; */
  nsIPresShell * PresShell(){
    nsIPresShell * value;
    nsresult __result = inner.GetPresShell(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Presentation shell for the oldest document, if this docshell is
   * currently transitioning between documents.
   */
  /* [noscript] readonly attribute nsIPresShell eldestPresShell; */
  nsIPresShell * EldestPresShell(){
    nsIPresShell * value;
    nsresult __result = inner.GetEldestPresShell(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Content Viewer that is currently loaded for this DocShell.  This may
   * change as the underlying content changes.
   */
  /* readonly attribute nsIContentViewer contentViewer; */
  nsIContentViewerD  ContentViewer(){
    nsIContentViewer value;
    nsresult __result = inner.GetContentViewer(&value);
    CheckException(__result);
    return new nsIContentViewerD(value);
  }

  /**
   * This attribute allows chrome to tie in to handle DOM events that may
   * be of interest to chrome.
   */
  /* attribute nsIChromeEventHandler chromeEventHandler; */
  nsIChromeEventHandlerD  ChromeEventHandler(){
    nsIChromeEventHandler value;
    nsresult __result = inner.GetChromeEventHandler(&value);
    CheckException(__result);
    return new nsIChromeEventHandlerD(value);
  }
  void ChromeEventHandler(nsIChromeEventHandlerD  aChromeEventHandler){
    nsIChromeEventHandler value;
    nsresult __result = inner.SetChromeEventHandler(value);
    CheckException(__result);
  }

  /**
   * The document charset info.  This is used by a load to determine priorities
   * for charset detection etc.
   */
  /* attribute nsIDocumentCharsetInfo documentCharsetInfo; */
  nsIDocumentCharsetInfoD  DocumentCharsetInfo(){
    nsIDocumentCharsetInfo value;
    nsresult __result = inner.GetDocumentCharsetInfo(&value);
    CheckException(__result);
    return new nsIDocumentCharsetInfoD(value);
  }
  void DocumentCharsetInfo(nsIDocumentCharsetInfoD  aDocumentCharsetInfo){
    nsIDocumentCharsetInfo value;
    nsresult __result = inner.SetDocumentCharsetInfo(value);
    CheckException(__result);
  }

  /**
   * Whether to allow plugin execution
   */
  /* attribute boolean allowPlugins; */
  PRBool AllowPlugins(){
    PRBool value;
    nsresult __result = inner.GetAllowPlugins(&value);
    CheckException(__result);
    return value;
  }
  void AllowPlugins(PRBool aAllowPlugins){
    nsresult __result = inner.SetAllowPlugins(aAllowPlugins);
    CheckException(__result);
  }

  /**
   * Whether to allow Javascript execution
   */
  /* attribute boolean allowJavascript; */
  PRBool AllowJavascript(){
    PRBool value;
    nsresult __result = inner.GetAllowJavascript(&value);
    CheckException(__result);
    return value;
  }
  void AllowJavascript(PRBool aAllowJavascript){
    nsresult __result = inner.SetAllowJavascript(aAllowJavascript);
    CheckException(__result);
  }

  /**
   * Attribute stating if refresh based redirects can be allowed
   */
  /* attribute boolean allowMetaRedirects; */
  PRBool AllowMetaRedirects(){
    PRBool value;
    nsresult __result = inner.GetAllowMetaRedirects(&value);
    CheckException(__result);
    return value;
  }
  void AllowMetaRedirects(PRBool aAllowMetaRedirects){
    nsresult __result = inner.SetAllowMetaRedirects(aAllowMetaRedirects);
    CheckException(__result);
  }

  /**
   * Attribute stating if it should allow subframes (framesets/iframes) or not
   */
  /* attribute boolean allowSubframes; */
  PRBool AllowSubframes(){
    PRBool value;
    nsresult __result = inner.GetAllowSubframes(&value);
    CheckException(__result);
    return value;
  }
  void AllowSubframes(PRBool aAllowSubframes){
    nsresult __result = inner.SetAllowSubframes(aAllowSubframes);
    CheckException(__result);
  }

  /**
   * Attribute stating whether or not images should be loaded.
   */
  /* attribute boolean allowImages; */
  PRBool AllowImages(){
    PRBool value;
    nsresult __result = inner.GetAllowImages(&value);
    CheckException(__result);
    return value;
  }
  void AllowImages(PRBool aAllowImages){
    nsresult __result = inner.SetAllowImages(aAllowImages);
    CheckException(__result);
  }

  /**
   * Get an enumerator over this docShell and its children.
   *
   * @param aItemType  - Only include docShells of this type, or if typeAll,
   *                     include all child shells.
   *                     Uses types from nsIDocShellTreeItem.
   * @param aDirection - Whether to enumerate forwards or backwards.
   */
  enum { ENUMERATE_FORWARDS = 0 }

  enum { ENUMERATE_BACKWARDS = 1 }

  /* nsISimpleEnumerator getDocShellEnumerator (in long aItemType, in long aDirection); */
  nsISimpleEnumeratorD  GetDocShellEnumerator(PRInt32 aItemType, PRInt32 aDirection){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.GetDocShellEnumerator(aItemType, aDirection, &_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

  /**
   * The type of application that created this window
   */
  enum { APP_TYPE_UNKNOWN = 0U }

  enum { APP_TYPE_MAIL = 1U }

  enum { APP_TYPE_EDITOR = 2U }

  /* attribute unsigned long appType; */
  PRUint32 AppType(){
    PRUint32 value;
    nsresult __result = inner.GetAppType(&value);
    CheckException(__result);
    return value;
  }
  void AppType(PRUint32 aAppType){
    nsresult __result = inner.SetAppType(aAppType);
    CheckException(__result);
  }

  /**
   * certain dochshells (like the message pane)
   * should not throw up auth dialogs
   * because it can act as a password trojan
   */
  /* attribute boolean allowAuth; */
  PRBool AllowAuth(){
    PRBool value;
    nsresult __result = inner.GetAllowAuth(&value);
    CheckException(__result);
    return value;
  }
  void AllowAuth(PRBool aAllowAuth){
    nsresult __result = inner.SetAllowAuth(aAllowAuth);
    CheckException(__result);
  }

  /**
   * Set/Get the document scale factor.  When setting this attribute, a
   * NS_ERROR_NOT_IMPLEMENTED error may be returned by implementations
   * not supporting zoom.  Implementations not supporting zoom should return
   * 1.0 all the time for the Get operation.  1.0 by the way is the default
   * of zoom.  This means 100% of normal scaling or in other words normal size
   * no zoom. 
   */
  /* attribute float zoom; */
  float Zoom(){
    float value;
    nsresult __result = inner.GetZoom(&value);
    CheckException(__result);
    return value;
  }
  void Zoom(float aZoom){
    nsresult __result = inner.SetZoom(aZoom);
    CheckException(__result);
  }

  /* attribute long marginWidth; */
  PRInt32 MarginWidth(){
    PRInt32 value;
    nsresult __result = inner.GetMarginWidth(&value);
    CheckException(__result);
    return value;
  }
  void MarginWidth(PRInt32 aMarginWidth){
    nsresult __result = inner.SetMarginWidth(aMarginWidth);
    CheckException(__result);
  }

  /* attribute long marginHeight; */
  PRInt32 MarginHeight(){
    PRInt32 value;
    nsresult __result = inner.GetMarginHeight(&value);
    CheckException(__result);
    return value;
  }
  void MarginHeight(PRInt32 aMarginHeight){
    nsresult __result = inner.SetMarginHeight(aMarginHeight);
    CheckException(__result);
  }

  /* attribute boolean hasFocus; */
  PRBool HasFocus(){
    PRBool value;
    nsresult __result = inner.GetHasFocus(&value);
    CheckException(__result);
    return value;
  }
  void HasFocus(PRBool aHasFocus){
    nsresult __result = inner.SetHasFocus(aHasFocus);
    CheckException(__result);
  }

  /* attribute boolean canvasHasFocus; */
  PRBool CanvasHasFocus(){
    PRBool value;
    nsresult __result = inner.GetCanvasHasFocus(&value);
    CheckException(__result);
    return value;
  }
  void CanvasHasFocus(PRBool aCanvasHasFocus){
    nsresult __result = inner.SetCanvasHasFocus(aCanvasHasFocus);
    CheckException(__result);
  }

  /* void tabToTreeOwner (in boolean forward, out boolean tookFocus); */
  void TabToTreeOwner(PRBool forward, out PRBool tookFocus){
    nsresult __result = inner.TabToTreeOwner(forward, &tookFocus);
    CheckException(__result);
  }

  /**
   * Current busy state for DocShell
   */
  enum { BUSY_FLAGS_NONE = 0U }

  enum { BUSY_FLAGS_BUSY = 1U }

  enum { BUSY_FLAGS_BEFORE_PAGE_LOAD = 2U }

  enum { BUSY_FLAGS_PAGE_LOADING = 4U }

  /**
   * Load commands for the document 
   */
  enum { LOAD_CMD_NORMAL = 1U }

  enum { LOAD_CMD_RELOAD = 2U }

  enum { LOAD_CMD_HISTORY = 4U }

  /* readonly attribute unsigned long busyFlags; */
  PRUint32 BusyFlags(){
    PRUint32 value;
    nsresult __result = inner.GetBusyFlags(&value);
    CheckException(__result);
    return value;
  }

  /* attribute unsigned long loadType; */
  PRUint32 LoadType(){
    PRUint32 value;
    nsresult __result = inner.GetLoadType(&value);
    CheckException(__result);
    return value;
  }
  void LoadType(PRUint32 aLoadType){
    nsresult __result = inner.SetLoadType(aLoadType);
    CheckException(__result);
  }

  /* boolean isBeingDestroyed (); */
  PRBool IsBeingDestroyed(){
    PRBool _retval;
    nsresult __result = inner.IsBeingDestroyed(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* readonly attribute boolean isExecutingOnLoadHandler; */
  PRBool IsExecutingOnLoadHandler(){
    PRBool value;
    nsresult __result = inner.GetIsExecutingOnLoadHandler(&value);
    CheckException(__result);
    return value;
  }

  /* attribute nsILayoutHistoryState layoutHistoryState; */
  nsILayoutHistoryStateD  LayoutHistoryState(){
    nsILayoutHistoryState value;
    nsresult __result = inner.GetLayoutHistoryState(&value);
    CheckException(__result);
    return new nsILayoutHistoryStateD(value);
  }
  void LayoutHistoryState(nsILayoutHistoryStateD  aLayoutHistoryState){
    nsILayoutHistoryState value;
    nsresult __result = inner.SetLayoutHistoryState(value);
    CheckException(__result);
  }

  /* readonly attribute boolean shouldSaveLayoutState; */
  PRBool ShouldSaveLayoutState(){
    PRBool value;
    nsresult __result = inner.GetShouldSaveLayoutState(&value);
    CheckException(__result);
    return value;
  }

  /**
   * The SecureBrowserUI object for this docshell.  This is set by XUL
   * <browser> or nsWebBrowser for their root docshell.
   */
  /* attribute nsISecureBrowserUI securityUI; */
  nsISecureBrowserUID  SecurityUI(){
    nsISecureBrowserUI value;
    nsresult __result = inner.GetSecurityUI(&value);
    CheckException(__result);
    return new nsISecureBrowserUID(value);
  }
  void SecurityUI(nsISecureBrowserUID  aSecurityUI){
    nsISecureBrowserUI value;
    nsresult __result = inner.SetSecurityUI(value);
    CheckException(__result);
  }

  /**
   * Cancel the XPCOM timers for each meta-refresh URI in this docshell,
   * and this docshell's children, recursively. The meta-refresh timers can be
   * restarted using resumeRefreshURIs().  If the timers are already suspended,
   * this has no effect.
   */
  /* void suspendRefreshURIs (); */
  void SuspendRefreshURIs(){
    nsresult __result = inner.SuspendRefreshURIs();
    CheckException(__result);
  }

  /**
   * Restart the XPCOM timers for each meta-refresh URI in this docshell,
   * and this docshell's children, recursively.  If the timers are already
   * running, this has no effect.
   */
  /* void resumeRefreshURIs (); */
  void ResumeRefreshURIs(){
    nsresult __result = inner.ResumeRefreshURIs();
    CheckException(__result);
  }

  /**
   * Begin firing WebProgressListener notifications for restoring a page
   * presentation. |viewer| is the content viewer whose document we are
   * starting to load.  If null, it defaults to the docshell's current content
   * viewer, creating one if necessary.  |top| should be true for the toplevel
   * docshell that is being restored; it will be set to false when this method
   * is called for child docshells.  This method will post an event to
   * complete the simulated load after returning to the event loop.
   */
  /* void beginRestore (in nsIContentViewer viewer, in boolean top); */
  void BeginRestore(nsIContentViewerD viewer, PRBool top){
    nsresult __result = inner.BeginRestore(viewer ? cast(nsIContentViewer)viewer : null, top);
    CheckException(__result);
  }

  /**
   * Finish firing WebProgressListener notifications and DOM events for
   * restoring a page presentation.  This should only be called via
   * beginRestore().
   */
  /* void finishRestore (); */
  void FinishRestore(){
    nsresult __result = inner.FinishRestore();
    CheckException(__result);
  }

  /* readonly attribute boolean restoringDocument; */
  PRBool RestoringDocument(){
    PRBool value;
    nsresult __result = inner.GetRestoringDocument(&value);
    CheckException(__result);
    return value;
  }

  /* attribute boolean useErrorPages; */
  PRBool UseErrorPages(){
    PRBool value;
    nsresult __result = inner.GetUseErrorPages(&value);
    CheckException(__result);
    return value;
  }
  void UseErrorPages(PRBool aUseErrorPages){
    nsresult __result = inner.SetUseErrorPages(aUseErrorPages);
    CheckException(__result);
  }

  /**
   * Keeps track of the previous SHTransaction index and the current
   * SHTransaction index at the time that the doc shell begins to load.
   * Used for ContentViewer eviction.
   */
  /* readonly attribute long previousTransIndex; */
  PRInt32 PreviousTransIndex(){
    PRInt32 value;
    nsresult __result = inner.GetPreviousTransIndex(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long loadedTransIndex; */
  PRInt32 LoadedTransIndex(){
    PRInt32 value;
    nsresult __result = inner.GetLoadedTransIndex(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Notification that entries have been removed from the beginning of a
   * nsSHistory which has this as its rootDocShell.
   *
   * @param numEntries - The number of entries removed
   */
  /* void historyPurged (in long numEntries); */
  void HistoryPurged(PRInt32 numEntries){
    nsresult __result = inner.HistoryPurged(numEntries);
    CheckException(__result);
  }

private:
  nsIDocShell inner;

}


/* starting wrapper class:    nsIDocShell_MOZILLA_1_8_BRANCH */
class nsIDocShell_MOZILLA_1_8_BRANCHD : public nsISupportsD {

  static const nsIID IID = NS_IDOCSHELL_MOZILLA_1_8_BRANCH_IID;


  alias nsIDocShell_MOZILLA_1_8_BRANCH InnerType;

  this(nsIDocShell_MOZILLA_1_8_BRANCH intr){
    super(intr);
    this.inner = intr;
  }

  nsIDocShell_MOZILLA_1_8_BRANCH opCast() {
    return inner;
  }

  void opAssign(nsIDocShell_MOZILLA_1_8_BRANCH value) {
    inner = value;
  }

  /* nsIDOMStorage getSessionStorageForURI (in nsIURI uri); */
  nsIDOMStorageD  GetSessionStorageForURI(nsIURID uri){
    nsIDOMStorage _retval;
    nsresult __result = inner.GetSessionStorageForURI(uri ? cast(nsIURI)uri : null, &_retval);
    CheckException(__result);
    return new nsIDOMStorageD(_retval);
  }

  /* void addSessionStorage (in ACString aDomain, in nsIDOMStorage storage); */
  void AddSessionStorage(char[] aDomain, nsIDOMStorageD storage){
    scope auto _aDomain = new ACString(aDomain);
    nsresult __result = inner.AddSessionStorage(cast(nsACString*)_aDomain, storage ? cast(nsIDOMStorage)storage : null);
    CheckException(__result);
  }

  /**
   * Gets the channel for the currently loaded document, if any. 
   * For a new document load, this will be the channel of the previous document
   * until after OnLocationChange fires.
   */
  /* readonly attribute nsIChannel currentDocumentChannel; */
  nsIChannelD  CurrentDocumentChannel(){
    nsIChannel value;
    nsresult __result = inner.GetCurrentDocumentChannel(&value);
    CheckException(__result);
    return new nsIChannelD(value);
  }

private:
  nsIDocShell_MOZILLA_1_8_BRANCH inner;

}

