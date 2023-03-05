/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLLegendElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLLegendElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLLegendElement;


public import mozilla.dxpcom.nsIDOMHTMLLegendElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLLegendElement */
/**
 * The nsIDOMHTMLLegendElement interface is the interface to a [X]HTML
 * legend element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLLegendElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLLEGENDELEMENT_IID;


  alias nsIDOMHTMLLegendElement InnerType;

  this(nsIDOMHTMLLegendElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLLegendElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLLegendElement value) {
    inner = value;
  }

  /* readonly attribute nsIDOMHTMLFormElement form; */
  nsIDOMHTMLFormElementD  Form(){
    nsIDOMHTMLFormElement value;
    nsresult __result = inner.GetForm(&value);
    CheckException(__result);
    return new nsIDOMHTMLFormElementD(value);
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

private:
  nsIDOMHTMLLegendElement inner;

}

