/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIURIChecker.idl
 */

module mozilla.dxpcom.nsIURICheckerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIURIChecker;


public import mozilla.dxpcom.nsIURICheckerD;

public import mozilla.xpcom.nsIRequest;
public import mozilla.dxpcom.nsIRequestD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIChannel;

public import mozilla.dxpcom.nsIChannelD;

public import mozilla.xpcom.nsIRequestObserver;

public import mozilla.dxpcom.nsIRequestObserverD;


/* starting wrapper class:    nsIURIChecker */
/**
 * nsIURIChecker
 *
 * The URI checker is a component that can be used to verify the existance
 * of a resource at the location specified by a given URI.  It will use
 * protocol specific methods to verify the URI (e.g., use of HEAD request
 * for HTTP URIs).
 */
class nsIURICheckerD : public nsIRequestD {

  static const nsIID IID = NS_IURICHECKER_IID;


  alias nsIURIChecker InnerType;

  this(nsIURIChecker intr){
    super(intr);
    this.inner = intr;
  }

  nsIURIChecker opCast() {
    return inner;
  }

  void opAssign(nsIURIChecker value) {
    inner = value;
  }

  /**
     * Initializes the URI checker.  After this method is called, it is valid
     * to further configure the URI checker by calling its nsIRequest methods.
     * This method creates the channel that will be used to verify the URI.
     * In the case of the HTTP protocol, only a HEAD request will be issued.
     *
     * @param aURI
     *        The URI to be checked.
     */
  /* void init (in nsIURI aURI); */
  void Init(nsIURID aURI){
    nsresult __result = inner.Init(aURI ? cast(nsIURI)aURI : null);
    CheckException(__result);
  }

  /**
     * Returns the base channel that will be used to verify the URI.
     */
  /* readonly attribute nsIChannel baseChannel; */
  nsIChannelD  BaseChannel(){
    nsIChannel value;
    nsresult __result = inner.GetBaseChannel(&value);
    CheckException(__result);
    return new nsIChannelD(value);
  }

  /**
     * Begin asynchronous checking URI for validity.  Notification will be
     * asynchronous through the nsIRequestObserver callback interface.  When
     * OnStartRequest is fired, the baseChannel attribute will have been
     * updated to reflect the final channel used (corresponding to any redirects
     * that may have been followed).
     *
     * Our interpretations of the nsIRequestObserver status codes:
     *   NS_BINDING_SUCCEEDED:   link is valid
     *   NS_BINDING_FAILED:      link is invalid (gave an error)
     *   NS_BINDING_ABORTED:     timed out, or cancelled
     *
     * @param aObserver
     *        The object to notify when the link is verified.  We will
     *        call aObserver.OnStartRequest followed immediately by
     *        aObserver.OnStopRequest.  It is recommended that the caller use
     *        OnStopRequest to act on the link's status.  The underlying request
     *        will not be cancelled until after OnStopRequest has been called.
     * @param aContext
     *        A closure that will be passed back to the nsIRequestObserver
     *        methods.
     */
  /* void asyncCheck (in nsIRequestObserver aObserver, in nsISupports aContext); */
  void AsyncCheck(nsIRequestObserverD aObserver, nsISupportsD aContext){
    nsresult __result = inner.AsyncCheck(aObserver ? cast(nsIRequestObserver)aObserver : null, aContext ? cast(nsISupports)aContext : null);
    CheckException(__result);
  }

private:
  nsIURIChecker inner;

}

