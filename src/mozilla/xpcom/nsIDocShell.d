/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDocShell.idl
 */

module mozilla.xpcom.nsIDocShell;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIChannel; /* forward declaration */

public import mozilla.xpcom.nsIContentViewer; /* forward declaration */

public import mozilla.xpcom.nsIURIContentListener; /* forward declaration */

public import mozilla.xpcom.nsIChromeEventHandler; /* forward declaration */

public import mozilla.xpcom.nsIDocShellLoadInfo; /* forward declaration */

public import mozilla.xpcom.nsIDocumentCharsetInfo; /* forward declaration */

public import mozilla.xpcom.nsIWebNavigation; /* forward declaration */

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */

public import mozilla.xpcom.nsIInputStream; /* forward declaration */

public import mozilla.xpcom.nsIRequest; /* forward declaration */

public import mozilla.xpcom.nsISHEntry; /* forward declaration */

public import mozilla.xpcom.nsISecureBrowserUI; /* forward declaration */

public import mozilla.xpcom.nsIDOMStorage; /* forward declaration */


/* starting interface:    nsIDocShell */
const char[] NS_IDOCSHELL_IID_STR = "9f0c7461-b9a4-47f6-b88c-421dce1bce66";

const nsIID NS_IDOCSHELL_IID= 
  {0x9f0c7461, 0xb9a4, 0x47f6, 
    [ 0xb8, 0x8c, 0x42, 0x1d, 0xce, 0x1b, 0xce, 0x66 ]};

extern(Windows)
interface nsIDocShell : nsISupports {
  static const char[] IID_STR = NS_IDOCSHELL_IID_STR;
  static const nsIID IID = NS_IDOCSHELL_IID;

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
  nsresult LoadURI(nsIURI uri, nsIDocShellLoadInfo loadInfo, PRUint32 aLoadFlags, PRBool firstParty);

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
  nsresult LoadStream(nsIInputStream aStream, nsIURI aURI, nsACString * aContentType, nsACString * aContentCharset, nsIDocShellLoadInfo aLoadInfo);

  enum { INTERNAL_LOAD_FLAGS_NONE = 0 };

  enum { INTERNAL_LOAD_FLAGS_INHERIT_OWNER = 1 };

  enum { INTERNAL_LOAD_FLAGS_DONT_SEND_REFERRER = 2 };

  enum { INTERNAL_LOAD_FLAGS_ALLOW_THIRD_PARTY_FIXUP = 4 };

  enum { INTERNAL_LOAD_FLAGS_FIRST_LOAD = 8 };

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
  nsresult InternalLoad(nsIURI aURI, nsIURI aReferrer, nsISupports aOwner, PRUint32 aFlags, PRUnichar *aWindowTarget, char *aTypeHint, nsIInputStream aPostDataStream, nsIInputStream aHeadersStream, PRUint32 aLoadFlags, nsISHEntry aSHEntry, PRBool firstParty, nsIDocShell *aDocShell, nsIRequest *aRequest);

  /**
   * Creates a DocShellLoadInfo object that you can manipulate and then pass
   * to loadURI.
   */
  /* void createLoadInfo (out nsIDocShellLoadInfo loadInfo); */
  nsresult CreateLoadInfo(nsIDocShellLoadInfo *loadInfo);

  /**
   * Reset state to a new content model within the current document and the document
   * viewer.  Called by the document before initiating an out of band document.write().
   */
  /* void prepareForNewContentModel (); */
  nsresult PrepareForNewContentModel();

  /**
   * For editors and suchlike who wish to change the URI associated with the
   * document. Note if you want to get the current URI, use the read-only
   * property on nsIWebNavigation.
   */
  /* void setCurrentURI (in nsIURI aURI); */
  nsresult SetCurrentURI(nsIURI aURI);

