/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIStreamListenerProxy.idl
 */

module mozilla.dxpcom.nsIStreamListenerProxyD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIStreamListenerProxy;


public import mozilla.dxpcom.nsIStreamListenerProxyD;

public import mozilla.xpcom.nsIStreamListener;
public import mozilla.dxpcom.nsIStreamListenerD;

public import mozilla.xpcom.nsIEventQueue;

public import mozilla.dxpcom.nsIEventQueueD;


/* starting wrapper class:    nsIStreamListenerProxy */
/**
 * A stream listener proxy is used to ship data over to another thread specified
 * by the thread's event queue.  The "true" stream listener's methods are
 * invoked on the other thread.
 *
 * This interface only provides the initialization needed after construction. 
 * Otherwise, these objects are used as nsIStreamListener.
 */
class nsIStreamListenerProxyD : public nsIStreamListenerD {

  static const nsIID IID = NS_ISTREAMLISTENERPROXY_IID;


  alias nsIStreamListenerProxy InnerType;

  this(nsIStreamListenerProxy intr){
    super(intr);
    this.inner = intr;
  }

  nsIStreamListenerProxy opCast() {
    return inner;
  }

  void opAssign(nsIStreamListenerProxy value) {
    inner = value;
  }

  /**
     * Initializes an nsIStreamListenerProxy.
     *
     * @param aListener receives listener notifications on the other thread
     * @param aEventQ may be NULL indicating the calling thread's event queue
     * @param aBufferSegmentSize passing zero indicates the default
     * @param aBufferMaxSize passing zero indicates the default
     */
  /* void init (in nsIStreamListener aListener, in nsIEventQueue aEventQ, in unsigned long aBufferSegmentSize, in unsigned long aBufferMaxSize); */
  void Init(nsIStreamListenerD aListener, nsIEventQueueD aEventQ, PRUint32 aBufferSegmentSize, PRUint32 aBufferMaxSize){
    nsresult __result = inner.Init(aListener ? cast(nsIStreamListener)aListener : null, aEventQ ? cast(nsIEventQueue)aEventQ : null, aBufferSegmentSize, aBufferMaxSize);
    CheckException(__result);
  }

private:
  nsIStreamListenerProxy inner;

}


/* starting wrapper class:    nsIAsyncStreamListener */
/**
 * THIS INTERFACE IS DEPRECATED
 *
 * An asynchronous stream listener is used to ship data over to another thread specified
 * by the thread's event queue. The receiver stream listener is then used to receive
 * the notifications on the other thread. 
 *
 * This interface only provides the initialization needed after construction. Otherwise,
 * these objects are used simply as nsIStreamListener.
 */
class nsIAsyncStreamListenerD : public nsIStreamListenerD {

  static const nsIID IID = NS_IASYNCSTREAMLISTENER_IID;


  alias nsIAsyncStreamListener InnerType;

  this(nsIAsyncStreamListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIAsyncStreamListener opCast() {
    return inner;
  }

  void opAssign(nsIAsyncStreamListener value) {
    inner = value;
  }

  /**
     * Initializes an nsIAsyncStreamListener. 
     *
     * @param aReceiver receives listener notifications on the other thread
     * @param aEventQ may be null indicating the calling thread's event queue
     */
  /* void init (in nsIStreamListener aReceiver, in nsIEventQueue aEventQ); */
  void Init(nsIStreamListenerD aReceiver, nsIEventQueueD aEventQ){
    nsresult __result = inner.Init(aReceiver ? cast(nsIStreamListener)aReceiver : null, aEventQ ? cast(nsIEventQueue)aEventQ : null);
    CheckException(__result);
  }

private:
  nsIAsyncStreamListener inner;

}

