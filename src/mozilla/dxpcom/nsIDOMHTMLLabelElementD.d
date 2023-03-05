/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLLabelElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLLabelElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLLabelElement;


public import mozilla.dxpcom.nsIDOMHTMLLabelElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLLabelElement */
/**
 * The nsIDOMHTMLLabelElement interface is the interface to a [X]HTML
 * label element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLLabelElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLLABELELEMENT_IID;


  alias nsIDOMHTMLLabelElement InnerType;

  this(nsIDOMHTMLLabelElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLLabelElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLLabelElement value) {
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

  /* attribute DOMString htmlFor; */
  wchar[] HtmlFor(){
    scope auto value = new AString();
    nsresult __result = inner.GetHtmlFor(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void HtmlFor(wchar[] aHtmlFor){
    scope auto value = new AString(aHtmlFor);
    nsresult __result = inner.SetHtmlFor(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIDOMHTMLLabelElement inner;

}

