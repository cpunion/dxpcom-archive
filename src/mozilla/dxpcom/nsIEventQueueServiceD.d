/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEventQueueService.idl
 */

module mozilla.dxpcom.nsIEventQueueServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIEventQueueService;


public import mozilla.dxpcom.nsIEventQueueServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIEventQueue;
public import mozilla.dxpcom.nsIEventQueueD;

public import mozilla.xpcom.nsIThread;

public import mozilla.dxpcom.nsIThreadD;


/* starting wrapper class:    nsIEventQueueService */
class nsIEventQueueServiceD : public nsISupportsD {

  static const nsIID IID = NS_IEVENTQUEUESERVICE_IID;


  alias nsIEventQueueService InnerType;

  this(nsIEventQueueService intr){
    super(intr);
    this.inner = intr;
  }

  nsIEventQueueService opCast() {
    return inner;
  }

  void opAssign(nsIEventQueueService value) {
    inner = value;
  }

  /**
   * Creates and holds a native event queue for the current thread.
   * "Native" queues have an associated callback mechanism which is
   * automatically triggered when an event is posted. See plevent.c for 
   * details.
   * @return NS_OK on success, or a host of failure indications
   */
  /* void createThreadEventQueue (); */
  void CreateThreadEventQueue(){
    nsresult __result = inner.CreateThreadEventQueue();
    CheckException(__result);
  }

  /**
   * Creates and hold a monitored event queue for the current thread.
   * "Monitored" queues have no callback processing mechanism.
   * @return NS_OK on success, or a host of failure indications
   */
  /* void createMonitoredThreadEventQueue (); */
  void CreateMonitoredThreadEventQueue(){
    nsresult __result = inner.CreateMonitoredThreadEventQueue();
    CheckException(__result);
  }

  /**
   * Somewhat misnamed, this method releases the service's hold on the event
   * queue(s) for this thread. Subsequent attempts to access this thread's
   * queue (GetThreadEventQueue, for example) may fail, though the queue itself
   * will be destroyed only after all references to it are released and the
   * queue itself is no longer actively processing events.
   * @return nonsense.
   */
  /* void destroyThreadEventQueue (); */
  void DestroyThreadEventQueue(){
    nsresult __result = inner.DestroyThreadEventQueue();
    CheckException(__result);
  }

  /* nsIEventQueue createFromIThread (in nsIThread aThread, in boolean aNative); */
  nsIEventQueueD  CreateFromIThread(nsIThreadD aThread, PRBool aNative){
    nsIEventQueue _retval;
    nsresult __result = inner.CreateFromIThread(aThread ? cast(nsIThread)aThread : null, aNative, &_retval);
    CheckException(__result);
    return new nsIEventQueueD(_retval);
  }

  /* [noscript] nsIEventQueue createFromPLEventQueue (in PLEventQueuePtr aPLEventQueue); */
  nsIEventQueueD  CreateFromPLEventQueue(PLEventQueue * aPLEventQueue){
    nsIEventQueue _retval;
    nsresult __result = inner.CreateFromPLEventQueue(aPLEventQueue, &_retval);
    CheckException(__result);
    return new nsIEventQueueD(_retval);
  }

  /* nsIEventQueue pushThreadEventQueue (); */
  nsIEventQueueD  PushThreadEventQueue(){
    nsIEventQueue _retval;
    nsresult __result = inner.PushThreadEventQueue(&_retval);
    CheckException(__result);
    return new nsIEventQueueD(_retval);
  }

  /* void popThreadEventQueue (in nsIEventQueue aQueue); */
  void PopThreadEventQueue(nsIEventQueueD aQueue){
    nsresult __result = inner.PopThreadEventQueue(aQueue ? cast(nsIEventQueue)aQueue : null);
    CheckException(__result);
  }

  /* [noscript] nsIEventQueue getThreadEventQueue (in PRThreadPtr aThread); */
  nsIEventQueueD  GetThreadEventQueue(PRThread * aThread){
    nsIEventQueue _retval;
    nsresult __result = inner.GetThreadEventQueue(aThread, &_retval);
    CheckException(__result);
    return new nsIEventQueueD(_retval);
  }

  /**
   * @deprecated in favor of getSpecialEventQueue, since that's
   * scriptable and this isn't.
   *
   * Check for any "magic" event queue constants (NS_CURRENT_EVENTQ,
   * NS_UI_THREAD_EVENTQ) and return the real event queue that they
   * represent, AddRef()ed.  Otherwise, return the event queue passed
   * in, AddRef()ed.  This is not scriptable because the arguments in
   * question may be magic constants rather than real nsIEventQueues.
   *
   * @arg queueOrConstant    either a real event queue or a magic
   *                         constant to be resolved
   *
   * @return                 a real event queue, AddRef()ed
   */
  /* [noscript] nsIEventQueue resolveEventQueue (in nsIEventQueue queueOrConstant); */
  nsIEventQueueD  ResolveEventQueue(nsIEventQueueD queueOrConstant){
    nsIEventQueue _retval;
    nsresult __result = inner.ResolveEventQueue(queueOrConstant ? cast(nsIEventQueue)queueOrConstant : null, &_retval);
    CheckException(__result);
    return new nsIEventQueueD(_retval);
  }

  /**
   * Returns the appropriate special event queue, AddRef()ed.  Really
   * just a scriptable version of ResolveEventQueue.
   *
   * @arg aQueue    Either CURRENT_THREAD_EVENT_QUEUE or
   *                UI_THREAD_EVENT_QUEUE
   * @return        The requested nsIEventQueue, AddRef()ed
   * @exception NS_ERROR_NULL_POINTER   Zero pointer passed in for return value
   * @exception NS_ERROR_ILLEGAL_VALUE  Bogus constant passed in aQueue
   * @exception NS_ERROR_FAILURE        Error while calling 
   *                                    GetThreadEventQueue()
   */
  /* nsIEventQueue getSpecialEventQueue (in long aQueue); */
  nsIEventQueueD  GetSpecialEventQueue(PRInt32 aQueue){
    nsIEventQueue _retval;
    nsresult __result = inner.GetSpecialEventQueue(aQueue, &_retval);
    CheckException(__result);
    return new nsIEventQueueD(_retval);
  }

  enum { CURRENT_THREAD_EVENT_QUEUE = 0 }

  enum { UI_THREAD_EVENT_QUEUE = 1 }

private:
  nsIEventQueueService inner;

}

