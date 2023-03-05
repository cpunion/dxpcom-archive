/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISupportsIterators.idl
 */

module mozilla.dxpcom.nsISupportsIteratorsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISupportsIterators;


public import mozilla.dxpcom.nsISupportsIteratorsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIOutputIterator */
/**
   * ...
   */
class nsIOutputIteratorD : public nsISupportsD {

  static const nsIID IID = NS_IOUTPUTITERATOR_IID;


  alias nsIOutputIterator InnerType;

  this(nsIOutputIterator intr){
    super(intr);
    this.inner = intr;
  }

  nsIOutputIterator opCast() {
    return inner;
  }

  void opAssign(nsIOutputIterator value) {
    inner = value;
  }

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
  void PutElement(nsISupportsD anElementToPut){
    nsresult __result = inner.PutElement(anElementToPut ? cast(nsISupports)anElementToPut : null);
    CheckException(__result);
  }

  /**
       * Advance this iterator to the next position in the underlying container or sequence.
       */
  /* void stepForward (); */
  void StepForward(){
    nsresult __result = inner.StepForward();
    CheckException(__result);
  }

private:
  nsIOutputIterator inner;

}


/* starting wrapper class:    nsIInputIterator */
/**
   * ...
   */
class nsIInputIteratorD : public nsISupportsD {

  static const nsIID IID = NS_IINPUTITERATOR_IID;


  alias nsIInputIterator InnerType;

  this(nsIInputIterator intr){
    super(intr);
    this.inner = intr;
  }

  nsIInputIterator opCast() {
    return inner;
  }

  void opAssign(nsIInputIterator value) {
    inner = value;
  }

