/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISupportsIterators.idl
 */

module mozilla.xpcom.nsISupportsIterators;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIOutputIterator */
const char[] NS_IOUTPUTITERATOR_IID_STR = "7330650e-1dd2-11b2-a0c2-9ff86ee97bed";

const nsIID NS_IOUTPUTITERATOR_IID= 
  {0x7330650e, 0x1dd2, 0x11b2, 
    [ 0xa0, 0xc2, 0x9f, 0xf8, 0x6e, 0xe9, 0x7b, 0xed ]};

/**
   * ...
   */
extern(Windows)
interface nsIOutputIterator : nsISupports {
  static const char[] IID_STR = NS_IOUTPUTITERATOR_IID_STR;
  static const nsIID IID = NS_IOUTPUTITERATOR_IID;

  /**
       * Put |anElementToPut| into the underlying container or sequence at the position currently pointed to by this iterator.
       * The iterator and the underlying container or sequence cooperate to |Release()|
       * the replaced element, if any and if necessary, and to |AddRef()| the new element.
       *
       * The result is undefined if this iterator currently points outside the
       * useful range of the underlying container or sequence.
       *
       * @param anElementToPut the element to place into the underlying container or sequence
       */
  /* void putElement (in nsISupports anElementToPut); */
  nsresult PutElement(nsISupports anElementToPut);

  /**
       * Advance this iterator to the next position in the underlying container or sequence.
       */
  /* void stepForward (); */
  nsresult StepForward();

}


/* starting interface:    nsIInputIterator */
const char[] NS_IINPUTITERATOR_IID_STR = "85585e12-1dd2-11b2-a930-f6929058269a";

const nsIID NS_IINPUTITERATOR_IID= 
  {0x85585e12, 0x1dd2, 0x11b2, 
    [ 0xa9, 0x30, 0xf6, 0x92, 0x90, 0x58, 0x26, 0x9a ]};

/**
   * ...
   */
extern(Windows)
interface nsIInputIterator : nsISupports {
  static const char[] IID_STR = NS_IINPUTITERATOR_IID_STR;
  static const nsIID IID = NS_IINPUTITERATOR_IID;

  /**
       * Retrieve (and |AddRef()|) the element this iterator currently points to.
       *
       * The result is undefined if this iterator currently points outside the
       * useful range of the underlying container or sequence.
       *
       * @result a new reference to the element this iterator currently points to (if any)
       */
  /* nsISupports getElement (); */
  nsresult GetElement(nsISupports *_retval);

  /**
       * Advance this iterator to the next position in the underlying container or sequence.
       */
  /* void stepForward (); */
  nsresult StepForward();

  /**
       * Test if |anotherIterator| points to the same position in the underlying container or sequence.
       *
       * The result is undefined if |anotherIterator| was not created by or for the same underlying container or sequence.
       *
       * @param anotherIterator another iterator to compare against, created by or for the same underlying container or sequence
       * @result true if |anotherIterator| points to the same position in the underlying container or sequence
       */
  /* boolean isEqualTo (in nsISupports anotherIterator); */
  nsresult IsEqualTo(nsISupports anotherIterator, PRBool *_retval);

  /**
       * Create a new iterator pointing to the same position in the underlying container or sequence to which this iterator currently points.
       * The returned iterator is suitable for use in a subsequent call to |isEqualTo()| against this iterator.
       *
       * @result a new iterator pointing at the same position in the same underlying container or sequence as this iterator
       */
  /* nsISupports clone (); */
  nsresult Clone(nsISupports *_retval);

}


/* starting interface:    nsIForwardIterator */
const char[] NS_IFORWARDITERATOR_IID_STR = "8da01646-1dd2-11b2-98a7-c7009045be7e";

const nsIID NS_IFORWARDITERATOR_IID= 
  {0x8da01646, 0x1dd2, 0x11b2, 
    [ 0x98, 0xa7, 0xc7, 0x00, 0x90, 0x45, 0xbe, 0x7e ]};

/**
   * ...
   */
extern(Windows)
interface nsIForwardIterator : nsISupports {
  static const char[] IID_STR = NS_IFORWARDITERATOR_IID_STR;
  static const nsIID IID = NS_IFORWARDITERATOR_IID;

  /**
       * Retrieve (and |AddRef()|) the element this iterator currently points to.
       *
       * The result is undefined if this iterator currently points outside the
       * useful range of the underlying container or sequence.
       *
       * @result a new reference to the element this iterator currently points to (if any)
       */
  /* nsISupports getElement (); */
  nsresult GetElement(nsISupports *_retval);

