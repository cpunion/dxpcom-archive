/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRequestObserverProxy.idl
 */

module mozilla.xpcom.nsIRequestObserverProxy;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIRequestObserver;

public import mozilla.xpcom.nsIEventQueue; /* forward declaration */


/* starting interface:    nsIRequestObserverProxy */
const char[] NS_IREQUESTOBSERVERPROXY_IID_STR = "3c9b532e-db84-4ecf-aa6a-4d38a9c4c5f0";

const nsIID NS_IREQUESTOBSERVERPROXY_IID= 
  {0x3c9b532e, 0xdb84, 0x4ecf, 
    [ 0xaa, 0x6a, 0x4d, 0x38, 0xa9, 0xc4, 0xc5, 0xf0 ]};

/**
 * A request observer proxy is used to ship data over to another thread specified
 * by the thread's event queue. The "true" request observer's methods are 
 * invoked on the other thread.
 *
 * This interface only provides the initialization needed after construction. Otherwise,
 * these objects are used simply as nsIRequestObserver's.
 */
extern(Windows)
interface nsIRequestObserverProxy : nsIRequestObserver {
  static const char[] IID_STR = NS_IREQUESTOBSERVERPROXY_IID_STR;
  static const nsIID IID = NS_IREQUESTOBSERVERPROXY_IID;

  /**
     * Initializes an nsIRequestObserverProxy.
     *
     * @param observer - receives observer notifications on the other thread
     * @param eventQ - may be NULL indicating the calling thread's event queue
     */
  /* void init (in nsIRequestObserver observer, in nsIEventQueue eventQ); */
  nsresult Init(nsIRequestObserver observer, nsIEventQueue eventQ);

}

