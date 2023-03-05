/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLTableRowElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLTableRowElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLTableRowElement;


public import mozilla.dxpcom.nsIDOMHTMLTableRowElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLTableRowElement */
/**
 * The nsIDOMHTMLTableRowElement interface is the interface to a
 * [X]HTML tr element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLTableRowElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLTABLEROWELEMENT_IID;


  alias nsIDOMHTMLTableRowElement InnerType;

  this(nsIDOMHTMLTableRowElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLTableRowElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLTableRowElement value) {
    inner = value;
  }

  /* readonly attribute long rowIndex; */
  PRInt32 RowIndex(){
    PRInt32 value;
    nsresult __result = inner.GetRowIndex(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long sectionRowIndex; */
  PRInt32 SectionRowIndex(){
    PRInt32 value;
    nsresult __result = inner.GetSectionRowIndex(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsIDOMHTMLCollection cells; */
  nsIDOMHTMLCollectionD  Cells(){
    nsIDOMHTMLCollection value;
    nsresult __result = inner.GetCells(&value);
    CheckException(__result);
    return new nsIDOMHTMLCollectionD(value);
  }

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

  /* attribute DOMString bgColor; */
  wchar[] BgColor(){
    scope auto value = new AString();
    nsresult __result = inner.GetBgColor(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void BgColor(wchar[] aBgColor){
    scope auto value = new AString(aBgColor);
    nsresult __result = inner.SetBgColor(cast(nsAString*)value);
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

  /* nsIDOMHTMLElement insertCell (in long index)  raises (DOMException); */
  nsIDOMHTMLElementD  InsertCell(PRInt32 index){
    nsIDOMHTMLElement _retval;
    nsresult __result = inner.InsertCell(index, &_retval);
    CheckException(__result);
    return new nsIDOMHTMLElementD(_retval);
  }

  /* void deleteCell (in long index)  raises (DOMException); */
  void DeleteCell(PRInt32 index){
    nsresult __result = inner.DeleteCell(index);
    CheckException(__result);
  }

private:
  nsIDOMHTMLTableRowElement inner;

}

