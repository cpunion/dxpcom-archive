/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLFrameElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLFrameElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLFrameElement;


public import mozilla.dxpcom.nsIDOMHTMLFrameElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLFrameElement */
/**
 * The nsIDOMHTMLFrameElement interface is the interface to a [X]HTML
 * frame element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLFrameElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLFRAMEELEMENT_IID;


  alias nsIDOMHTMLFrameElement InnerType;

  this(nsIDOMHTMLFrameElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLFrameElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLFrameElement value) {
    inner = value;
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

  /* attribute boolean noResize; */
  PRBool NoResize(){
    PRBool value;
    nsresult __result = inner.GetNoResize(&value);
    CheckException(__result);
    return value;
  }
  void NoResize(PRBool aNoResize){
    nsresult __result = inner.SetNoResize(aNoResize);
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

  /* readonly attribute nsIDOMDocument contentDocument; */
  nsIDOMDocumentD  ContentDocument(){
    nsIDOMDocument value;
    nsresult __result = inner.GetContentDocument(&value);
    CheckException(__result);
    return new nsIDOMDocumentD(value);
  }

private:
  nsIDOMHTMLFrameElement inner;

}

