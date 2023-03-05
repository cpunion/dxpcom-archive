/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISimpleEnumerator.idl
 */

module mozilla.dxpcom.nsISimpleEnumeratorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISimpleEnumerator;


public import mozilla.dxpcom.nsISimpleEnumeratorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsISimpleEnumerator */
/**
 * Used to enumerate over elements defined by its implementor.
 * Although hasMoreElements() can be called independently of getNext(),
 * getNext() must be pre-ceeded by a call to hasMoreElements(). There is
 * no way to "reset" an enumerator, once you obtain one.
 *
 * @status FROZEN
 * @version 1.0
 */
class nsISimpleEnumeratorD : public nsISupportsD {

  static const nsIID IID = NS_ISIMPLEENUMERATOR_IID;


  alias nsISimpleEnumerator InnerType;

  this(nsISimpleEnumerator intr){
    super(intr);
    this.inner = intr;
  }

  nsISimpleEnumerator opCast() {
    return inner;
  }

  void opAssign(nsISimpleEnumerator value) {
    inner = value;
  }

  /**
   * Called to determine whether or not the enumerator has
   * any elements that can be returned via getNext(). This method
   * is generally used to determine whether or not to initiate or
   * continue iteration over the enumerator, though it can be
   * called without subsequent getNext() calls. Does not affect
   * internal state of enumerator.
   *
   * @see getNext()
   * @return PR_TRUE if there are remaining elements in the enumerator.
   *         PR_FALSE if there are no more elements in the enumerator.
   */
  /* boolean hasMoreElements (); */
  PRBool HasMoreElements(){
    PRBool _retval;
    nsresult __result = inner.HasMoreElements(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Called to retrieve the next element in the enumerator. The "next"
   * element is the first element upon the first call. Must be
   * pre-ceeded by a call to hasMoreElements() which returns PR_TRUE.
   * This method is generally called within a loop to iterate over
   * the elements in the enumerator.
   *
   * @see hasMoreElements()
   * @return NS_OK if the call succeeded in returning a non-null
   *               value through the out parameter.
   *         NS_ERROR_FAILURE if there are no more elements
   *                          to enumerate.
   * @return the next element in the enumeration.
   */
  /* nsISupports getNext (); */
  nsISupportsD  GetNext(){
    nsISupports _retval;
    nsresult __result = inner.GetNext(&_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

private:
  nsISimpleEnumerator inner;

}

