/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEventQueueService.idl
 */

module mozilla.xpcom.nsIEventQueueService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIEventQueue;

public import mozilla.xpcom.nsIThread; /* forward declaration */


/* starting interface:    nsIEventQueueService */
const char[] NS_IEVENTQUEUESERVICE_IID_STR = "a6cf90dc-15b3-11d2-932e-00805f8add32";

const nsIID NS_IEVENTQUEUESERVICE_IID= 
  {0xa6cf90dc, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

extern(Windows)
interface nsIEventQueueService : nsISupports {
  static const char[] IID_STR = NS_IEVENTQUEUESERVICE_IID_STR;
  static const nsIID IID = NS_IEVENTQUEUESERVICE_IID;

  /**
   * Creates and holds a native event queue for the current thread.
   * "Native" queues have an associated callback mechanism which is
   * automatically triggered when an event is posted. See plevent.c for 
   * details.
   * @return NS_OK on success, or a host of failure indications
   */
  /* void createThreadEventQueue (); */
  nsresult CreateThreadEventQueue();

  /**
   * Creates and hold a monitored event queue for the current thread.
   * "Monitored" queues have no callback processing mechanism.
   * @return NS_OK on success, or a host of failure indications
   */
  /* void createMonitoredThreadEventQueue (); */
  nsresult CreateMonitoredThreadEventQueue();

  /**
   * Somewhat misnamed, this method releases the service's hold on the event
   * queue(s) for this thread. Subsequent attempts to access this thread's
   * queue (GetThreadEventQueue, for example) may fail, though the queue itself
   * will be destroyed only after all references to it are released and the
   * queue itself is no longer actively processing events.
   * @return nonsense.
   */
  /* void destroyThreadEventQueue (); */
  nsresult DestroyThreadEventQueue();

  /* nsIEventQueue createFromIThread (in nsIThread aThread, in boolean aNative); */
  nsresult CreateFromIThread(nsIThread aThread, PRBool aNative, nsIEventQueue *_retval);

  /* [noscript] nsIEventQueue createFromPLEventQueue (in PLEventQueuePtr aPLEventQueue); */
  nsresult CreateFromPLEventQueue(PLEventQueue * aPLEventQueue, nsIEventQueue *_retval);

  /* nsIEventQueue pushThreadEventQueue (); */
  nsresult PushThreadEventQueue(nsIEventQueue *_retval);

  /* void popThreadEventQueue (in nsIEventQueue aQueue); */
  nsresult PopThreadEventQueue(nsIEventQueue aQueue);

  /* [noscript] nsIEventQueue getThreadEventQueue (in PRThreadPtr aThread); */
  nsresult GetThreadEventQueue(PRThread * aThread, nsIEventQueue *_retval);

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
  nsresult ResolveEventQueue(nsIEventQueue queueOrConstant, nsIEventQueue *_retval);

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
  nsresult GetSpecialEventQueue(PRInt32 aQueue, nsIEventQueue *_retval);

  enum { CURRENT_THREAD_EVENT_QUEUE = 0 };

  enum { UI_THREAD_EVENT_QUEUE = 1 };

}

