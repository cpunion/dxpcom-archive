/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLIFrameElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLIFrameElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLIFrameElement;


public import mozilla.dxpcom.nsIDOMHTMLIFrameElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLIFrameElement */
/**
 * The nsIDOMHTMLIFrameElement interface is the interface to a [X]HTML
 * iframe element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLIFrameElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLIFRAMEELEMENT_IID;


  alias nsIDOMHTMLIFrameElement InnerType;

  this(nsIDOMHTMLIFrameElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLIFrameElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLIFrameElement value) {
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

  /* attribute DOMString frameBorder; */
  wchar[] FrameBorder(){
    scope auto value = new AString();
    nsresult __result = inner.GetFrameBorder(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void FrameBorder(wchar[] aFrameBorder){
    scope auto value = new AString(aFrameBorder);
    nsresult __result = inner.SetFrameBorder(cast(nsAString*)value);
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

  /* attribute DOMString longDesc; */
  wchar[] LongDesc(){
    scope auto value = new AString();
    nsresult __result = inner.GetLongDesc(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void LongDesc(wchar[] aLongDesc){
    scope auto value = new AString(aLongDesc);
    nsresult __result = inner.SetLongDesc(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString marginHeight; */
  wchar[] MarginHeight(){
    scope auto value = new AString();
    nsresult __result = inner.GetMarginHeight(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void MarginHeight(wchar[] aMarginHeight){
    scope auto value = new AString(aMarginHeight);
    nsresult __result = inner.SetMarginHeight(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString marginWidth; */
  wchar[] MarginWidth(){
    scope auto value = new AString();
    nsresult __result = inner.GetMarginWidth(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void MarginWidth(wchar[] aMarginWidth){
    scope auto value = new AString(aMarginWidth);
    nsresult __result = inner.SetMarginWidth(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString name; */
  wchar[] Name(){
    scope auto value = new AString();
    nsresult __result = inner.GetName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Name(wchar[] aName){
    scope auto value = new AString(aName);
    nsresult __result = inner.SetName(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString scrolling; */
  wchar[] Scrolling(){
    scope auto value = new AString();
    nsresult __result = inner.GetScrolling(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Scrolling(wchar[] aScrolling){
    scope auto value = new AString(aScrolling);
    nsresult __result = inner.SetScrolling(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString src; */
  wchar[] Src(){
    scope auto value = new AString();
    nsresult __result = inner.GetSrc(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Src(wchar[] aSrc){
    scope auto value = new AString(aSrc);
    nsresult __result = inner.SetSrc(cast(nsAString*)value);
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

  /* readonly attribute nsIDOMDocument contentDocument; */
  nsIDOMDocumentD  ContentDocument(){
    nsIDOMDocument value;
    nsresult __result = inner.GetContentDocument(&value);
    CheckException(__result);
    return new nsIDOMDocumentD(value);
  }

private:
  nsIDOMHTMLIFrameElement inner;

}

