/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITimer.idl
 */

module mozilla.dxpcom.nsITimerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsITimer;


public import mozilla.dxpcom.nsITimerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIObserver;

public import mozilla.dxpcom.nsIObserverD;

public import mozilla.xpcom.nsITimer;

public import mozilla.dxpcom.nsITimerD;


/* starting wrapper class:    nsITimerCallback */
class nsITimerCallbackD : public nsISupportsD {

  static const nsIID IID = NS_ITIMERCALLBACK_IID;


  alias nsITimerCallback InnerType;

  this(nsITimerCallback intr){
    super(intr);
    this.inner = intr;
  }

  nsITimerCallback opCast() {
    return inner;
  }

  void opAssign(nsITimerCallback value) {
    inner = value;
  }

  /**
   * @param aTimer the timer which has expired
   */
  /* void notify (in nsITimer timer); */
  void Notify(nsITimerD timer){
    nsresult __result = inner.Notify(timer ? cast(nsITimer)timer : null);
    CheckException(__result);
  }

private:
  nsITimerCallback inner;

}


/* starting wrapper class:    nsITimer */
/**
 * The callback interface for timers.
 */
class nsITimerD : public nsISupportsD {

  static const nsIID IID = NS_ITIMER_IID;


  alias nsITimer InnerType;

  this(nsITimer intr){
    super(intr);
    this.inner = intr;
  }

  nsITimer opCast() {
    return inner;
  }

  void opAssign(nsITimer value) {
    inner = value;
  }

  /**
 * nsITimer instances must be initialized by calling one of the "init" methods
 * documented below.  You may also re-initialize an existing instance with new
 * delay to avoid the overhead of destroying and creating a timer.  It is not
 * necessary to cancel the timer in that case.
 */
/**
   * Type of a timer that fires once only.
   */
  enum { TYPE_ONE_SHOT = 0 }

  /**
   * After firing, a TYPE_REPEATING_SLACK timer is stopped and not restarted
   * until its callback completes.  Specified timer period will be at least
   * the time between when processing for last firing the callback completes
   * and when the next firing occurs.
   *
   * This is the preferable repeating type for most situations.
   */
  enum { TYPE_REPEATING_SLACK = 1 }

  /**
   * An TYPE_REPEATING_PRECISE repeating timer aims to have constant period
   * between firings.  The processing time for each timer callback should not
   * influence the timer period.  However, if the processing for the last
   * timer firing could not be completed until just before the next firing
   * occurs, then you could have two timer notification routines being
   * executed in quick succession.
   */
  enum { TYPE_REPEATING_PRECISE = 2 }

  /**
   * Initialize a timer that will fire after the said delay.
   * A user must keep a reference to this timer till it is 
   * is no longer needed or has been cancelled.
   *
   * @param aObserver   the callback object that observes the 
   *                    ``timer-callback'' topic with the subject being
   *                    the timer itself when the timer fires:
   *
   *                    observe(nsISupports aSubject, => nsITimer
   *                            string aTopic,        => ``timer-callback''
   *                            wstring data          =>  null
   *
   * @param aDelay      delay in milliseconds for timer to fire
   * @param aType       timer type per TYPE* consts defined above
   */
  /* void init (in nsIObserver aObserver, in unsigned long aDelay, in unsigned long aType); */
  void Init(nsIObserverD aObserver, PRUint32 aDelay, PRUint32 aType){
    nsresult __result = inner.Init(aObserver ? cast(nsIObserver)aObserver : null, aDelay, aType);
    CheckException(__result);
  }

  /**
   * Initialize a timer to fire after the given millisecond interval.
   * This version takes a function to call and a closure to pass to
   * that function.
   *
   * @param aFunc      The function to invoke
   * @param aClosure   An opaque pointer to pass to that function
   * @param aDelay     The millisecond interval
   * @param aType      Timer type per TYPE* consts defined above
   */
  /* [noscript] void initWithFuncCallback (in nsTimerCallbackFunc aCallback, in voidPtr aClosure, in unsigned long aDelay, in unsigned long aType); */
  void InitWithFuncCallback(nsTimerCallbackFunc aCallback, void * aClosure, PRUint32 aDelay, PRUint32 aType){
    nsresult __result = inner.InitWithFuncCallback(aCallback, aClosure, aDelay, aType);
    CheckException(__result);
  }

  /**
   * Initialize a timer to fire after the given millisecond interval.
   * This version takes a function to call and a closure to pass to
   * that function.
   *
   * @param aFunc      nsITimerCallback interface to call when timer expires
   * @param aDelay     The millisecond interval
   * @param aType      Timer type per TYPE* consts defined above
   */
  /* void initWithCallback (in nsITimerCallback aCallback, in unsigned long aDelay, in unsigned long aType); */
  void InitWithCallback(nsITimerCallbackD aCallback, PRUint32 aDelay, PRUint32 aType){
    nsresult __result = inner.InitWithCallback(aCallback ? cast(nsITimerCallback)aCallback : null, aDelay, aType);
    CheckException(__result);
  }

  /**
   * Cancel the timer.  This method works on all types, not just on repeating
   * timers -- you might want to cancel a TYPE_ONE_SHOT timer, and even reuse
   * it by re-initializing it (to avoid object destruction and creation costs
   * by conserving one timer instance).
   */
  /* void cancel (); */
  void Cancel(){
    nsresult __result = inner.Cancel();
    CheckException(__result);
  }

  /**
   * The millisecond delay of the timeout
   */
  /* attribute unsigned long delay; */
  PRUint32 Delay(){
    PRUint32 value;
    nsresult __result = inner.GetDelay(&value);
    CheckException(__result);
    return value;
  }
  void Delay(PRUint32 aDelay){
    nsresult __result = inner.SetDelay(aDelay);
    CheckException(__result);
  }

  /**
   * The timer type : one shot or repeating
   */
  /* attribute unsigned long type; */
  PRUint32 Type(){
    PRUint32 value;
    nsresult __result = inner.GetType(&value);
    CheckException(__result);
    return value;
  }
  void Type(PRUint32 aType){
    nsresult __result = inner.SetType(aType);
    CheckException(__result);
  }

  /**
   * The opaque pointer pass to initWithFuncCallback.
   */
  /* [noscript] readonly attribute voidPtr closure; */
  void * Closure(){
    void * value;
    nsresult __result = inner.GetClosure(&value);
    CheckException(__result);
    return value;
  }

  /**
   * The nsITimerCallback object passed to initWithCallback.
   */
  /* readonly attribute nsITimerCallback callback; */
  nsITimerCallbackD  Callback(){
    nsITimerCallback value;
    nsresult __result = inner.GetCallback(&value);
    CheckException(__result);
    return new nsITimerCallbackD(value);
  }

private:
  nsITimer inner;

}

