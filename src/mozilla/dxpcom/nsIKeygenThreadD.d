/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIKeygenThread.idl
 */

module mozilla.dxpcom.nsIKeygenThreadD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIKeygenThread;


public import mozilla.dxpcom.nsIKeygenThreadD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIObserver;

public import mozilla.dxpcom.nsIObserverD;


/* starting wrapper class:    nsIKeygenThread */
/**
 * nsIKeygenThread
 *  This is used to communicate with the thread generating a key pair,
 *  to be used by the dialog displaying status information.
 */
class nsIKeygenThreadD : public nsISupportsD {

  static const nsIID IID = NS_IKEYGENTHREAD_IID;


  alias nsIKeygenThread InnerType;

  this(nsIKeygenThread intr){
    super(intr);
    this.inner = intr;
  }

  nsIKeygenThread opCast() {
    return inner;
  }

  void opAssign(nsIKeygenThread value) {
    inner = value;
  }

  /**
   * startKeyGeneration - run the thread
   *   A user interface using this interface needs to
   *   call this method as soon as the status information
   *   is displaying. This will trigger key generation.
   *   To allow the closure of the status information,
   *   the thread needs a handle to an observer.
   *
   *   observer will be called on the UI thread.
   *   When the key generation is done, the observe method will
   *   be called with a topic of "keygen-finished" and null data
   *   and subject.
   */
  /* void startKeyGeneration (in nsIObserver observer); */
  void StartKeyGeneration(nsIObserverD observer){
    nsresult __result = inner.StartKeyGeneration(observer ? cast(nsIObserver)observer : null);
    CheckException(__result);
  }

  /**
   * userCanceled - notify the thread
   *   If the user canceled, the thread is no longer allowed to
   *   close the dialog. However, if the thread already closed
   *   it, we are not allowed to close it.
   */
  /* void userCanceled (out boolean threadAlreadyClosedDialog); */
  void UserCanceled(out PRBool threadAlreadyClosedDialog){
    nsresult __result = inner.UserCanceled(&threadAlreadyClosedDialog);
    CheckException(__result);
  }

private:
  nsIKeygenThread inner;

}

