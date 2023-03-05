/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITimerManager.idl
 */

module mozilla.dxpcom.nsITimerManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsITimerManager;


public import mozilla.dxpcom.nsITimerManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsITimerManager */
class nsITimerManagerD : public nsISupportsD {

  static const nsIID IID = NS_ITIMERMANAGER_IID;


  alias nsITimerManager InnerType;

  this(nsITimerManager intr){
    super(intr);
    this.inner = intr;
  }

  nsITimerManager opCast() {
    return inner;
  }

  void opAssign(nsITimerManager value) {
    inner = value;
  }

  /**
   * A flag that turns on the use of idle timers on the main thread.
   * this should only be called once.
   *
   * By default, idle timers are off.
   *
   * One this is set to TRUE, you are expected to call hasIdleTimers/fireNextIdleTimer
   * when you have time in your main loop.
   */
  /* attribute boolean useIdleTimers; */
  PRBool UseIdleTimers(){
    PRBool value;
    nsresult __result = inner.GetUseIdleTimers(&value);
    CheckException(__result);
    return value;
  }
  void UseIdleTimers(PRBool aUseIdleTimers){
    nsresult __result = inner.SetUseIdleTimers(aUseIdleTimers);
    CheckException(__result);
  }

  /* boolean hasIdleTimers (); */
  PRBool HasIdleTimers(){
    PRBool _retval;
    nsresult __result = inner.HasIdleTimers(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void fireNextIdleTimer (); */
  void FireNextIdleTimer(){
    nsresult __result = inner.FireNextIdleTimer();
    CheckException(__result);
  }

private:
  nsITimerManager inner;

}

