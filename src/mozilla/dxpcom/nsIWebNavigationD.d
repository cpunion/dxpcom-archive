/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebNavigation.idl
 */

module mozilla.dxpcom.nsIWebNavigationD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWebNavigation;


public import mozilla.dxpcom.nsIWebNavigationD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMDocument;

public import mozilla.dxpcom.nsIDOMDocumentD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;

public import mozilla.xpcom.nsISHistory;

public import mozilla.dxpcom.nsISHistoryD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIWebNavigation */
/**
 * The nsIWebNavigation interface defines an interface for navigating the web.
 * It provides methods and attributes to direct an object to navigate to a new
 * location, stop or restart an in process load, or determine where the object
 * has previously gone.
 *
 * @status UNDER_REVIEW
 */
class nsIWebNavigationD : public nsISupportsD {

  static const nsIID IID = NS_IWEBNAVIGATION_IID;


  alias nsIWebNavigation InnerType;

  this(nsIWebNavigation intr){
    super(intr);
    this.inner = intr;
  }

  nsIWebNavigation opCast() {
    return inner;
  }

  void opAssign(nsIWebNavigation value) {
    inner = value;
  }

  /**
   * Indicates if the object can go back.  If true this indicates that
   * there is back session history available for navigation.
   */
  /* readonly attribute boolean canGoBack; */
  PRBool CanGoBack(){
    PRBool value;
    nsresult __result = inner.GetCanGoBack(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Indicates if the object can go forward.  If true this indicates that
   * there is forward session history available for navigation
   */
  /* readonly attribute boolean canGoForward; */
  PRBool CanGoForward(){
    PRBool value;
    nsresult __result = inner.GetCanGoForward(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Tells the object to navigate to the previous session history item.  When a
   * page is loaded from session history, all content is loaded from the cache
   * (if available) and page state (such as form values and scroll position) is
   * restored.
   *
   * @throw NS_ERROR_UNEXPECTED
   *        Indicates that the call was unexpected at this time, which implies
   *        that canGoBack is false.
   */
  /* void goBack (); */
  void GoBack(){
    nsresult __result = inner.GoBack();
    CheckException(__result);
  }

  /**
   * Tells the object to navigate to the next session history item.  When a
   * page is loaded from session history, all content is loaded from the cache
   * (if available) and page state (such as form values and scroll position) is
   * restored.
   *
   * @throw NS_ERROR_UNEXPECTED
   *        Indicates that the call was unexpected at this time, which implies
   *        that canGoForward is false.
   */
  /* void goForward (); */
  void GoForward(){
    nsresult __result = inner.GoForward();
    CheckException(__result);
  }

  /**
   * Tells the object to navigate to the session history item at a given index.
   *
   * @throw NS_ERROR_UNEXPECTED
   *        Indicates that the call was unexpected at this time, which implies
   *        that session history entry at the given index does not exist.
   */
  /* void gotoIndex (in long index); */
  void GotoIndex(PRInt32 index){
    nsresult __result = inner.GotoIndex(index);
    CheckException(__result);
  }

  /****************************************************************************
   * The following flags may be bitwise combined to form the load flags
   * parameter passed to either the loadURI or reload method.  Some of these
   * flags are only applicable to loadURI.
   */
/**
   * This flags defines the range of bits that may be specified.
   */
  enum { LOAD_FLAGS_MASK = 65535U }

  /**
   * This is the default value for the load flags parameter.
   */
  enum { LOAD_FLAGS_NONE = 0U }

  /**
   * This flag specifies that the load should have the semantics of an HTML
   * META refresh (i.e., that the cache should be validated).  This flag is
   * only applicable to loadURI.
   * XXX the meaning of this flag is poorly defined.
   */
  enum { LOAD_FLAGS_IS_REFRESH = 16U }

  /**
   * This flag specifies that the load should have the semantics of a link
   * click.  This flag is only applicable to loadURI.
   * XXX the meaning of this flag is poorly defined.
   */
  enum { LOAD_FLAGS_IS_LINK = 32U }

  /**
   * This flag specifies that history should not be updated.  This flag is only
   * applicable to loadURI.
   */
  enum { LOAD_FLAGS_BYPASS_HISTORY = 64U }

  /**
   * This flag specifies that any existing history entry should be replaced.
   * This flag is only applicable to loadURI.
   */
  enum { LOAD_FLAGS_REPLACE_HISTORY = 128U }

  /**
   * This flag specifies that the local web cache should be bypassed, but an
   * intermediate proxy cache could still be used to satisfy the load.
   */
  enum { LOAD_FLAGS_BYPASS_CACHE = 256U }

  /**
   * This flag specifies that any intermediate proxy caches should be bypassed
   * (i.e., that the content should be loaded from the origin server).
   */
  enum { LOAD_FLAGS_BYPASS_PROXY = 512U }

  /**
   * This flag specifies that a reload was triggered as a result of detecting
   * an incorrect character encoding while parsing a previously loaded
   * document.
   */
  enum { LOAD_FLAGS_CHARSET_CHANGE = 1024U }

  /**
   * If this flag is set, Stop() will be called before the load starts
   * and will stop both content and network activity (the default is to
   * only stop network activity).  Effectively, this passes the
   * STOP_CONTENT flag to Stop(), in addition to the STOP_NETWORK flag.
   */
  enum { LOAD_FLAGS_STOP_CONTENT = 2048U }

  /**
   * A hint this load was prompted by an external program: take care!
   */
  enum { LOAD_FLAGS_FROM_EXTERNAL = 4096U }

  /**
   * This flag specifies that the URI may be submitted to a third-party
   * server for correction. This should only be applied to non-sensitive
   * URIs entered by users.
   */
  enum { LOAD_FLAGS_ALLOW_THIRD_PARTY_FIXUP = 8192U }

  /**
   * This flag specifies that this is the first load in this object.
   * Set with care, since setting incorrectly can cause us to assume that
   * nothing was actually loaded in this object if the load ends up being
   * handled by an external application.
   */
  enum { LOAD_FLAGS_FIRST_LOAD = 16384U }

  /**
   * Loads a given URI.  This will give priority to loading the requested URI
   * in the object implementing	this interface.  If it can't be loaded here
   * however, the URI dispatcher will go through its normal process of content
   * loading.
   *
   * @param aURI
   *        The URI string to load.  For HTTP and FTP URLs and possibly others,
   *        characters above U+007F will be converted to UTF-8 and then URL-
   *        escaped per the rules of RFC 2396.
   * @param aLoadFlags
   *        Flags modifying load behaviour.  This parameter is a bitwise
   *        combination of the load flags defined above.  (Undefined bits are
   *        reserved for future use.)  Generally you will pass LOAD_FLAGS_NONE
   *        for this parameter.
   * @param aReferrer
   *        The referring URI.  If this argument is null, then the referring
   *        URI will be inferred internally.
   * @param aPostData
   *        If the URI corresponds to a HTTP request, then this stream is
   *        appended directly to the HTTP request headers.  It may be prefixed
   *        with additional HTTP headers.  This stream must contain a "\r\n"
   *        sequence separating any HTTP headers from the HTTP request body.
   *        This parameter is optional and may be null.
   * @param aHeaders
   *        If the URI corresponds to a HTTP request, then any HTTP headers
   *        contained in this stream are set on the HTTP request.  The HTTP
   *        header stream is formatted as:
   *            ( HEADER "\r\n" )*
   *        This parameter is optional and may be null.
   */
  /* void loadURI (in wstring aURI, in unsigned long aLoadFlags, in nsIURI aReferrer, in nsIInputStream aPostData, in nsIInputStream aHeaders); */
  void LoadURI(PRUnichar*aURI, PRUint32 aLoadFlags, nsIURID aReferrer, nsIInputStreamD aPostData, nsIInputStreamD aHeaders){
    nsresult __result = inner.LoadURI(aURI, aLoadFlags, aReferrer ? cast(nsIURI)aReferrer : null, aPostData ? cast(nsIInputStream)aPostData : null, aHeaders ? cast(nsIInputStream)aHeaders : null);
    CheckException(__result);
  }

  /**
   * Tells the Object to reload the current page.  There may be cases where the
   * user will be asked to confirm the reload (for example, when it is
   * determined that the request is non-idempotent).
   *
   * @param aReloadFlags
   *        Flags modifying load behaviour.  This parameter is a bitwise
   *        combination of the Load Flags defined above.  (Undefined bits are
   *        reserved for future use.)  Generally you will pass LOAD_FLAGS_NONE
   *        for this parameter.
   *
   * @throw NS_BINDING_ABORTED
   *        Indicating that the user canceled the reload.
   */
  /* void reload (in unsigned long aReloadFlags); */
  void Reload(PRUint32 aReloadFlags){
    nsresult __result = inner.Reload(aReloadFlags);
    CheckException(__result);
  }

  /****************************************************************************
   * The following flags may be passed as the stop flags parameter to the stop
   * method defined on this interface.
   */
/**
   * This flag specifies that all network activity should be stopped.  This
   * includes both active network loads and pending META-refreshes.
   */
  enum { STOP_NETWORK = 1U }

  /**
   * This flag specifies that all content activity should be stopped.  This
   * includes animated images, plugins and pending Javascript timeouts.
   */
  enum { STOP_CONTENT = 2U }

  /**
   * This flag specifies that all activity should be stopped.
   */
  enum { STOP_ALL = 3U }

  /**
   * Stops a load of a URI.
   *
   * @param aStopFlags
   *        This parameter is one of the stop flags defined above.
   */
  /* void stop (in unsigned long aStopFlags); */
  void Stop(PRUint32 aStopFlags){
    nsresult __result = inner.Stop(aStopFlags);
    CheckException(__result);
  }

  /**
   * Retrieves the current DOM document for the frame, or lazily creates a
   * blank document if there is none.  This attribute never returns null except
   * for unexpected error situations.
   */
  /* readonly attribute nsIDOMDocument document; */
  nsIDOMDocumentD  Document(){
    nsIDOMDocument value;
    nsresult __result = inner.GetDocument(&value);
    CheckException(__result);
    return new nsIDOMDocumentD(value);
  }

  /**
   * The currently loaded URI or null.
   */
  /* readonly attribute nsIURI currentURI; */
  nsIURID  CurrentURI(){
    nsIURI value;
    nsresult __result = inner.GetCurrentURI(&value);
    CheckException(__result);
    return new nsIURID(value);
  }

  /**
   * The referring URI for the currently loaded URI or null.
   */
  /* readonly attribute nsIURI referringURI; */
  nsIURID  ReferringURI(){
    nsIURI value;
    nsresult __result = inner.GetReferringURI(&value);
    CheckException(__result);
    return new nsIURID(value);
  }

  /**
   * The session history object used by this web navigation instance.
   */
  /* attribute nsISHistory sessionHistory; */
  nsISHistoryD  SessionHistory(){
    nsISHistory value;
    nsresult __result = inner.GetSessionHistory(&value);
    CheckException(__result);
    return new nsISHistoryD(value);
  }
  void SessionHistory(nsISHistoryD  aSessionHistory){
    nsISHistory value;
    nsresult __result = inner.SetSessionHistory(value);
    CheckException(__result);
  }

private:
  nsIWebNavigation inner;

}

