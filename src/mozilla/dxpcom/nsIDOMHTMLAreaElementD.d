/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLAreaElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLAreaElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLAreaElement;


public import mozilla.dxpcom.nsIDOMHTMLAreaElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLAreaElement */
/**
 * The nsIDOMHTMLAreaElement interface is the interface to a [X]HTML
 * area element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLAreaElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLAREAELEMENT_IID;


  alias nsIDOMHTMLAreaElement InnerType;

  this(nsIDOMHTMLAreaElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLAreaElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLAreaElement value) {
    inner = value;
  }

  /* attribute DOMString accessKey; */
  wchar[] AccessKey(){
    scope auto value = new AString();
    nsresult __result = inner.GetAccessKey(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void AccessKey(wchar[] aAccessKey){
    scope auto value = new AString(aAccessKey);
    nsresult __result = inner.SetAccessKey(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString alt; */
  wchar[] Alt(){
    scope auto value = new AString();
    nsresult __result = inner.GetAlt(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Alt(wchar[] aAlt){
    scope auto value = new AString(aAlt);
    nsresult __result = inner.SetAlt(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString coords; */
  wchar[] Coords(){
    scope auto value = new AString();
    nsresult __result = inner.GetCoords(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Coords(wchar[] aCoords){
    scope auto value = new AString(aCoords);
    nsresult __result = inner.SetCoords(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString href; */
  wchar[] Href(){
    scope auto value = new AString();
    nsresult __result = inner.GetHref(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Href(wchar[] aHref){
    scope auto value = new AString(aHref);
    nsresult __result = inner.SetHref(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute boolean noHref; */
  PRBool NoHref(){
    PRBool value;
    nsresult __result = inner.GetNoHref(&value);
    CheckException(__result);
    return value;
  }
  void NoHref(PRBool aNoHref){
    nsresult __result = inner.SetNoHref(aNoHref);
    CheckException(__result);
  }

  /* attribute DOMString shape; */
  wchar[] Shape(){
    scope auto value = new AString();
    nsresult __result = inner.GetShape(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Shape(wchar[] aShape){
    scope auto value = new AString(aShape);
    nsresult __result = inner.SetShape(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute long tabIndex; */
  PRInt32 TabIndex(){
    PRInt32 value;
    nsresult __result = inner.GetTabIndex(&value);
    CheckException(__result);
    return value;
  }
  void TabIndex(PRInt32 aTabIndex){
    nsresult __result = inner.SetTabIndex(aTabIndex);
    CheckException(__result);
  }

  /* attribute DOMString target; */
  wchar[] Target(){
    scope auto value = new AString();
    nsresult __result = inner.GetTarget(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Target(wchar[] aTarget){
    scope auto value = new AString(aTarget);
    nsresult __result = inner.SetTarget(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIDOMHTMLAreaElement inner;

}

