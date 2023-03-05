/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISupportsArray.idl
 */

module mozilla.dxpcom.nsISupportsArrayD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISupportsArray;


public import mozilla.dxpcom.nsISupportsArrayD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsICollection;
public import mozilla.dxpcom.nsICollectionD;


/* starting wrapper class:    nsISupportsArray */
class nsISupportsArrayD : public nsICollectionD {

  static const nsIID IID = NS_ISUPPORTSARRAY_IID;


  alias nsISupportsArray InnerType;

  this(nsISupportsArray intr){
    super(intr);
    this.inner = intr;
  }

  nsISupportsArray opCast() {
    return inner;
  }

  void opAssign(nsISupportsArray value) {
    inner = value;
  }

  /* [notxpcom] boolean Equals ([const] in nsISupportsArray other); */
  PRBool Equals(nsISupportsArrayD other){
    PRBool _retval;
    _retval = inner.Equals(other ? cast(nsISupportsArray)other : null);

    return _retval;
  }

  /* [notxpcom] nsISupports ElementAt (in unsigned long aIndex); */
  nsISupportsD  ElementAt(PRUint32 aIndex){
    nsISupportsD  _retval;
    _retval = inner.ElementAt(aIndex);

    return _retval;
  }

  /* [notxpcom] long IndexOf ([const] in nsISupports aPossibleElement); */
  PRInt32 IndexOf(nsISupportsD aPossibleElement){
    PRInt32 _retval;
    _retval = inner.IndexOf(aPossibleElement ? cast(nsISupports)aPossibleElement : null);

    return _retval;
  }

  /* [notxpcom] long IndexOfStartingAt ([const] in nsISupports aPossibleElement, in unsigned long aStartIndex); */
  PRInt32 IndexOfStartingAt(nsISupportsD aPossibleElement, PRUint32 aStartIndex){
    PRInt32 _retval;
    _retval = inner.IndexOfStartingAt(aPossibleElement ? cast(nsISupports)aPossibleElement : null, aStartIndex);

    return _retval;
  }

  /* [notxpcom] long LastIndexOf ([const] in nsISupports aPossibleElement); */
  PRInt32 LastIndexOf(nsISupportsD aPossibleElement){
    PRInt32 _retval;
    _retval = inner.LastIndexOf(aPossibleElement ? cast(nsISupports)aPossibleElement : null);

    return _retval;
  }

