/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLTableElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLTableElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLTableElement;


public import mozilla.dxpcom.nsIDOMHTMLTableElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLTableElement */
/**
 * The nsIDOMHTMLTableElement interface is the interface to a [X]HTML
 * table element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLTableElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLTABLEELEMENT_IID;


  alias nsIDOMHTMLTableElement InnerType;

  this(nsIDOMHTMLTableElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLTableElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLTableElement value) {
    inner = value;
  }

  /* attribute nsIDOMHTMLTableCaptionElement caption; */
  nsIDOMHTMLTableCaptionElementD  Caption(){
    nsIDOMHTMLTableCaptionElement value;
    nsresult __result = inner.GetCaption(&value);
    CheckException(__result);
    return new nsIDOMHTMLTableCaptionElementD(value);
  }
  void Caption(nsIDOMHTMLTableCaptionElementD  aCaption){
    nsIDOMHTMLTableCaptionElement value;
    nsresult __result = inner.SetCaption(value);
    CheckException(__result);
  }

  /* attribute nsIDOMHTMLTableSectionElement tHead; */
  nsIDOMHTMLTableSectionElementD  THead(){
    nsIDOMHTMLTableSectionElement value;
    nsresult __result = inner.GetTHead(&value);
    CheckException(__result);
    return new nsIDOMHTMLTableSectionElementD(value);
  }
  void THead(nsIDOMHTMLTableSectionElementD  aTHead){
    nsIDOMHTMLTableSectionElement value;
    nsresult __result = inner.SetTHead(value);
    CheckException(__result);
  }

  /* attribute nsIDOMHTMLTableSectionElement tFoot; */
  nsIDOMHTMLTableSectionElementD  TFoot(){
    nsIDOMHTMLTableSectionElement value;
    nsresult __result = inner.GetTFoot(&value);
    CheckException(__result);
    return new nsIDOMHTMLTableSectionElementD(value);
  }
  void TFoot(nsIDOMHTMLTableSectionElementD  aTFoot){
    nsIDOMHTMLTableSectionElement value;
    nsresult __result = inner.SetTFoot(value);
    CheckException(__result);
  }

  /* readonly attribute nsIDOMHTMLCollection rows; */
  nsIDOMHTMLCollectionD  Rows(){
    nsIDOMHTMLCollection value;
    nsresult __result = inner.GetRows(&value);
    CheckException(__result);
    return new nsIDOMHTMLCollectionD(value);
  }

  /* readonly attribute nsIDOMHTMLCollection tBodies; */
  nsIDOMHTMLCollectionD  TBodies(){
    nsIDOMHTMLCollection value;
    nsresult __result = inner.GetTBodies(&value);
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

  /* attribute DOMString border; */
  wchar[] Border(){
    scope auto value = new AString();
    nsresult __result = inner.GetBorder(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Border(wchar[] aBorder){
    scope auto value = new AString(aBorder);
    nsresult __result = inner.SetBorder(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString cellPadding; */
  wchar[] CellPadding(){
    scope auto value = new AString();
    nsresult __result = inner.GetCellPadding(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void CellPadding(wchar[] aCellPadding){
    scope auto value = new AString(aCellPadding);
    nsresult __result = inner.SetCellPadding(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString cellSpacing; */
  wchar[] CellSpacing(){
    scope auto value = new AString();
    nsresult __result = inner.GetCellSpacing(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void CellSpacing(wchar[] aCellSpacing){
    scope auto value = new AString(aCellSpacing);
    nsresult __result = inner.SetCellSpacing(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString frame; */
  wchar[] Frame(){
    scope auto value = new AString();
    nsresult __result = inner.GetFrame(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Frame(wchar[] aFrame){
    scope auto value = new AString(aFrame);
    nsresult __result = inner.SetFrame(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString rules; */
  wchar[] Rules(){
    scope auto value = new AString();
    nsresult __result = inner.GetRules(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Rules(wchar[] aRules){
    scope auto value = new AString(aRules);
    nsresult __result = inner.SetRules(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString summary; */
  wchar[] Summary(){
    scope auto value = new AString();
    nsresult __result = inner.GetSummary(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Summary(wchar[] aSummary){
    scope auto value = new AString(aSummary);
    nsresult __result = inner.SetSummary(cast(nsAString*)value);
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

  /* nsIDOMHTMLElement createTHead (); */
  nsIDOMHTMLElementD  CreateTHead(){
    nsIDOMHTMLElement _retval;
    nsresult __result = inner.CreateTHead(&_retval);
    CheckException(__result);
    return new nsIDOMHTMLElementD(_retval);
  }

  /* void deleteTHead (); */
  void DeleteTHead(){
    nsresult __result = inner.DeleteTHead();
    CheckException(__result);
  }

  /* nsIDOMHTMLElement createTFoot (); */
  nsIDOMHTMLElementD  CreateTFoot(){
    nsIDOMHTMLElement _retval;
    nsresult __result = inner.CreateTFoot(&_retval);
    CheckException(__result);
    return new nsIDOMHTMLElementD(_retval);
  }

  /* void deleteTFoot (); */
  void DeleteTFoot(){
    nsresult __result = inner.DeleteTFoot();
    CheckException(__result);
  }

  /* nsIDOMHTMLElement createCaption (); */
  nsIDOMHTMLElementD  CreateCaption(){
    nsIDOMHTMLElement _retval;
    nsresult __result = inner.CreateCaption(&_retval);
    CheckException(__result);
    return new nsIDOMHTMLElementD(_retval);
  }

  /* void deleteCaption (); */
  void DeleteCaption(){
    nsresult __result = inner.DeleteCaption();
    CheckException(__result);
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
  nsIDOMHTMLTableElement inner;

}