  /**
       * Put |anElementToPut| into the underlying container or sequence at the position currently pointed to by this iterator.
       * The iterator and the underlying container or sequence cooperate to |Release()|
       * the replaced element, if any and if necessary, and to |AddRef()| the new element.
       *
       * The result is undefined if this iterator currently points outside the
       * useful range of the underlying container or sequence.
       *
       * @param anElementToPut the element to place into the underlying container or sequence
       */
  /* void putElement (in nsISupports anElementToPut); */
  nsresult PutElement(nsISupports anElementToPut);

  /**
       * Advance this iterator to the next position in the underlying container or sequence.
       */
  /* void stepForward (); */
  nsresult StepForward();

  /**
       * Test if |anotherIterator| points to the same position in the underlying container or sequence.
       *
       * The result is undefined if |anotherIterator| was not created by or for the same underlying container or sequence.
       *
       * @param anotherIterator another iterator to compare against, created by or for the same underlying container or sequence
       * @result true if |anotherIterator| points to the same position in the underlying container or sequence
       */
  /* boolean isEqualTo (in nsISupports anotherIterator); */
  nsresult IsEqualTo(nsISupports anotherIterator, PRBool *_retval);

  /**
       * Create a new iterator pointing to the same position in the underlying container or sequence to which this iterator currently points.
       * The returned iterator is suitable for use in a subsequent call to |isEqualTo()| against this iterator.
       *
       * @result a new iterator pointing at the same position in the same underlying container or sequence as this iterator
       */
  /* nsISupports clone (); */
  nsresult Clone(nsISupports *_retval);

}


/* starting interface:    nsIBidirectionalIterator */
const char[] NS_IBIDIRECTIONALITERATOR_IID_STR = "948defaa-1dd1-11b2-89f6-8ce81f5ebda9";

const nsIID NS_IBIDIRECTIONALITERATOR_IID= 
  {0x948defaa, 0x1dd1, 0x11b2, 
    [ 0x89, 0xf6, 0x8c, 0xe8, 0x1f, 0x5e, 0xbd, 0xa9 ]};

/**
   * ...
   */
extern(Windows)
interface nsIBidirectionalIterator : nsISupports {
  static const char[] IID_STR = NS_IBIDIRECTIONALITERATOR_IID_STR;
  static const nsIID IID = NS_IBIDIRECTIONALITERATOR_IID;

  /**
       * Retrieve (and |AddRef()|) the element this iterator currently points to.
       *
       * The result is undefined if this iterator currently points outside the
       * useful range of the underlying container or sequence.
       *
       * @result a new reference to the element this iterator currently points to (if any)
       */
  /* nsISupports getElement (); */
  nsresult GetElement(nsISupports *_retval);

  /**
       * Put |anElementToPut| into the underlying container or sequence at the position currently pointed to by this iterator.
       * The iterator and the underlying container or sequence cooperate to |Release()|
       * the replaced element, if any and if necessary, and to |AddRef()| the new element.
       *
       * The result is undefined if this iterator currently points outside the
       * useful range of the underlying container or sequence.
       *
       * @param anElementToPut the element to place into the underlying container or sequence
       */
  /* void putElement (in nsISupports anElementToPut); */
  nsresult PutElement(nsISupports anElementToPut);

  /**
       * Advance this iterator to the next position in the underlying container or sequence.
       */
  /* void stepForward (); */
  nsresult StepForward();

  /**
       * Move this iterator to the previous position in the underlying container or sequence.
       */
  /* void stepBackward (); */
  nsresult StepBackward();

  /**
       * Test if |anotherIterator| points to the same position in the underlying container or sequence.
       *
       * The result is undefined if |anotherIterator| was not created by or for the same underlying container or sequence.
       *
       * @param anotherIterator another iterator to compare against, created by or for the same underlying container or sequence
       * @result true if |anotherIterator| points to the same position in the underlying container or sequence
       */
  /* boolean isEqualTo (in nsISupports anotherIterator); */
  nsresult IsEqualTo(nsISupports anotherIterator, PRBool *_retval);

  /**
       * Create a new iterator pointing to the same position in the underlying container or sequence to which this iterator currently points.
       * The returned iterator is suitable for use in a subsequent call to |isEqualTo()| against this iterator.
       *
       * @result a new iterator pointing at the same position in the same underlying container or sequence as this iterator
       */
  /* nsISupports clone (); */
  nsresult Clone(nsISupports *_retval);

}


/* starting interface:    nsIRandomAccessIterator */
const char[] NS_IRANDOMACCESSITERATOR_IID_STR = "9bd6fdb0-1dd1-11b2-9101-d15375968230";

const nsIID NS_IRANDOMACCESSITERATOR_IID= 
  {0x9bd6fdb0, 0x1dd1, 0x11b2, 
    [ 0x91, 0x01, 0xd1, 0x53, 0x75, 0x96, 0x82, 0x30 ]};

