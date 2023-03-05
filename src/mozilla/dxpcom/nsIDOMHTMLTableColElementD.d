/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLTableColElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLTableColElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLTableColElement;


public import mozilla.dxpcom.nsIDOMHTMLTableColElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLTableColElement */
/**
 * The nsIDOMHTMLTableColElement interface is the interface to a
 * [X]HTML col element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLTableColElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLTABLECOLELEMENT_IID;


  alias nsIDOMHTMLTableColElement InnerType;

  this(nsIDOMHTMLTableColElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLTableColElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLTableColElement value) {
    inner = value;
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

  /* attribute long span; */
  PRInt32 Span(){
    PRInt32 value;
    nsresult __result = inner.GetSpan(&value);
    CheckException(__result);
    return value;
  }
  void Span(PRInt32 aSpan){
    nsresult __result = inner.SetSpan(aSpan);
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
  nsIDOMHTMLTableColElement inner;

}