  /**
   * Notify the associated content viewer and all child docshells that they are
   * about to be hidden.  If |isUnload| is true, then the document is being
   * unloaded as well.
   */
  /* [noscript] void firePageHideNotification (in boolean isUnload); */
  nsresult FirePageHideNotification(PRBool isUnload);

  /**
   * Presentation context for the currently loaded document.  This may be null.
   */
  /* [noscript] readonly attribute nsPresContext presContext; */
  nsresult GetPresContext(nsPresContext * *aPresContext);

  /**
   * Presentation shell for the currently loaded document.  This may be null.
   */
  /* [noscript] readonly attribute nsIPresShell presShell; */
  nsresult GetPresShell(nsIPresShell * *aPresShell);

  /**
   * Presentation shell for the oldest document, if this docshell is
   * currently transitioning between documents.
   */
  /* [noscript] readonly attribute nsIPresShell eldestPresShell; */
  nsresult GetEldestPresShell(nsIPresShell * *aEldestPresShell);

  /**
   * Content Viewer that is currently loaded for this DocShell.  This may
   * change as the underlying content changes.
   */
  /* readonly attribute nsIContentViewer contentViewer; */
  nsresult GetContentViewer(nsIContentViewer  *aContentViewer);

  /**
   * This attribute allows chrome to tie in to handle DOM events that may
   * be of interest to chrome.
   */
  /* attribute nsIChromeEventHandler chromeEventHandler; */
  nsresult GetChromeEventHandler(nsIChromeEventHandler  *aChromeEventHandler);
  nsresult SetChromeEventHandler(nsIChromeEventHandler  aChromeEventHandler);

  /**
   * The document charset info.  This is used by a load to determine priorities
   * for charset detection etc.
   */
  /* attribute nsIDocumentCharsetInfo documentCharsetInfo; */
  nsresult GetDocumentCharsetInfo(nsIDocumentCharsetInfo  *aDocumentCharsetInfo);
  nsresult SetDocumentCharsetInfo(nsIDocumentCharsetInfo  aDocumentCharsetInfo);

  /**
   * Whether to allow plugin execution
   */
  /* attribute boolean allowPlugins; */
  nsresult GetAllowPlugins(PRBool *aAllowPlugins);
  nsresult SetAllowPlugins(PRBool aAllowPlugins);

  /**
   * Whether to allow Javascript execution
   */
  /* attribute boolean allowJavascript; */
  nsresult GetAllowJavascript(PRBool *aAllowJavascript);
  nsresult SetAllowJavascript(PRBool aAllowJavascript);

  /**
   * Attribute stating if refresh based redirects can be allowed
   */
  /* attribute boolean allowMetaRedirects; */
  nsresult GetAllowMetaRedirects(PRBool *aAllowMetaRedirects);
  nsresult SetAllowMetaRedirects(PRBool aAllowMetaRedirects);

  /**
   * Attribute stating if it should allow subframes (framesets/iframes) or not
   */
  /* attribute boolean allowSubframes; */
  nsresult GetAllowSubframes(PRBool *aAllowSubframes);
  nsresult SetAllowSubframes(PRBool aAllowSubframes);

  /**
   * Attribute stating whether or not images should be loaded.
   */
  /* attribute boolean allowImages; */
  nsresult GetAllowImages(PRBool *aAllowImages);
  nsresult SetAllowImages(PRBool aAllowImages);

  /**
   * Get an enumerator over this docShell and its children.
   *
   * @param aItemType  - Only include docShells of this type, or if typeAll,
   *                     include all child shells.
   *                     Uses types from nsIDocShellTreeItem.
   * @param aDirection - Whether to enumerate forwards or backwards.
   */
  enum { ENUMERATE_FORWARDS = 0 };

  enum { ENUMERATE_BACKWARDS = 1 };

  /* nsISimpleEnumerator getDocShellEnumerator (in long aItemType, in long aDirection); */
  nsresult GetDocShellEnumerator(PRInt32 aItemType, PRInt32 aDirection, nsISimpleEnumerator *_retval);

