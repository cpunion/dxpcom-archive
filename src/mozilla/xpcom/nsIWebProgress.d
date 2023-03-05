/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebProgress.idl
 */

module mozilla.xpcom.nsIWebProgress;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */

public import mozilla.xpcom.nsIWebProgressListener; /* forward declaration */


/* starting interface:    nsIWebProgress */
const char[] NS_IWEBPROGRESS_IID_STR = "570f39d0-efd0-11d3-b093-00a024ffc08c";

const nsIID NS_IWEBPROGRESS_IID= 
  {0x570f39d0, 0xefd0, 0x11d3, 
    [ 0xb0, 0x93, 0x00, 0xa0, 0x24, 0xff, 0xc0, 0x8c ]};

/**
 * The nsIWebProgress interface is used to add or remove nsIWebProgressListener
 * instances to observe the loading of asynchronous requests (usually in the
 * context of a DOM window).
 *
 * nsIWebProgress instances may be arranged in a parent-child configuration,
 * corresponding to the parent-child configuration of their respective DOM
 * windows.  However, in some cases a nsIWebProgress instance may not have an
 * associated DOM window.  The parent-child relationship of nsIWebProgress
 * instances is not made explicit by this interface, but the relationship may
 * exist in some implementations.
 *
 * A nsIWebProgressListener instance receives notifications for the
 * nsIWebProgress instance to which it added itself, and it may also receive
 * notifications from any nsIWebProgress instances that are children of that
 * nsIWebProgress instance.
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIWebProgress : nsISupports {
  static const char[] IID_STR = NS_IWEBPROGRESS_IID_STR;
  static const nsIID IID = NS_IWEBPROGRESS_IID;

  /**
   * The following flags may be combined to form the aNotifyMask parameter for
   * the addProgressListener method.  They limit the set of events that are
   * delivered to an nsIWebProgressListener instance.
   */
/**
   * These flags indicate the state transistions to observe, corresponding to
   * nsIWebProgressListener::onStateChange.
   *
   * NOTIFY_STATE_REQUEST
   *   Only receive the onStateChange event if the aStateFlags parameter
   *   includes nsIWebProgressListener::STATE_IS_REQUEST.
   *   
   * NOTIFY_STATE_DOCUMENT
   *   Only receive the onStateChange event if the aStateFlags parameter
   *   includes nsIWebProgressListener::STATE_IS_DOCUMENT.
   *
   * NOTIFY_STATE_NETWORK
   *   Only receive the onStateChange event if the aStateFlags parameter
   *   includes nsIWebProgressListener::STATE_IS_NETWORK.
   *
   * NOTIFY_STATE_WINDOW
   *   Only receive the onStateChange event if the aStateFlags parameter
   *   includes nsIWebProgressListener::STATE_IS_WINDOW.
   *
   * NOTIFY_STATE_ALL
   *   Receive all onStateChange events.
   */
  enum { NOTIFY_STATE_REQUEST = 1U };

  enum { NOTIFY_STATE_DOCUMENT = 2U };

  enum { NOTIFY_STATE_NETWORK = 4U };

  enum { NOTIFY_STATE_WINDOW = 8U };

  enum { NOTIFY_STATE_ALL = 15U };

  /**
   * These flags indicate the other events to observe, corresponding to the
   * other four methods defined on nsIWebProgressListener.
   *
   * NOTIFY_PROGRESS
   *   Receive onProgressChange events.
   *
   * NOTIFY_STATUS
   *   Receive onStatusChange events.
   *
   * NOTIFY_SECURITY
   *   Receive onSecurityChange events.
   *
   * NOTIFY_LOCATION
   *   Receive onLocationChange events.
   */
  enum { NOTIFY_PROGRESS = 16U };

  enum { NOTIFY_STATUS = 32U };

  enum { NOTIFY_SECURITY = 64U };

  enum { NOTIFY_LOCATION = 128U };

  /**
   * This flag enables all notifications.
   */
  enum { NOTIFY_ALL = 255U };

  /**
   * Registers a listener to receive web progress events.
   *
   * @param aListener
   *        The listener interface to be called when a progress event occurs.
   *        This object must also implement nsISupportsWeakReference.
   * @param aNotifyMask
   *        The types of notifications to receive.
   *
   * @throw NS_ERROR_INVALID_ARG
   *        Indicates that aListener was either null or that it does not
   *        support weak references.
   * @throw NS_ERROR_FAILURE
   *        Indicates that aListener was already registered.
   */
  /* void addProgressListener (in nsIWebProgressListener aListener, in unsigned long aNotifyMask); */
  nsresult AddProgressListener(nsIWebProgressListener aListener, PRUint32 aNotifyMask);

  /**
   * Removes a previously registered listener of progress events.
   *
   * @param aListener
   *        The listener interface previously registered with a call to
   *        addProgressListener.
   *
   * @throw NS_ERROR_FAILURE
   *        Indicates that aListener was not registered.
   */
  /* void removeProgressListener (in nsIWebProgressListener aListener); */
  nsresult RemoveProgressListener(nsIWebProgressListener aListener);

  /**
   * The DOM window associated with this nsIWebProgress instance.
   *
   * @throw NS_ERROR_FAILURE
   *        Indicates that there is no associated DOM window.
   */
  /* readonly attribute nsIDOMWindow DOMWindow; */
  nsresult GetDOMWindow(nsIDOMWindow  *aDOMWindow);

  /**
   * Indicates whether or not a document is currently being loaded
   * in the context of this nsIWebProgress instance.
   */
  /* readonly attribute PRBool isLoadingDocument; */
  nsresult GetIsLoadingDocument(PRBool *aIsLoadingDocument);

}

