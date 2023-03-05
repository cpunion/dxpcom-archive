/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEnumerator.idl
 */

module mozilla.dxpcom.nsIEnumeratorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIEnumerator;


public import mozilla.dxpcom.nsIEnumeratorD;

public import mozilla.xpcom.nsISimpleEnumerator;
public import mozilla.dxpcom.nsISimpleEnumeratorD;


/* starting wrapper class:    nsIEnumerator */
class nsIEnumeratorD : public nsISupportsD {

  static const nsIID IID = NS_IENUMERATOR_IID;


  alias nsIEnumerator InnerType;

  this(nsIEnumerator intr){
    super(intr);
    this.inner = intr;
  }

  nsIEnumerator opCast() {
    return inner;
  }

  void opAssign(nsIEnumerator value) {
    inner = value;
  }

  /** First will reset the list. will return NS_FAILED if no items
   */
  /* void first (); */
  void First(){
    nsresult __result = inner.First();
    CheckException(__result);
  }

  /** Next will advance the list. will return failed if already at end
   */
  /* void next (); */
  void Next(){
    nsresult __result = inner.Next();
    CheckException(__result);
  }

  /** CurrentItem will return the CurrentItem item it will fail if the 
   *  list is empty
   */
  /* nsISupports currentItem (); */
  nsISupportsD  CurrentItem(){
    nsISupports _retval;
    nsresult __result = inner.CurrentItem(&_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

  /** return if the collection is at the end.  that is the beginning following 
   *  a call to Prev and it is the end of the list following a call to next
   */
  /* void isDone (); */
  void IsDone(){
    nsresult __result = inner.IsDone();
    CheckException(__result);
  }

private:
  nsIEnumerator inner;

}


/* starting wrapper class:    nsIBidirectionalEnumerator */
class nsIBidirectionalEnumeratorD : public nsIEnumeratorD {

  static const nsIID IID = NS_IBIDIRECTIONALENUMERATOR_IID;


  alias nsIBidirectionalEnumerator InnerType;

  this(nsIBidirectionalEnumerator intr){
    super(intr);
    this.inner = intr;
  }

  nsIBidirectionalEnumerator opCast() {
    return inner;
  }

  void opAssign(nsIBidirectionalEnumerator value) {
    inner = value;
  }

  /** Last will reset the list to the end. will return NS_FAILED if no items
   */
  /* void last (); */
  void Last(){
    nsresult __result = inner.Last();
    CheckException(__result);
  }

  /** Prev will decrement the list. will return failed if already at beginning
   */
  /* void prev (); */
  void Prev(){
    nsresult __result = inner.Prev();
    CheckException(__result);
  }

private:
  nsIBidirectionalEnumerator inner;

}