  /**
   * The type of application that created this window
   */
  enum { APP_TYPE_UNKNOWN = 0U };

  enum { APP_TYPE_MAIL = 1U };

  enum { APP_TYPE_EDITOR = 2U };

  /* attribute unsigned long appType; */
  nsresult GetAppType(PRUint32 *aAppType);
  nsresult SetAppType(PRUint32 aAppType);

  /**
   * certain dochshells (like the message pane)
   * should not throw up auth dialogs
   * because it can act as a password trojan
   */
  /* attribute boolean allowAuth; */
  nsresult GetAllowAuth(PRBool *aAllowAuth);
  nsresult SetAllowAuth(PRBool aAllowAuth);

  /**
   * Set/Get the document scale factor.  When setting this attribute, a
   * NS_ERROR_NOT_IMPLEMENTED error may be returned by implementations
   * not supporting zoom.  Implementations not supporting zoom should return
   * 1.0 all the time for the Get operation.  1.0 by the way is the default
   * of zoom.  This means 100% of normal scaling or in other words normal size
   * no zoom. 
   */
  /* attribute float zoom; */
  nsresult GetZoom(float *aZoom);
  nsresult SetZoom(float aZoom);

  /* attribute long marginWidth; */
  nsresult GetMarginWidth(PRInt32 *aMarginWidth);
  nsresult SetMarginWidth(PRInt32 aMarginWidth);

  /* attribute long marginHeight; */
  nsresult GetMarginHeight(PRInt32 *aMarginHeight);
  nsresult SetMarginHeight(PRInt32 aMarginHeight);

  /* attribute boolean hasFocus; */
  nsresult GetHasFocus(PRBool *aHasFocus);
  nsresult SetHasFocus(PRBool aHasFocus);

  /* attribute boolean canvasHasFocus; */
  nsresult GetCanvasHasFocus(PRBool *aCanvasHasFocus);
  nsresult SetCanvasHasFocus(PRBool aCanvasHasFocus);

  /* void tabToTreeOwner (in boolean forward, out boolean tookFocus); */
  nsresult TabToTreeOwner(PRBool forward, PRBool *tookFocus);

  /**
   * Current busy state for DocShell
   */
  enum { BUSY_FLAGS_NONE = 0U };

  enum { BUSY_FLAGS_BUSY = 1U };

  enum { BUSY_FLAGS_BEFORE_PAGE_LOAD = 2U };

  enum { BUSY_FLAGS_PAGE_LOADING = 4U };

  /**
   * Load commands for the document 
   */
  enum { LOAD_CMD_NORMAL = 1U };

  enum { LOAD_CMD_RELOAD = 2U };

  enum { LOAD_CMD_HISTORY = 4U };

  /* readonly attribute unsigned long busyFlags; */
  nsresult GetBusyFlags(PRUint32 *aBusyFlags);

  /* attribute unsigned long loadType; */
  nsresult GetLoadType(PRUint32 *aLoadType);
  nsresult SetLoadType(PRUint32 aLoadType);

  /* boolean isBeingDestroyed (); */
  nsresult IsBeingDestroyed(PRBool *_retval);

  /* readonly attribute boolean isExecutingOnLoadHandler; */
  nsresult GetIsExecutingOnLoadHandler(PRBool *aIsExecutingOnLoadHandler);

  /* attribute nsILayoutHistoryState layoutHistoryState; */
  nsresult GetLayoutHistoryState(nsILayoutHistoryState  *aLayoutHistoryState);
  nsresult SetLayoutHistoryState(nsILayoutHistoryState  aLayoutHistoryState);

  /* readonly attribute boolean shouldSaveLayoutState; */
  nsresult GetShouldSaveLayoutState(PRBool *aShouldSaveLayoutState);

