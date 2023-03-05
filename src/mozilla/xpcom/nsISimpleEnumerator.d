/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISimpleEnumerator.idl
 */

module mozilla.xpcom.nsISimpleEnumerator;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsISimpleEnumerator */
const char[] NS_ISIMPLEENUMERATOR_IID_STR = "d1899240-f9d2-11d2-bdd6-000064657374";

const nsIID NS_ISIMPLEENUMERATOR_IID= 
  {0xd1899240, 0xf9d2, 0x11d2, 
    [ 0xbd, 0xd6, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

/**
 * Used to enumerate over elements defined by its implementor.
 * Although hasMoreElements() can be called independently of getNext(),
 * getNext() must be pre-ceeded by a call to hasMoreElements(). There is
 * no way to "reset" an enumerator, once you obtain one.
 *
 * @status FROZEN
 * @version 1.0
 */
extern(Windows)
interface nsISimpleEnumerator : nsISupports {
  static const char[] IID_STR = NS_ISIMPLEENUMERATOR_IID_STR;
  static const nsIID IID = NS_ISIMPLEENUMERATOR_IID;

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
  nsresult HasMoreElements(PRBool *_retval);

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
  nsresult GetNext(nsISupports *_retval);

}

