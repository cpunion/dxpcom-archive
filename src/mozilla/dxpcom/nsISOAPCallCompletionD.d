/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPCallCompletion.idl
 */

module mozilla.dxpcom.nsISOAPCallCompletionD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISOAPCallCompletion;


public import mozilla.dxpcom.nsISOAPCallCompletionD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsISOAPCall;

public import mozilla.dxpcom.nsISOAPCallD;

public import mozilla.xpcom.nsISOAPResponse;

public import mozilla.dxpcom.nsISOAPResponseD;

public import mozilla.xpcom.nsISOAPResponseListener;

public import mozilla.dxpcom.nsISOAPResponseListenerD;


/* starting wrapper class:    nsISOAPCallCompletion */
/**
 * This permits the invoker of an asynchronous call to
 *   abort the call before it completes or to test to
 *   see whether it is complete.
 */
class nsISOAPCallCompletionD : public nsISupportsD {

  static const nsIID IID = NS_ISOAPCALLCOMPLETION_IID;


  alias nsISOAPCallCompletion InnerType;

  this(nsISOAPCallCompletion intr){
    super(intr);
    this.inner = intr;
  }

  nsISOAPCallCompletion opCast() {
    return inner;
  }

  void opAssign(nsISOAPCallCompletion value) {
    inner = value;
  }

  /**
   * The call which was invoked (may have changed since
   *   the call was made).
   */
  /* readonly attribute nsISOAPCall call; */
  nsISOAPCallD  Call(){
    nsISOAPCall value;
    nsresult __result = inner.GetCall(&value);
    CheckException(__result);
    return new nsISOAPCallD(value);
  }

  /**
   * The response, if any, to the call.
   */
  /* readonly attribute nsISOAPResponse response; */
  nsISOAPResponseD  Response(){
    nsISOAPResponse value;
    nsresult __result = inner.GetResponse(&value);
    CheckException(__result);
    return new nsISOAPResponseD(value);
  }

  /**
   * The listener to the call.
   */
  /* readonly attribute nsISOAPResponseListener listener; */
  nsISOAPResponseListenerD  Listener(){
    nsISOAPResponseListener value;
    nsresult __result = inner.GetListener(&value);
    CheckException(__result);
    return new nsISOAPResponseListenerD(value);
  }

  /**
   * Whether the call is complete.
   */
  /* readonly attribute boolean isComplete; */
  PRBool IsComplete(){
    PRBool value;
    nsresult __result = inner.GetIsComplete(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Cause the invoked method to abort, if it is not
   * already complete.
   * @return true if the state of isComplete became
   *   true as a result.  False if it was already
   *   true or reamined false.
   */
  /* boolean abort (); */
  PRBool Abort(){
    PRBool _retval;
    nsresult __result = inner.Abort(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISOAPCallCompletion inner;

}