  /* long GetIndexOf (in nsISupports aPossibleElement); */
  PRInt32 GetIndexOf(nsISupportsD aPossibleElement){
    PRInt32 _retval;
    nsresult __result = inner.GetIndexOf(aPossibleElement ? cast(nsISupports)aPossibleElement : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* long GetIndexOfStartingAt (in nsISupports aPossibleElement, in unsigned long aStartIndex); */
  PRInt32 GetIndexOfStartingAt(nsISupportsD aPossibleElement, PRUint32 aStartIndex){
    PRInt32 _retval;
    nsresult __result = inner.GetIndexOfStartingAt(aPossibleElement ? cast(nsISupports)aPossibleElement : null, aStartIndex, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* long GetLastIndexOf (in nsISupports aPossibleElement); */
  PRInt32 GetLastIndexOf(nsISupportsD aPossibleElement){
    PRInt32 _retval;
    nsresult __result = inner.GetLastIndexOf(aPossibleElement ? cast(nsISupports)aPossibleElement : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* [notxpcom] boolean InsertElementAt (in nsISupports aElement, in unsigned long aIndex); */
  PRBool InsertElementAt(nsISupportsD aElement, PRUint32 aIndex){
    PRBool _retval;
    _retval = inner.InsertElementAt(aElement ? cast(nsISupports)aElement : null, aIndex);

    return _retval;
  }

  /* [notxpcom] boolean ReplaceElementAt (in nsISupports aElement, in unsigned long aIndex); */
  PRBool ReplaceElementAt(nsISupportsD aElement, PRUint32 aIndex){
    PRBool _retval;
    _retval = inner.ReplaceElementAt(aElement ? cast(nsISupports)aElement : null, aIndex);

    return _retval;
  }

  /* [notxpcom] boolean RemoveElementAt (in unsigned long aIndex); */
  PRBool RemoveElementAt(PRUint32 aIndex){
    PRBool _retval;
    _retval = inner.RemoveElementAt(aIndex);

    return _retval;
  }

  /* [notxpcom] boolean RemoveLastElement ([const] in nsISupports aElement); */
  PRBool RemoveLastElement(nsISupportsD aElement){
    PRBool _retval;
    _retval = inner.RemoveLastElement(aElement ? cast(nsISupports)aElement : null);

    return _retval;
  }

  /* void DeleteLastElement (in nsISupports aElement); */
  void DeleteLastElement(nsISupportsD aElement){
    nsresult __result = inner.DeleteLastElement(aElement ? cast(nsISupports)aElement : null);
    CheckException(__result);
  }

  /* void DeleteElementAt (in unsigned long aIndex); */
  void DeleteElementAt(PRUint32 aIndex){
    nsresult __result = inner.DeleteElementAt(aIndex);
    CheckException(__result);
  }

  /* [notxpcom] boolean AppendElements (in nsISupportsArray aElements); */
  PRBool AppendElements(nsISupportsArrayD aElements){
    PRBool _retval;
    _retval = inner.AppendElements(aElements ? cast(nsISupportsArray)aElements : null);

    return _retval;
  }

  /* void Compact (); */
  void Compact(){
    nsresult __result = inner.Compact();
    CheckException(__result);
  }

  /* [noscript, notxpcom] boolean EnumerateForwards (in nsISupportsArrayEnumFunc aFunc, in voidPtr aData); */
  PRBool EnumerateForwards(nsISupportsArrayEnumFunc aFunc, void * aData){
    PRBool _retval;
    _retval = inner.EnumerateForwards(aFunc, aData);

    return _retval;
  }

  /* [noscript, notxpcom] boolean EnumerateBackwards (in nsISupportsArrayEnumFunc aFunc, in voidPtr aData); */
  PRBool EnumerateBackwards(nsISupportsArrayEnumFunc aFunc, void * aData){
    PRBool _retval;
    _retval = inner.EnumerateBackwards(aFunc, aData);

    return _retval;
  }

  /* nsISupportsArray clone (); */
  nsISupportsArrayD  Clone(){
    nsISupportsArray _retval;
    nsresult __result = inner.Clone(&_retval);
    CheckException(__result);
    return new nsISupportsArrayD(_retval);
  }

  /* [notxpcom] boolean MoveElement (in long aFrom, in long aTo); */
  PRBool MoveElement(PRInt32 aFrom, PRInt32 aTo){
    PRBool _retval;
    _retval = inner.MoveElement(aFrom, aTo);

    return _retval;
  }

  /* [notxpcom] boolean InsertElementsAt (in nsISupportsArray aOther, in unsigned long aIndex); */
  PRBool InsertElementsAt(nsISupportsArrayD aOther, PRUint32 aIndex){
    PRBool _retval;
    _retval = inner.InsertElementsAt(aOther ? cast(nsISupportsArray)aOther : null, aIndex);

    return _retval;
  }

  /* [notxpcom] boolean RemoveElementsAt (in unsigned long aIndex, in unsigned long aCount); */
  PRBool RemoveElementsAt(PRUint32 aIndex, PRUint32 aCount){
    PRBool _retval;
    _retval = inner.RemoveElementsAt(aIndex, aCount);

    return _retval;
  }

  /* [notxpcom] boolean SizeTo (in long aSize); */
  PRBool SizeTo(PRInt32 aSize){
    PRBool _retval;
    _retval = inner.SizeTo(aSize);

    return _retval;
  }

private:
  nsISupportsArray inner;

}

