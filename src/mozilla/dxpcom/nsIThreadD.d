/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIThread.idl
 */

module mozilla.dxpcom.nsIThreadD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIThread;


public import mozilla.dxpcom.nsIThreadD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIRunnable;

public import mozilla.dxpcom.nsIRunnableD;


/* starting wrapper class:    nsIThread */
class nsIThreadD : public nsISupportsD {

  static const nsIID IID = NS_ITHREAD_IID;


  alias nsIThread InnerType;

  this(nsIThread intr){
    super(intr);
    this.inner = intr;
  }

  nsIThread opCast() {
    return inner;
  }

  void opAssign(nsIThread value) {
    inner = value;
  }

  enum { PRIORITY_LOW = 0U }

  enum { PRIORITY_NORMAL = 1U }

  enum { PRIORITY_HIGH = 2U }

  enum { PRIORITY_URGENT = 3U }

  enum { SCOPE_LOCAL = 0U }

  enum { SCOPE_GLOBAL = 1U }

  enum { SCOPE_BOUND = 2U }

  enum { STATE_JOINABLE = 0U }

  enum { STATE_UNJOINABLE = 1U }

  /* void join (); */
  void Join(){
    nsresult __result = inner.Join();
    CheckException(__result);
  }

  /* void interrupt (); */
  void Interrupt(){
    nsresult __result = inner.Interrupt();
    CheckException(__result);
  }

  /* attribute PRThreadPriority priority; */
  PRThreadPriority Priority(){
    PRThreadPriority value;
    nsresult __result = inner.GetPriority(&value);
    CheckException(__result);
    return value;
  }
  void Priority(PRThreadPriority aPriority){
    PRThreadPriority value;
    nsresult __result = inner.SetPriority(value);
    CheckException(__result);
  }

  /* readonly attribute PRThreadScope scope; */
  PRThreadScope Scope(){
    PRThreadScope value;
    nsresult __result = inner.GetScope(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRThreadState state; */
  PRThreadState State(){
    PRThreadState value;
    nsresult __result = inner.GetState(&value);
    CheckException(__result);
    return value;
  }

  /* [noscript] PRThread GetPRThread (); */
  PRThread * GetPRThread(){
PRThread * _retval;
    nsresult __result = inner.GetPRThread(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void init (in nsIRunnable aRunnable, in PRUint32 aStackSize, in PRThreadPriority aPriority, in PRThreadScope aScope, in PRThreadState aState); */
  void Init(nsIRunnableD aRunnable, PRUint32 aStackSize, PRThreadPriority aPriority, PRThreadScope aScope, PRThreadState aState){
    nsresult __result = inner.Init(aRunnable ? cast(nsIRunnable)aRunnable : null, aStackSize, aPriority, aScope, aState);
    CheckException(__result);
  }

  /* readonly attribute nsIThread currentThread; */
  nsIThreadD  CurrentThread(){
    nsIThread value;
    nsresult __result = inner.GetCurrentThread(&value);
    CheckException(__result);
    return new nsIThreadD(value);
  }

  /* void sleep (in PRUint32 msec); */
  void Sleep(PRUint32 msec){
    nsresult __result = inner.Sleep(msec);
    CheckException(__result);
  }

private:
  nsIThread inner;

}

