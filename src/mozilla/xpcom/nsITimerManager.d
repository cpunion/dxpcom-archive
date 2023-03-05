/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITimerManager.idl
 */

module mozilla.xpcom.nsITimerManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsITimerManager */
const char[] NS_ITIMERMANAGER_IID_STR = "8fce8c6a-1dd2-11b2-8352-8cdd2b965efc";

const nsIID NS_ITIMERMANAGER_IID= 
  {0x8fce8c6a, 0x1dd2, 0x11b2, 
    [ 0x83, 0x52, 0x8c, 0xdd, 0x2b, 0x96, 0x5e, 0xfc ]};

extern(Windows)
interface nsITimerManager : nsISupports {
  static const char[] IID_STR = NS_ITIMERMANAGER_IID_STR;
  static const nsIID IID = NS_ITIMERMANAGER_IID;

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
  nsresult GetUseIdleTimers(PRBool *aUseIdleTimers);
  nsresult SetUseIdleTimers(PRBool aUseIdleTimers);

  /* boolean hasIdleTimers (); */
  nsresult HasIdleTimers(PRBool *_retval);

  /* void fireNextIdleTimer (); */
  nsresult FireNextIdleTimer();

}

