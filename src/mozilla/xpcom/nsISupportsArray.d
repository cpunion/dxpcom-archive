/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISupportsArray.idl
 */

module mozilla.xpcom.nsISupportsArray;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsICollection;

typedef PRBool function(nsISupports, void*) nsISupportsArrayEnumFunc;

/* starting interface:    nsISupportsArray */
const char[] NS_ISUPPORTSARRAY_IID_STR = "791eafa0-b9e6-11d1-8031-006008159b5a";

const nsIID NS_ISUPPORTSARRAY_IID= 
  {0x791eafa0, 0xb9e6, 0x11d1, 
    [ 0x80, 0x31, 0x00, 0x60, 0x08, 0x15, 0x9b, 0x5a ]};

extern(Windows)
interface nsISupportsArray : nsICollection {
  static const char[] IID_STR = NS_ISUPPORTSARRAY_IID_STR;
  static const nsIID IID = NS_ISUPPORTSARRAY_IID;

  /* [notxpcom] boolean Equals ([const] in nsISupportsArray other); */
  PRBool Equals(nsISupportsArray other);

  /* [notxpcom] nsISupports ElementAt (in unsigned long aIndex); */
  nsISupports  ElementAt(PRUint32 aIndex);

  /* [notxpcom] long IndexOf ([const] in nsISupports aPossibleElement); */
  PRInt32 IndexOf(nsISupports aPossibleElement);

  /* [notxpcom] long IndexOfStartingAt ([const] in nsISupports aPossibleElement, in unsigned long aStartIndex); */
  PRInt32 IndexOfStartingAt(nsISupports aPossibleElement, PRUint32 aStartIndex);

  /* [notxpcom] long LastIndexOf ([const] in nsISupports aPossibleElement); */
  PRInt32 LastIndexOf(nsISupports aPossibleElement);

  /* long GetIndexOf (in nsISupports aPossibleElement); */
  nsresult GetIndexOf(nsISupports aPossibleElement, PRInt32 *_retval);

  /* long GetIndexOfStartingAt (in nsISupports aPossibleElement, in unsigned long aStartIndex); */
  nsresult GetIndexOfStartingAt(nsISupports aPossibleElement, PRUint32 aStartIndex, PRInt32 *_retval);

  /* long GetLastIndexOf (in nsISupports aPossibleElement); */
  nsresult GetLastIndexOf(nsISupports aPossibleElement, PRInt32 *_retval);

  /* [notxpcom] boolean InsertElementAt (in nsISupports aElement, in unsigned long aIndex); */
  PRBool InsertElementAt(nsISupports aElement, PRUint32 aIndex);

  /* [notxpcom] boolean ReplaceElementAt (in nsISupports aElement, in unsigned long aIndex); */
  PRBool ReplaceElementAt(nsISupports aElement, PRUint32 aIndex);

  /* [notxpcom] boolean RemoveElementAt (in unsigned long aIndex); */
  PRBool RemoveElementAt(PRUint32 aIndex);

  /* [notxpcom] boolean RemoveLastElement ([const] in nsISupports aElement); */
  PRBool RemoveLastElement(nsISupports aElement);

  /* void DeleteLastElement (in nsISupports aElement); */
  nsresult DeleteLastElement(nsISupports aElement);

  /* void DeleteElementAt (in unsigned long aIndex); */
  nsresult DeleteElementAt(PRUint32 aIndex);

  /* [notxpcom] boolean AppendElements (in nsISupportsArray aElements); */
  PRBool AppendElements(nsISupportsArray aElements);

  /* void Compact (); */
  nsresult Compact();

  /* [noscript, notxpcom] boolean EnumerateForwards (in nsISupportsArrayEnumFunc aFunc, in voidPtr aData); */
  PRBool EnumerateForwards(nsISupportsArrayEnumFunc aFunc, void * aData);

  /* [noscript, notxpcom] boolean EnumerateBackwards (in nsISupportsArrayEnumFunc aFunc, in voidPtr aData); */
  PRBool EnumerateBackwards(nsISupportsArrayEnumFunc aFunc, void * aData);

  /* nsISupportsArray clone (); */
  nsresult Clone(nsISupportsArray *_retval);

  /* [notxpcom] boolean MoveElement (in long aFrom, in long aTo); */
  PRBool MoveElement(PRInt32 aFrom, PRInt32 aTo);

  /* [notxpcom] boolean InsertElementsAt (in nsISupportsArray aOther, in unsigned long aIndex); */
  PRBool InsertElementsAt(nsISupportsArray aOther, PRUint32 aIndex);

  /* [notxpcom] boolean RemoveElementsAt (in unsigned long aIndex, in unsigned long aCount); */
  PRBool RemoveElementsAt(PRUint32 aIndex, PRUint32 aCount);

  /* [notxpcom] boolean SizeTo (in long aSize); */
  PRBool SizeTo(PRInt32 aSize);

}

