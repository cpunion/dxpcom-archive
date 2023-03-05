/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIListBoxObject.idl
 */

module mozilla.dxpcom.nsIListBoxObjectD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIListBoxObject;


public import mozilla.dxpcom.nsIListBoxObjectD;

public import mozilla.xpcom.nsIBoxObject;
public import mozilla.dxpcom.nsIBoxObjectD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;


/* starting wrapper class:    nsIListBoxObject */
class nsIListBoxObjectD : public nsISupportsD {

  static const nsIID IID = NS_ILISTBOXOBJECT_IID;


  alias nsIListBoxObject InnerType;

  this(nsIListBoxObject intr){
    super(intr);
    this.inner = intr;
  }

  nsIListBoxObject opCast() {
    return inner;
  }

  void opAssign(nsIListBoxObject value) {
    inner = value;
  }

  /* readonly attribute nsIListBoxObject listboxBody; */
  nsIListBoxObjectD  ListboxBody(){
    nsIListBoxObject value;
    nsresult __result = inner.GetListboxBody(&value);
    CheckException(__result);
    return new nsIListBoxObjectD(value);
  }

  /* long getRowCount (); */
  PRInt32 GetRowCount(){
    PRInt32 _retval;
    nsresult __result = inner.GetRowCount(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* long getNumberOfVisibleRows (); */
  PRInt32 GetNumberOfVisibleRows(){
    PRInt32 _retval;
    nsresult __result = inner.GetNumberOfVisibleRows(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* long getIndexOfFirstVisibleRow (); */
  PRInt32 GetIndexOfFirstVisibleRow(){
    PRInt32 _retval;
    nsresult __result = inner.GetIndexOfFirstVisibleRow(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void ensureIndexIsVisible (in long rowIndex); */
  void EnsureIndexIsVisible(PRInt32 rowIndex){
    nsresult __result = inner.EnsureIndexIsVisible(rowIndex);
    CheckException(__result);
  }

  /* void scrollToIndex (in long rowIndex); */
  void ScrollToIndex(PRInt32 rowIndex){
    nsresult __result = inner.ScrollToIndex(rowIndex);
    CheckException(__result);
  }

  /* void scrollByLines (in long numLines); */
  void ScrollByLines(PRInt32 numLines){
    nsresult __result = inner.ScrollByLines(numLines);
    CheckException(__result);
  }

  /* nsIDOMElement getItemAtIndex (in long index); */
  nsIDOMElementD  GetItemAtIndex(PRInt32 index){
    nsIDOMElement _retval;
    nsresult __result = inner.GetItemAtIndex(index, &_retval);
    CheckException(__result);
    return new nsIDOMElementD(_retval);
  }

  /* long getIndexOfItem (in nsIDOMElement item); */
  PRInt32 GetIndexOfItem(nsIDOMElementD item){
    PRInt32 _retval;
    nsresult __result = inner.GetIndexOfItem(item ? cast(nsIDOMElement)item : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIListBoxObject inner;

}

