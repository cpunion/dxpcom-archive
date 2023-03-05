/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLBaseElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLBaseElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLBaseElement;


public import mozilla.dxpcom.nsIDOMHTMLBaseElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLBaseElement */
/**
 * The nsIDOMHTMLBaseElement interface is the interface to a [X]HTML
 * base element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLBaseElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLBASEELEMENT_IID;


  alias nsIDOMHTMLBaseElement InnerType;

  this(nsIDOMHTMLBaseElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLBaseElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLBaseElement value) {
    inner = value;
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
  nsIDOMHTMLBaseElement inner;

}

