/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLTableCellElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLTableCellElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLTableCellElement;


public import mozilla.dxpcom.nsIDOMHTMLTableCellElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLTableCellElement */
/**
 * The nsIDOMHTMLTableCellElement interface is the interface to a
 * [X]HTML td element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLTableCellElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLTABLECELLELEMENT_IID;


  alias nsIDOMHTMLTableCellElement InnerType;

  this(nsIDOMHTMLTableCellElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLTableCellElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLTableCellElement value) {
    inner = value;
  }

  /* readonly attribute long cellIndex; */
  PRInt32 CellIndex(){
    PRInt32 value;
    nsresult __result = inner.GetCellIndex(&value);
    CheckException(__result);
    return value;
  }

  /* attribute DOMString abbr; */
  wchar[] Abbr(){
    scope auto value = new AString();
    nsresult __result = inner.GetAbbr(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Abbr(wchar[] aAbbr){
    scope auto value = new AString(aAbbr);
    nsresult __result = inner.SetAbbr(cast(nsAString*)value);
    CheckException(__result);
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

  /* attribute DOMString axis; */
  wchar[] Axis(){
    scope auto value = new AString();
    nsresult __result = inner.GetAxis(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Axis(wchar[] aAxis){
    scope auto value = new AString(aAxis);
    nsresult __result = inner.SetAxis(cast(nsAString*)value);
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

  /* attribute long colSpan; */
  PRInt32 ColSpan(){
    PRInt32 value;
    nsresult __result = inner.GetColSpan(&value);
    CheckException(__result);
    return value;
  }
  void ColSpan(PRInt32 aColSpan){
    nsresult __result = inner.SetColSpan(aColSpan);
    CheckException(__result);
  }

  /* attribute DOMString headers; */
  wchar[] Headers(){
    scope auto value = new AString();
    nsresult __result = inner.GetHeaders(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Headers(wchar[] aHeaders){
    scope auto value = new AString(aHeaders);
    nsresult __result = inner.SetHeaders(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString height; */
  wchar[] Height(){
    scope auto value = new AString();
    nsresult __result = inner.GetHeight(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Height(wchar[] aHeight){
    scope auto value = new AString(aHeight);
    nsresult __result = inner.SetHeight(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute boolean noWrap; */
  PRBool NoWrap(){
    PRBool value;
    nsresult __result = inner.GetNoWrap(&value);
    CheckException(__result);
    return value;
  }
  void NoWrap(PRBool aNoWrap){
    nsresult __result = inner.SetNoWrap(aNoWrap);
    CheckException(__result);
  }

  /* attribute long rowSpan; */
  PRInt32 RowSpan(){
    PRInt32 value;
    nsresult __result = inner.GetRowSpan(&value);
    CheckException(__result);
    return value;
  }
  void RowSpan(PRInt32 aRowSpan){
    nsresult __result = inner.SetRowSpan(aRowSpan);
    CheckException(__result);
  }

  /* attribute DOMString scope; */
  wchar[] Scope(){
    scope auto value = new AString();
    nsresult __result = inner.GetScope(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Scope(wchar[] aScope){
    scope auto value = new AString(aScope);
    nsresult __result = inner.SetScope(cast(nsAString*)value);
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

  /* attribute DOMString width; */
  wchar[] Width(){
    scope auto value = new AString();
    nsresult __result = inner.GetWidth(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Width(wchar[] aWidth){
    scope auto value = new AString(aWidth);
    nsresult __result = inner.SetWidth(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIDOMHTMLTableCellElement inner;

}

