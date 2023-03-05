/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEventQueue.idl
 */

module mozilla.dxpcom.nsIEventQueueD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIEventQueue;


public import mozilla.dxpcom.nsIEventQueueD;

public import mozilla.xpcom.nsIEventTarget;
public import mozilla.dxpcom.nsIEventTargetD;


/* starting wrapper class:    nsIEventQueue */
class nsIEventQueueD : public nsIEventTargetD {

  static const nsIID IID = NS_IEVENTQUEUE_IID;


  alias nsIEventQueue InnerType;

  this(nsIEventQueue intr){
    super(intr);
    this.inner = intr;
  }

  nsIEventQueue opCast() {
    return inner;
  }

  void opAssign(nsIEventQueue value) {
    inner = value;
  }

  /* [noscript] void initEvent (in PLEventPtr aEvent, in voidPtr owner, in PLHandleEventProc handler, in PLDestroyEventProc destructor); */
  void InitEvent(PLEvent * aEvent, void * owner, PLHandleEventProc handler, PLDestroyEventProc destructor){
    nsresult __result = inner.InitEvent(aEvent, owner, handler, destructor);
    CheckException(__result);
  }

  /* [noscript] void postSynchronousEvent (in PLEventPtr aEvent, out voidPtr aResult); */
  void PostSynchronousEvent(PLEvent * aEvent, out void * aResult){
    nsresult __result = inner.PostSynchronousEvent(aEvent, &aResult);
    CheckException(__result);
  }

  /* boolean pendingEvents (); */
  PRBool PendingEvents(){
    PRBool _retval;
    nsresult __result = inner.PendingEvents(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void processPendingEvents (); */
  void ProcessPendingEvents(){
    nsresult __result = inner.ProcessPendingEvents();
    CheckException(__result);
  }

  /* void eventLoop (); */
  void EventLoop(){
    nsresult __result = inner.EventLoop();
    CheckException(__result);
  }

  /* [noscript] void eventAvailable (in PRBoolRef aResult); */
  void EventAvailable(PRBool * aResult){
    nsresult __result = inner.EventAvailable(aResult);
    CheckException(__result);
  }

  /* [noscript] PLEventPtr getEvent (); */
  PLEvent * GetEvent(){
PLEvent * _retval;
    nsresult __result = inner.GetEvent(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] void handleEvent (in PLEventPtr aEvent); */
  void HandleEvent(PLEvent * aEvent){
    nsresult __result = inner.HandleEvent(aEvent);
    CheckException(__result);
  }

  /* [noscript] PLEventPtr waitForEvent (); */
  PLEvent * WaitForEvent(){
PLEvent * _retval;
    nsresult __result = inner.WaitForEvent(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* [notxpcom] PRInt32 getEventQueueSelectFD (); */
  PRInt32 GetEventQueueSelectFD(){
    PRInt32 _retval;
    _retval = inner.GetEventQueueSelectFD();

    return _retval;
  }

  /* void init (in boolean aNative); */
  void Init(PRBool aNative){
    nsresult __result = inner.Init(aNative);
    CheckException(__result);
  }

  /* [noscript] void initFromPRThread (in PRThreadPtr thread, in boolean aNative); */
  void InitFromPRThread(PRThread * thread, PRBool aNative){
    nsresult __result = inner.InitFromPRThread(thread, aNative);
    CheckException(__result);
  }

  /* [noscript] void initFromPLQueue (in PLEventQueuePtr aQueue); */
  void InitFromPLQueue(PLEventQueue * aQueue){
    nsresult __result = inner.InitFromPLQueue(aQueue);
    CheckException(__result);
  }

  /* void enterMonitor (); */
  void EnterMonitor(){
    nsresult __result = inner.EnterMonitor();
    CheckException(__result);
  }

  /* void exitMonitor (); */
  void ExitMonitor(){
    nsresult __result = inner.ExitMonitor();
    CheckException(__result);
  }

  /**
     * Revoke events in this event queue and all other event queues
     * for this thread that have |owner| as the event owner.
     */
  /* [noscript] void revokeEvents (in voidPtr owner); */
  void RevokeEvents(void * owner){
    nsresult __result = inner.RevokeEvents(owner);
    CheckException(__result);
  }

  /* [noscript] PLEventQueuePtr getPLEventQueue (); */
  PLEventQueue * GetPLEventQueue(){
PLEventQueue * _retval;
    nsresult __result = inner.GetPLEventQueue(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean isQueueNative (); */
  PRBool IsQueueNative(){
    PRBool _retval;
    nsresult __result = inner.IsQueueNative(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void stopAcceptingEvents (); */
  void StopAcceptingEvents(){
    nsresult __result = inner.StopAcceptingEvents();
    CheckException(__result);
  }

private:
  nsIEventQueue inner;

}

