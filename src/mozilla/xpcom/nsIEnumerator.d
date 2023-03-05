/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEnumerator.idl
 */

module mozilla.xpcom.nsIEnumerator;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISimpleEnumerator;


/* starting interface:    nsIEnumerator */
const char[] NS_IENUMERATOR_IID_STR = "ad385286-cbc4-11d2-8cca-0060b0fc14a3";

const nsIID NS_IENUMERATOR_IID= 
  {0xad385286, 0xcbc4, 0x11d2, 
    [ 0x8c, 0xca, 0x00, 0x60, 0xb0, 0xfc, 0x14, 0xa3 ]};

extern(Windows)
interface nsIEnumerator : nsISupports {
  static const char[] IID_STR = NS_IENUMERATOR_IID_STR;
  static const nsIID IID = NS_IENUMERATOR_IID;

  /** First will reset the list. will return NS_FAILED if no items
   */
  /* void first (); */
  nsresult First();

  /** Next will advance the list. will return failed if already at end
   */
  /* void next (); */
  nsresult Next();

  /** CurrentItem will return the CurrentItem item it will fail if the 
   *  list is empty
   */
  /* nsISupports currentItem (); */
  nsresult CurrentItem(nsISupports *_retval);

  /** return if the collection is at the end.  that is the beginning following 
   *  a call to Prev and it is the end of the list following a call to next
   */
  /* void isDone (); */
  nsresult IsDone();

}


/* starting interface:    nsIBidirectionalEnumerator */
const char[] NS_IBIDIRECTIONALENUMERATOR_IID_STR = "75f158a0-cadd-11d2-8cca-0060b0fc14a3";

const nsIID NS_IBIDIRECTIONALENUMERATOR_IID= 
  {0x75f158a0, 0xcadd, 0x11d2, 
    [ 0x8c, 0xca, 0x00, 0x60, 0xb0, 0xfc, 0x14, 0xa3 ]};

extern(Windows)
interface nsIBidirectionalEnumerator : nsIEnumerator {
  static const char[] IID_STR = NS_IBIDIRECTIONALENUMERATOR_IID_STR;
  static const nsIID IID = NS_IBIDIRECTIONALENUMERATOR_IID;

  /** Last will reset the list to the end. will return NS_FAILED if no items
   */
  /* void last (); */
  nsresult Last();

  /** Prev will decrement the list. will return failed if already at beginning
   */
  /* void prev (); */
  nsresult Prev();

}

