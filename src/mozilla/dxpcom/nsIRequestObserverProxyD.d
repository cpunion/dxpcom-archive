/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRequestObserverProxy.idl
 */

module mozilla.dxpcom.nsIRequestObserverProxyD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIRequestObserverProxy;


public import mozilla.dxpcom.nsIRequestObserverProxyD;

public import mozilla.xpcom.nsIRequestObserver;
public import mozilla.dxpcom.nsIRequestObserverD;

public import mozilla.xpcom.nsIEventQueue;

public import mozilla.dxpcom.nsIEventQueueD;


/* starting wrapper class:    nsIRequestObserverProxy */
/**
 * A request observer proxy is used to ship data over to another thread specified
 * by the thread's event queue. The "true" request observer's methods are 
 * invoked on the other thread.
 *
 * This interface only provides the initialization needed after construction. Otherwise,
 * these objects are used simply as nsIRequestObserver's.
 */
class nsIRequestObserverProxyD : public nsIRequestObserverD {

  static const nsIID IID = NS_IREQUESTOBSERVERPROXY_IID;


  alias nsIRequestObserverProxy InnerType;

  this(nsIRequestObserverProxy intr){
    super(intr);
    this.inner = intr;
  }

  nsIRequestObserverProxy opCast() {
    return inner;
  }

  void opAssign(nsIRequestObserverProxy value) {
    inner = value;
  }

  /**
     * Initializes an nsIRequestObserverProxy.
     *
     * @param observer - receives observer notifications on the other thread
     * @param eventQ - may be NULL indicating the calling thread's event queue
     */
  /* void init (in nsIRequestObserver observer, in nsIEventQueue eventQ); */
  void Init(nsIRequestObserverD observer, nsIEventQueueD eventQ){
    nsresult __result = inner.Init(observer ? cast(nsIRequestObserver)observer : null, eventQ ? cast(nsIEventQueue)eventQ : null);
    CheckException(__result);
  }

private:
  nsIRequestObserverProxy inner;

}

