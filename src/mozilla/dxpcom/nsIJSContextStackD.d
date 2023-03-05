/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIJSContextStack.idl
 */

module mozilla.dxpcom.nsIJSContextStackD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIJSContextStack;


public import mozilla.dxpcom.nsIJSContextStackD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIJSContextStack */
class nsIJSContextStackD : public nsISupportsD {

  static const nsIID IID = NS_IJSCONTEXTSTACK_IID;


  alias nsIJSContextStack InnerType;

  this(nsIJSContextStack intr){
    super(intr);
    this.inner = intr;
  }

  nsIJSContextStack opCast() {
    return inner;
  }

  void opAssign(nsIJSContextStack value) {
    inner = value;
  }

  /* readonly attribute PRInt32 count; */
  PRInt32 Count(){
    PRInt32 value;
    nsresult __result = inner.GetCount(&value);
    CheckException(__result);
    return value;
  }

  /* JSContext peek (); */
  JSContext * Peek(){
JSContext * _retval;
    nsresult __result = inner.Peek(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* JSContext pop (); */
  JSContext * Pop(){
JSContext * _retval;
    nsresult __result = inner.Pop(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void push (in JSContext cx); */
  void Push(JSContext * cx){
    nsresult __result = inner.Push(cx);
    CheckException(__result);
  }

private:
  nsIJSContextStack inner;

}


/* starting wrapper class:    nsIJSContextStackIterator */
class nsIJSContextStackIteratorD : public nsISupportsD {

  static const nsIID IID = NS_IJSCONTEXTSTACKITERATOR_IID;


  alias nsIJSContextStackIterator InnerType;

  this(nsIJSContextStackIterator intr){
    super(intr);
    this.inner = intr;
  }

  nsIJSContextStackIterator opCast() {
    return inner;
  }

  void opAssign(nsIJSContextStackIterator value) {
    inner = value;
  }

  /**
     * Resets this iterator to the beginning of this thread's stack.
     */
  /* void reset (in nsIJSContextStack stack); */
  void Reset(nsIJSContextStackD stack){
    nsresult __result = inner.Reset(stack ? cast(nsIJSContextStack)stack : null);
    CheckException(__result);
  }

  /**
     * Returns true if this iterator is at the end of its stack's contexts.
     * @throws NS_ERROR_NOT_INITIALIZED If there has not been a previous call
     *         to reset.
     */
  /* boolean done (); */
  PRBool Done(){
    PRBool _retval;
    nsresult __result = inner.Done(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Returns the prev JSContext off of stack. Note that because we're 
     * iterating over a stack, this value would be the next popped value.
     *
     * @throws NS_ERROR_NOT_INITIALIZED If there has not been a previous call
     *         to reset.
     * @throws NS_ERROR_NOT_AVAILABLE if already at the end.
     */
  /* JSContext prev (); */
  JSContext * Prev(){
JSContext * _retval;
    nsresult __result = inner.Prev(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIJSContextStackIterator inner;

}


/* starting wrapper class:    nsIThreadJSContextStack */
class nsIThreadJSContextStackD : public nsIJSContextStackD {

  static const nsIID IID = NS_ITHREADJSCONTEXTSTACK_IID;


  alias nsIThreadJSContextStack InnerType;

  this(nsIThreadJSContextStack intr){
    super(intr);
    this.inner = intr;
  }

  nsIThreadJSContextStack opCast() {
    return inner;
  }

  void opAssign(nsIThreadJSContextStack value) {
    inner = value;
  }

  /* attribute JSContext safeJSContext; */
  JSContext * SafeJSContext(){
    JSContext * value;
    nsresult __result = inner.GetSafeJSContext(&value);
    CheckException(__result);
    return value;
  }
  void SafeJSContext(JSContext * aSafeJSContext){
    nsresult __result = inner.SetSafeJSContext(aSafeJSContext);
    CheckException(__result);
  }

private:
  nsIThreadJSContextStack inner;

}

