/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITimer.idl
 */

module mozilla.xpcom.nsITimer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIObserver; /* forward declaration */

typedef void function(nsITimer aTimer, void *aClosure) nsTimerCallbackFunc;
public import mozilla.xpcom.nsITimer; /* forward declaration */


/* starting interface:    nsITimerCallback */
const char[] NS_ITIMERCALLBACK_IID_STR = "a796816d-7d47-4348-9ab8-c7aeb3216a7d";

const nsIID NS_ITIMERCALLBACK_IID= 
  {0xa796816d, 0x7d47, 0x4348, 
    [ 0x9a, 0xb8, 0xc7, 0xae, 0xb3, 0x21, 0x6a, 0x7d ]};

extern(Windows)
interface nsITimerCallback : nsISupports {
  static const char[] IID_STR = NS_ITIMERCALLBACK_IID_STR;
  static const nsIID IID = NS_ITIMERCALLBACK_IID;

  /**
   * @param aTimer the timer which has expired
   */
  /* void notify (in nsITimer timer); */
  nsresult Notify(nsITimer timer);

}


/* starting interface:    nsITimer */
const char[] NS_ITIMER_IID_STR = "436a83fa-b396-11d9-bcfa-00112478d626";

const nsIID NS_ITIMER_IID= 
  {0x436a83fa, 0xb396, 0x11d9, 
    [ 0xbc, 0xfa, 0x00, 0x11, 0x24, 0x78, 0xd6, 0x26 ]};

/**
 * The callback interface for timers.
 */
extern(Windows)
interface nsITimer : nsISupports {
  static const char[] IID_STR = NS_ITIMER_IID_STR;
  static const nsIID IID = NS_ITIMER_IID;

  /**
 * nsITimer instances must be initialized by calling one of the "init" methods
 * documented below.  You may also re-initialize an existing instance with new
 * delay to avoid the overhead of destroying and creating a timer.  It is not
 * necessary to cancel the timer in that case.
 */
/**
   * Type of a timer that fires once only.
   */
  enum { TYPE_ONE_SHOT = 0 };

  /**
   * After firing, a TYPE_REPEATING_SLACK timer is stopped and not restarted
   * until its callback completes.  Specified timer period will be at least
   * the time between when processing for last firing the callback completes
   * and when the next firing occurs.
   *
   * This is the preferable repeating type for most situations.
   */
  enum { TYPE_REPEATING_SLACK = 1 };

  /**
   * An TYPE_REPEATING_PRECISE repeating timer aims to have constant period
   * between firings.  The processing time for each timer callback should not
   * influence the timer period.  However, if the processing for the last
   * timer firing could not be completed until just before the next firing
   * occurs, then you could have two timer notification routines being
   * executed in quick succession.
   */
  enum { TYPE_REPEATING_PRECISE = 2 };

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
  nsresult Init(nsIObserver aObserver, PRUint32 aDelay, PRUint32 aType);

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
  nsresult InitWithFuncCallback(nsTimerCallbackFunc aCallback, void * aClosure, PRUint32 aDelay, PRUint32 aType);

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
  nsresult InitWithCallback(nsITimerCallback aCallback, PRUint32 aDelay, PRUint32 aType);

  /**
   * Cancel the timer.  This method works on all types, not just on repeating
   * timers -- you might want to cancel a TYPE_ONE_SHOT timer, and even reuse
   * it by re-initializing it (to avoid object destruction and creation costs
   * by conserving one timer instance).
   */
  /* void cancel (); */
  nsresult Cancel();

  /**
   * The millisecond delay of the timeout
   */
  /* attribute unsigned long delay; */
  nsresult GetDelay(PRUint32 *aDelay);
  nsresult SetDelay(PRUint32 aDelay);

  /**
   * The timer type : one shot or repeating
   */
  /* attribute unsigned long type; */
  nsresult GetType(PRUint32 *aType);
  nsresult SetType(PRUint32 aType);

  /**
   * The opaque pointer pass to initWithFuncCallback.
   */
  /* [noscript] readonly attribute voidPtr closure; */
  nsresult GetClosure(void * *aClosure);

  /**
   * The nsITimerCallback object passed to initWithCallback.
   */
  /* readonly attribute nsITimerCallback callback; */
  nsresult GetCallback(nsITimerCallback  *aCallback);

}

