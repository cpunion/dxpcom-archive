/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEventQueue.idl
 */

module mozilla.xpcom.nsIEventQueue;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIEventTarget;


/* starting interface:    nsIEventQueue */
const char[] NS_IEVENTQUEUE_IID_STR = "176afb41-00a4-11d3-9f2a-00400553eef0";

const nsIID NS_IEVENTQUEUE_IID= 
  {0x176afb41, 0x00a4, 0x11d3, 
    [ 0x9f, 0x2a, 0x00, 0x40, 0x05, 0x53, 0xee, 0xf0 ]};

extern(Windows)
interface nsIEventQueue : nsIEventTarget {
  static const char[] IID_STR = NS_IEVENTQUEUE_IID_STR;
  static const nsIID IID = NS_IEVENTQUEUE_IID;

  /* [noscript] void initEvent (in PLEventPtr aEvent, in voidPtr owner, in PLHandleEventProc handler, in PLDestroyEventProc destructor); */
  nsresult InitEvent(PLEvent * aEvent, void * owner, PLHandleEventProc handler, PLDestroyEventProc destructor);

  /* [noscript] void postSynchronousEvent (in PLEventPtr aEvent, out voidPtr aResult); */
  nsresult PostSynchronousEvent(PLEvent * aEvent, void * *aResult);

  /* boolean pendingEvents (); */
  nsresult PendingEvents(PRBool *_retval);

  /* void processPendingEvents (); */
  nsresult ProcessPendingEvents();

  /* void eventLoop (); */
  nsresult EventLoop();

  /* [noscript] void eventAvailable (in PRBoolRef aResult); */
  nsresult EventAvailable(PRBool * aResult);

  /* [noscript] PLEventPtr getEvent (); */
  nsresult GetEvent(PLEvent * *_retval);

  /* [noscript] void handleEvent (in PLEventPtr aEvent); */
  nsresult HandleEvent(PLEvent * aEvent);

  /* [noscript] PLEventPtr waitForEvent (); */
  nsresult WaitForEvent(PLEvent * *_retval);

  /* [notxpcom] PRInt32 getEventQueueSelectFD (); */
  PRInt32 GetEventQueueSelectFD();

  /* void init (in boolean aNative); */
  nsresult Init(PRBool aNative);

  /* [noscript] void initFromPRThread (in PRThreadPtr thread, in boolean aNative); */
  nsresult InitFromPRThread(PRThread * thread, PRBool aNative);

  /* [noscript] void initFromPLQueue (in PLEventQueuePtr aQueue); */
  nsresult InitFromPLQueue(PLEventQueue * aQueue);

  /* void enterMonitor (); */
  nsresult EnterMonitor();

  /* void exitMonitor (); */
  nsresult ExitMonitor();

  /**
     * Revoke events in this event queue and all other event queues
     * for this thread that have |owner| as the event owner.
     */
  /* [noscript] void revokeEvents (in voidPtr owner); */
  nsresult RevokeEvents(void * owner);

  /* [noscript] PLEventQueuePtr getPLEventQueue (); */
  nsresult GetPLEventQueue(PLEventQueue * *_retval);

  /* boolean isQueueNative (); */
  nsresult IsQueueNative(PRBool *_retval);

  /* void stopAcceptingEvents (); */
  nsresult StopAcceptingEvents();

}