/**
   * ...
   */
extern(Windows)
interface nsIRandomAccessIterator : nsISupports {
  static const char[] IID_STR = NS_IRANDOMACCESSITERATOR_IID_STR;
  static const nsIID IID = NS_IRANDOMACCESSITERATOR_IID;

  /**
       * Retrieve (and |AddRef()|) the element this iterator currently points to.
       *
       * The result is undefined if this iterator currently points outside the
       * useful range of the underlying container or sequence.
       *
       * @result a new reference to the element this iterator currently points to (if any)
       */
  /* nsISupports getElement (); */
  nsresult GetElement(nsISupports *_retval);

  /**
       * Retrieve (and |AddRef()|) an element at some offset from where this iterator currently points.
       * The offset may be negative.  |getElementAt(0)| is equivalent to |getElement()|.
       *
       * The result is undefined if this iterator currently points outside the
       * useful range of the underlying container or sequence.
       *
       * @param anOffset a |0|-based offset from the position to which this iterator currently points
       * @result a new reference to the indicated element (if any)
       */
  /* nsISupports getElementAt (in PRInt32 anOffset); */
  nsresult GetElementAt(PRInt32 anOffset, nsISupports *_retval);

  /**
       * Put |anElementToPut| into the underlying container or sequence at the position currently pointed to by this iterator.
       * The iterator and the underlying container or sequence cooperate to |Release()|
       * the replaced element, if any and if necessary, and to |AddRef()| the new element.
       *
       * The result is undefined if this iterator currently points outside the
       * useful range of the underlying container or sequence.
       *
       * @param anElementToPut the element to place into the underlying container or sequence
       */
  /* void putElement (in nsISupports anElementToPut); */
  nsresult PutElement(nsISupports anElementToPut);

  /**
       * Put |anElementToPut| into the underlying container or sequence at the position |anOffset| away from that currently pointed to by this iterator.
       * The iterator and the underlying container or sequence cooperate to |Release()|
       * the replaced element, if any and if necessary, and to |AddRef()| the new element.
       * |putElementAt(0, obj)| is equivalent to |putElement(obj)|.
       *
       * The result is undefined if this iterator currently points outside the
       * useful range of the underlying container or sequence.
       *
       * @param anOffset a |0|-based offset from the position to which this iterator currently points
       * @param anElementToPut the element to place into the underlying container or sequence
       */
  /* void putElementAt (in PRInt32 anOffset, in nsISupports anElementToPut); */
  nsresult PutElementAt(PRInt32 anOffset, nsISupports anElementToPut);

  /**
       * Advance this iterator to the next position in the underlying container or sequence.
       */
  /* void stepForward (); */
  nsresult StepForward();

  /**
       * Move this iterator by |anOffset| positions in the underlying container or sequence.
       * |anOffset| may be negative.  |stepForwardBy(1)| is equivalent to |stepForward()|.
       * |stepForwardBy(0)| is a no-op.
       *
       * @param anOffset a |0|-based offset from the position to which this iterator currently points
       */
  /* void stepForwardBy (in PRInt32 anOffset); */
  nsresult StepForwardBy(PRInt32 anOffset);

  /**
       * Move this iterator to the previous position in the underlying container or sequence.
       */
  /* void stepBackward (); */
  nsresult StepBackward();

  /**
       * Move this iterator backwards by |anOffset| positions in the underlying container or sequence.
       * |anOffset| may be negative.  |stepBackwardBy(1)| is equivalent to |stepBackward()|.
       * |stepBackwardBy(n)| is equivalent to |stepForwardBy(-n)|.  |stepBackwardBy(0)| is a no-op.
       *
       * @param anOffset a |0|-based offset from the position to which this iterator currently points
       */
  /* void stepBackwardBy (in PRInt32 anOffset); */
  nsresult StepBackwardBy(PRInt32 anOffset);

  /**
       * Test if |anotherIterator| points to the same position in the underlying container or sequence.
       *
       * The result is undefined if |anotherIterator| was not created by or for the same underlying container or sequence.
       *
       * @param anotherIterator another iterator to compare against, created by or for the same underlying container or sequence
       * @result true if |anotherIterator| points to the same position in the underlying container or sequence
       */
  /* boolean isEqualTo (in nsISupports anotherIterator); */
  nsresult IsEqualTo(nsISupports anotherIterator, PRBool *_retval);

  /**
       * Create a new iterator pointing to the same position in the underlying container or sequence to which this iterator currently points.
       * The returned iterator is suitable for use in a subsequent call to |isEqualTo()| against this iterator.
       *
       * @result a new iterator pointing at the same position in the same underlying container or sequence as this iterator
       */
  /* nsISupports clone (); */
  nsresult Clone(nsISupports *_retval);

}

