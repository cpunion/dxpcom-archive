/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLTableSectionElem.idl
 */

module mozilla.dxpcom.nsIDOMHTMLTableSectionElemD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLTableSectionElem;


public import mozilla.dxpcom.nsIDOMHTMLTableSectionElemD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLTableSectionElement */
class nsIDOMHTMLTableSectionElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLTABLESECTIONELEMENT_IID;


  alias nsIDOMHTMLTableSectionElement InnerType;

  this(nsIDOMHTMLTableSectionElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLTableSectionElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLTableSectionElement value) {
    inner = value;
  }

  /**
 * The nsIDOMHTMLTableSectionElement interface is the interface to a
 * [X]HTML thead, tbody, and tfoot element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
  /* attribute DOMString align; */
  wchar[] Align(){
    scope auto value = new AString();
    nsresult __result = inner.GetAlign(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Align(wchar[] aAlign){
    scope auto value = new AString(aAlign);
    nsresult __result = inner.SetAlign(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString ch; */
  wchar[] Ch(){
    scope auto value = new AString();
    nsresult __result = inner.GetCh(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Ch(wchar[] aCh){
    scope auto value = new AString(aCh);
    nsresult __result = inner.SetCh(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString chOff; */
  wchar[] ChOff(){
    scope auto value = new AString();
    nsresult __result = inner.GetChOff(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void ChOff(wchar[] aChOff){
    scope auto value = new AString(aChOff);
    nsresult __result = inner.SetChOff(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString vAlign; */
  wchar[] VAlign(){
    scope auto value = new AString();
    nsresult __result = inner.GetVAlign(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void VAlign(wchar[] aVAlign){
    scope auto value = new AString(aVAlign);
    nsresult __result = inner.SetVAlign(cast(nsAString*)value);
    CheckException(__result);
  }

  /* readonly attribute nsIDOMHTMLCollection rows; */
  nsIDOMHTMLCollectionD  Rows(){
    nsIDOMHTMLCollection value;
    nsresult __result = inner.GetRows(&value);
    CheckException(__result);
    return new nsIDOMHTMLCollectionD(value);
  }

  /* nsIDOMHTMLElement insertRow (in long index)  raises (DOMException); */
  nsIDOMHTMLElementD  InsertRow(PRInt32 index){
    nsIDOMHTMLElement _retval;
    nsresult __result = inner.InsertRow(index, &_retval);
    CheckException(__result);
    return new nsIDOMHTMLElementD(_retval);
  }

  /* void deleteRow (in long index)  raises (DOMException); */
  void DeleteRow(PRInt32 index){
    nsresult __result = inner.DeleteRow(index);
    CheckException(__result);
  }

private:
  nsIDOMHTMLTableSectionElement inner;

}