  /**
   * The SecureBrowserUI object for this docshell.  This is set by XUL
   * <browser> or nsWebBrowser for their root docshell.
   */
  /* attribute nsISecureBrowserUI securityUI; */
  nsresult GetSecurityUI(nsISecureBrowserUI  *aSecurityUI);
  nsresult SetSecurityUI(nsISecureBrowserUI  aSecurityUI);

  /**
   * Cancel the XPCOM timers for each meta-refresh URI in this docshell,
   * and this docshell's children, recursively. The meta-refresh timers can be
   * restarted using resumeRefreshURIs().  If the timers are already suspended,
   * this has no effect.
   */
  /* void suspendRefreshURIs (); */
  nsresult SuspendRefreshURIs();

  /**
   * Restart the XPCOM timers for each meta-refresh URI in this docshell,
   * and this docshell's children, recursively.  If the timers are already
   * running, this has no effect.
   */
  /* void resumeRefreshURIs (); */
  nsresult ResumeRefreshURIs();

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
  nsresult BeginRestore(nsIContentViewer viewer, PRBool top);

  /**
   * Finish firing WebProgressListener notifications and DOM events for
   * restoring a page presentation.  This should only be called via
   * beginRestore().
   */
  /* void finishRestore (); */
  nsresult FinishRestore();

  /* readonly attribute boolean restoringDocument; */
  nsresult GetRestoringDocument(PRBool *aRestoringDocument);

  /* attribute boolean useErrorPages; */
  nsresult GetUseErrorPages(PRBool *aUseErrorPages);
  nsresult SetUseErrorPages(PRBool aUseErrorPages);

  /**
   * Keeps track of the previous SHTransaction index and the current
   * SHTransaction index at the time that the doc shell begins to load.
   * Used for ContentViewer eviction.
   */
  /* readonly attribute long previousTransIndex; */
  nsresult GetPreviousTransIndex(PRInt32 *aPreviousTransIndex);

  /* readonly attribute long loadedTransIndex; */
  nsresult GetLoadedTransIndex(PRInt32 *aLoadedTransIndex);

  /**
   * Notification that entries have been removed from the beginning of a
   * nsSHistory which has this as its rootDocShell.
   *
   * @param numEntries - The number of entries removed
   */
  /* void historyPurged (in long numEntries); */
  nsresult HistoryPurged(PRInt32 numEntries);

}


/* starting interface:    nsIDocShell_MOZILLA_1_8_BRANCH */
const char[] NS_IDOCSHELL_MOZILLA_1_8_BRANCH_IID_STR = "45988a14-b240-4d07-ae64-50ecca26e6d8";

const nsIID NS_IDOCSHELL_MOZILLA_1_8_BRANCH_IID= 
  {0x45988a14, 0xb240, 0x4d07, 
    [ 0xae, 0x64, 0x50, 0xec, 0xca, 0x26, 0xe6, 0xd8 ]};

extern(Windows)
interface nsIDocShell_MOZILLA_1_8_BRANCH : nsISupports {
  static const char[] IID_STR = NS_IDOCSHELL_MOZILLA_1_8_BRANCH_IID_STR;
  static const nsIID IID = NS_IDOCSHELL_MOZILLA_1_8_BRANCH_IID;

  /* nsIDOMStorage getSessionStorageForURI (in nsIURI uri); */
  nsresult GetSessionStorageForURI(nsIURI uri, nsIDOMStorage *_retval);

  /* void addSessionStorage (in ACString aDomain, in nsIDOMStorage storage); */
  nsresult AddSessionStorage(nsACString * aDomain, nsIDOMStorage storage);

  /**
   * Gets the channel for the currently loaded document, if any. 
   * For a new document load, this will be the channel of the previous document
   * until after OnLocationChange fires.
   */
  /* readonly attribute nsIChannel currentDocumentChannel; */
  nsresult GetCurrentDocumentChannel(nsIChannel  *aCurrentDocumentChannel);

}

