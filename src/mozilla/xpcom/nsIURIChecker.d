/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIURIChecker.idl
 */

module mozilla.xpcom.nsIURIChecker;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIRequest;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIChannel; /* forward declaration */

public import mozilla.xpcom.nsIRequestObserver; /* forward declaration */


/* starting interface:    nsIURIChecker */
const char[] NS_IURICHECKER_IID_STR = "4660c1a1-be2d-4c78-9baf-c22984176c28";

const nsIID NS_IURICHECKER_IID= 
  {0x4660c1a1, 0xbe2d, 0x4c78, 
    [ 0x9b, 0xaf, 0xc2, 0x29, 0x84, 0x17, 0x6c, 0x28 ]};

/**
 * nsIURIChecker
 *
 * The URI checker is a component that can be used to verify the existance
 * of a resource at the location specified by a given URI.  It will use
 * protocol specific methods to verify the URI (e.g., use of HEAD request
 * for HTTP URIs).
 */
extern(Windows)
interface nsIURIChecker : nsIRequest {
  static const char[] IID_STR = NS_IURICHECKER_IID_STR;
  static const nsIID IID = NS_IURICHECKER_IID;

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
  nsresult Init(nsIURI aURI);

  /**
     * Returns the base channel that will be used to verify the URI.
     */
  /* readonly attribute nsIChannel baseChannel; */
  nsresult GetBaseChannel(nsIChannel  *aBaseChannel);

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
  nsresult AsyncCheck(nsIRequestObserver aObserver, nsISupports aContext);

}

