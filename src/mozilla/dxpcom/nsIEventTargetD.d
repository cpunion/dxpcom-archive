/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEventTarget.idl
 */

module mozilla.dxpcom.nsIEventTargetD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIEventTarget;


public import mozilla.dxpcom.nsIEventTargetD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIEventTarget */
/**
 * nsIEventTarget
 *
 * This interface is used to dispatch events to a particular thread.  In many
 * cases the event target also supports nsIEventQueue.
 */
class nsIEventTargetD : public nsISupportsD {

  static const nsIID IID = NS_IEVENTTARGET_IID;


  alias nsIEventTarget InnerType;

  this(nsIEventTarget intr){
    super(intr);
    this.inner = intr;
  }

  nsIEventTarget opCast() {
    return inner;
  }

  void opAssign(nsIEventTarget value) {
    inner = value;
  }

  /**
     * Method for posting an asynchronous event to the event target.  If this
     * method succeeds, then the event will be dispatched on the target thread.
     *
     * @param aEvent
     *        The event to dispatched.
     */
  /* [noscript] void postEvent (in PLEventPtr aEvent); */
  void PostEvent(PLEvent * aEvent){
    nsresult __result = inner.PostEvent(aEvent);
    CheckException(__result);
  }

  /**
     * This method returns true if the event target is the current thread.
     */
  /* boolean isOnCurrentThread (); */
  PRBool IsOnCurrentThread(){
    PRBool _retval;
    nsresult __result = inner.IsOnCurrentThread(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIEventTarget inner;

}