  /**
       * Retrieve (and |AddRef()|) the element this iterator currently points to.
       *
       * The result is undefined if this iterator currently points outside the
       * useful range of the underlying container or sequence.
       *
       * @result a new reference to the element this iterator currently points to (if any)
       */
  /* nsISupports getElement (); */
  nsISupportsD  GetElement(){
    nsISupports _retval;
    nsresult __result = inner.GetElement(&_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

  /**
       * Advance this iterator to the next position in the underlying container or sequence.
       */
  /* void stepForward (); */
  void StepForward(){
    nsresult __result = inner.StepForward();
    CheckException(__result);
  }

  /**
       * Test if |anotherIterator| points to the same position in the underlying container or sequence.
       *
       * The result is undefined if |anotherIterator| was not created by or for the same underlying container or sequence.
       *
       * @param anotherIterator another iterator to compare against, created by or for the same underlying container or sequence
       * @result true if |anotherIterator| points to the same position in the underlying container or sequence
       */
  /* boolean isEqualTo (in nsISupports anotherIterator); */
  PRBool IsEqualTo(nsISupportsD anotherIterator){
    PRBool _retval;
    nsresult __result = inner.IsEqualTo(anotherIterator ? cast(nsISupports)anotherIterator : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
       * Create a new iterator pointing to the same position in the underlying container or sequence to which this iterator currently points.
       * The returned iterator is suitable for use in a subsequent call to |isEqualTo()| against this iterator.
       *
       * @result a new iterator pointing at the same position in the same underlying container or sequence as this iterator
       */
  /* nsISupports clone (); */
  nsISupportsD  Clone(){
    nsISupports _retval;
    nsresult __result = inner.Clone(&_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

private:
  nsIInputIterator inner;

}


/* starting wrapper class:    nsIForwardIterator */
/**
   * ...
   */
class nsIForwardIteratorD : public nsISupportsD {

  static const nsIID IID = NS_IFORWARDITERATOR_IID;


  alias nsIForwardIterator InnerType;

  this(nsIForwardIterator intr){
    super(intr);
    this.inner = intr;
  }

  nsIForwardIterator opCast() {
    return inner;
  }

  void opAssign(nsIForwardIterator value) {
    inner = value;
  }

  /**
       * Retrieve (and |AddRef()|) the element this iterator currently points to.
       *
       * The result is undefined if this iterator currently points outside the
       * useful range of the underlying container or sequence.
       *
       * @result a new reference to the element this iterator currently points to (if any)
       */
  /* nsISupports getElement (); */
  nsISupportsD  GetElement(){
    nsISupports _retval;
    nsresult __result = inner.GetElement(&_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

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
  void PutElement(nsISupportsD anElementToPut){
    nsresult __result = inner.PutElement(anElementToPut ? cast(nsISupports)anElementToPut : null);
    CheckException(__result);
  }

  /**
       * Advance this iterator to the next position in the underlying container or sequence.
       */
  /* void stepForward (); */
  void StepForward(){
    nsresult __result = inner.StepForward();
    CheckException(__result);
  }

  /**
       * Test if |anotherIterator| points to the same position in the underlying container or sequence.
       *
       * The result is undefined if |anotherIterator| was not created by or for the same underlying container or sequence.
       *
       * @param anotherIterator another iterator to compare against, created by or for the same underlying container or sequence
       * @result true if |anotherIterator| points to the same position in the underlying container or sequence
       */
  /* boolean isEqualTo (in nsISupports anotherIterator); */
  PRBool IsEqualTo(nsISupportsD anotherIterator){
    PRBool _retval;
    nsresult __result = inner.IsEqualTo(anotherIterator ? cast(nsISupports)anotherIterator : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
       * Create a new iterator pointing to the same position in the underlying container or sequence to which this iterator currently points.
       * The returned iterator is suitable for use in a subsequent call to |isEqualTo()| against this iterator.
       *
       * @result a new iterator pointing at the same position in the same underlying container or sequence as this iterator
       */
  /* nsISupports clone (); */
  nsISupportsD  Clone(){
    nsISupports _retval;
    nsresult __result = inner.Clone(&_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

private:
  nsIForwardIterator inner;

}


/* starting wrapper class:    nsIBidirectionalIterator */
/**
   * ...
   */
class nsIBidirectionalIteratorD : public nsISupportsD {

  static const nsIID IID = NS_IBIDIRECTIONALITERATOR_IID;


  alias nsIBidirectionalIterator InnerType;

  this(nsIBidirectionalIterator intr){
    super(intr);
    this.inner = intr;
  }

  nsIBidirectionalIterator opCast() {
    return inner;
  }

  void opAssign(nsIBidirectionalIterator value) {
    inner = value;
  }

  /**
       * Retrieve (and |AddRef()|) the element this iterator currently points to.
       *
       * The result is undefined if this iterator currently points outside the
       * useful range of the underlying container or sequence.
       *
       * @result a new reference to the element this iterator currently points to (if any)
       */
  /* nsISupports getElement (); */
  nsISupportsD  GetElement(){
    nsISupports _retval;
    nsresult __result = inner.GetElement(&_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

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
  void PutElement(nsISupportsD anElementToPut){
    nsresult __result = inner.PutElement(anElementToPut ? cast(nsISupports)anElementToPut : null);
    CheckException(__result);
  }

  /**
       * Advance this iterator to the next position in the underlying container or sequence.
       */
  /* void stepForward (); */
  void StepForward(){
    nsresult __result = inner.StepForward();
    CheckException(__result);
  }

  /**
       * Move this iterator to the previous position in the underlying container or sequence.
       */
  /* void stepBackward (); */
  void StepBackward(){
    nsresult __result = inner.StepBackward();
    CheckException(__result);
  }

  /**
       * Test if |anotherIterator| points to the same position in the underlying container or sequence.
       *
       * The result is undefined if |anotherIterator| was not created by or for the same underlying container or sequence.
       *
       * @param anotherIterator another iterator to compare against, created by or for the same underlying container or sequence
       * @result true if |anotherIterator| points to the same position in the underlying container or sequence
       */
  /* boolean isEqualTo (in nsISupports anotherIterator); */
  PRBool IsEqualTo(nsISupportsD anotherIterator){
    PRBool _retval;
    nsresult __result = inner.IsEqualTo(anotherIterator ? cast(nsISupports)anotherIterator : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
       * Create a new iterator pointing to the same position in the underlying container or sequence to which this iterator currently points.
       * The returned iterator is suitable for use in a subsequent call to |isEqualTo()| against this iterator.
       *
       * @result a new iterator pointing at the same position in the same underlying container or sequence as this iterator
       */
  /* nsISupports clone (); */
  nsISupportsD  Clone(){
    nsISupports _retval;
    nsresult __result = inner.Clone(&_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

private:
  nsIBidirectionalIterator inner;

}


/* starting wrapper class:    nsIRandomAccessIterator */
/**
   * ...
   */
class nsIRandomAccessIteratorD : public nsISupportsD {

  static const nsIID IID = NS_IRANDOMACCESSITERATOR_IID;


  alias nsIRandomAccessIterator InnerType;

  this(nsIRandomAccessIterator intr){
    super(intr);
    this.inner = intr;
  }

  nsIRandomAccessIterator opCast() {
    return inner;
  }

  void opAssign(nsIRandomAccessIterator value) {
    inner = value;
  }

  /**
       * Retrieve (and |AddRef()|) the element this iterator currently points to.
       *
       * The result is undefined if this iterator currently points outside the
       * useful range of the underlying container or sequence.
       *
       * @result a new reference to the element this iterator currently points to (if any)
       */
  /* nsISupports getElement (); */
  nsISupportsD  GetElement(){
    nsISupports _retval;
    nsresult __result = inner.GetElement(&_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

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
  nsISupportsD  GetElementAt(PRInt32 anOffset){
    nsISupports _retval;
    nsresult __result = inner.GetElementAt(anOffset, &_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

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
  void PutElement(nsISupportsD anElementToPut){
    nsresult __result = inner.PutElement(anElementToPut ? cast(nsISupports)anElementToPut : null);
    CheckException(__result);
  }

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
  void PutElementAt(PRInt32 anOffset, nsISupportsD anElementToPut){
    nsresult __result = inner.PutElementAt(anOffset, anElementToPut ? cast(nsISupports)anElementToPut : null);
    CheckException(__result);
  }

  /**
       * Advance this iterator to the next position in the underlying container or sequence.
       */
  /* void stepForward (); */
  void StepForward(){
    nsresult __result = inner.StepForward();
    CheckException(__result);
  }

  /**
       * Move this iterator by |anOffset| positions in the underlying container or sequence.
       * |anOffset| may be negative.  |stepForwardBy(1)| is equivalent to |stepForward()|.
       * |stepForwardBy(0)| is a no-op.
       *
       * @param anOffset a |0|-based offset from the position to which this iterator currently points
       */
  /* void stepForwardBy (in PRInt32 anOffset); */
  void StepForwardBy(PRInt32 anOffset){
    nsresult __result = inner.StepForwardBy(anOffset);
    CheckException(__result);
  }

  /**
       * Move this iterator to the previous position in the underlying container or sequence.
       */
  /* void stepBackward (); */
  void StepBackward(){
    nsresult __result = inner.StepBackward();
    CheckException(__result);
  }

  /**
       * Move this iterator backwards by |anOffset| positions in the underlying container or sequence.
       * |anOffset| may be negative.  |stepBackwardBy(1)| is equivalent to |stepBackward()|.
       * |stepBackwardBy(n)| is equivalent to |stepForwardBy(-n)|.  |stepBackwardBy(0)| is a no-op.
       *
       * @param anOffset a |0|-based offset from the position to which this iterator currently points
       */
  /* void stepBackwardBy (in PRInt32 anOffset); */
  void StepBackwardBy(PRInt32 anOffset){
    nsresult __result = inner.StepBackwardBy(anOffset);
    CheckException(__result);
  }

  /**
       * Test if |anotherIterator| points to the same position in the underlying container or sequence.
       *
       * The result is undefined if |anotherIterator| was not created by or for the same underlying container or sequence.
       *
       * @param anotherIterator another iterator to compare against, created by or for the same underlying container or sequence
       * @result true if |anotherIterator| points to the same position in the underlying container or sequence
       */
  /* boolean isEqualTo (in nsISupports anotherIterator); */
  PRBool IsEqualTo(nsISupportsD anotherIterator){
    PRBool _retval;
    nsresult __result = inner.IsEqualTo(anotherIterator ? cast(nsISupports)anotherIterator : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
       * Create a new iterator pointing to the same position in the underlying container or sequence to which this iterator currently points.
       * The returned iterator is suitable for use in a subsequent call to |isEqualTo()| against this iterator.
       *
       * @result a new iterator pointing at the same position in the same underlying container or sequence as this iterator
       */
  /* nsISupports clone (); */
  nsISupportsD  Clone(){
    nsISupports _retval;
    nsresult __result = inner.Clone(&_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

private:
  nsIRandomAccessIterator inner;

}

