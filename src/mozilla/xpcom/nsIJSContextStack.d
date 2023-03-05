/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIJSContextStack.idl
 */

module mozilla.xpcom.nsIJSContextStack;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIJSContextStack */
const char[] NS_IJSCONTEXTSTACK_IID_STR = "c67d8270-3189-11d3-9885-006008962422";

const nsIID NS_IJSCONTEXTSTACK_IID= 
  {0xc67d8270, 0x3189, 0x11d3, 
    [ 0x98, 0x85, 0x00, 0x60, 0x08, 0x96, 0x24, 0x22 ]};

extern(Windows)
interface nsIJSContextStack : nsISupports {
  static const char[] IID_STR = NS_IJSCONTEXTSTACK_IID_STR;
  static const nsIID IID = NS_IJSCONTEXTSTACK_IID;

  /* readonly attribute PRInt32 count; */
  nsresult GetCount(PRInt32 *aCount);

  /* JSContext peek (); */
  nsresult Peek(JSContext * *_retval);

  /* JSContext pop (); */
  nsresult Pop(JSContext * *_retval);

  /* void push (in JSContext cx); */
  nsresult Push(JSContext * cx);

}


/* starting interface:    nsIJSContextStackIterator */
const char[] NS_IJSCONTEXTSTACKITERATOR_IID_STR = "c7e6b7aa-fc12-4ca7-b140-98c38b698961";

const nsIID NS_IJSCONTEXTSTACKITERATOR_IID= 
  {0xc7e6b7aa, 0xfc12, 0x4ca7, 
    [ 0xb1, 0x40, 0x98, 0xc3, 0x8b, 0x69, 0x89, 0x61 ]};

extern(Windows)
interface nsIJSContextStackIterator : nsISupports {
  static const char[] IID_STR = NS_IJSCONTEXTSTACKITERATOR_IID_STR;
  static const nsIID IID = NS_IJSCONTEXTSTACKITERATOR_IID;

  /**
     * Resets this iterator to the beginning of this thread's stack.
     */
  /* void reset (in nsIJSContextStack stack); */
  nsresult Reset(nsIJSContextStack stack);

  /**
     * Returns true if this iterator is at the end of its stack's contexts.
     * @throws NS_ERROR_NOT_INITIALIZED If there has not been a previous call
     *         to reset.
     */
  /* boolean done (); */
  nsresult Done(PRBool *_retval);

  /**
     * Returns the prev JSContext off of stack. Note that because we're 
     * iterating over a stack, this value would be the next popped value.
     *
     * @throws NS_ERROR_NOT_INITIALIZED If there has not been a previous call
     *         to reset.
     * @throws NS_ERROR_NOT_AVAILABLE if already at the end.
     */
  /* JSContext prev (); */
  nsresult Prev(JSContext * *_retval);

}


/* starting interface:    nsIThreadJSContextStack */
const char[] NS_ITHREADJSCONTEXTSTACK_IID_STR = "a1339ae0-05c1-11d4-8f92-0010a4e73d9a";

const nsIID NS_ITHREADJSCONTEXTSTACK_IID= 
  {0xa1339ae0, 0x05c1, 0x11d4, 
    [ 0x8f, 0x92, 0x00, 0x10, 0xa4, 0xe7, 0x3d, 0x9a ]};

extern(Windows)
interface nsIThreadJSContextStack : nsIJSContextStack {
  static const char[] IID_STR = NS_ITHREADJSCONTEXTSTACK_IID_STR;
  static const nsIID IID = NS_ITHREADJSCONTEXTSTACK_IID;

  /* attribute JSContext safeJSContext; */
  nsresult GetSafeJSContext(JSContext * *aSafeJSContext);
  nsresult SetSafeJSContext(JSContext * aSafeJSContext);

}

