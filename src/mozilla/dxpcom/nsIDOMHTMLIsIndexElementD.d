/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLIsIndexElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLIsIndexElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLIsIndexElement;


public import mozilla.dxpcom.nsIDOMHTMLIsIndexElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLIsIndexElement */
/**
 * The nsIDOMHTMLIsIndexElement interface is the interface to a
 * [X]HTML isindex element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLIsIndexElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLISINDEXELEMENT_IID;


  alias nsIDOMHTMLIsIndexElement InnerType;

  this(nsIDOMHTMLIsIndexElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLIsIndexElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLIsIndexElement value) {
    inner = value;
  }

  /* readonly attribute nsIDOMHTMLFormElement form; */
  nsIDOMHTMLFormElementD  Form(){
    nsIDOMHTMLFormElement value;
    nsresult __result = inner.GetForm(&value);
    CheckException(__result);
    return new nsIDOMHTMLFormElementD(value);
  }

  /* attribute DOMString prompt; */
  wchar[] Prompt(){
    scope auto value = new AString();
    nsresult __result = inner.GetPrompt(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Prompt(wchar[] aPrompt){
    scope auto value = new AString(aPrompt);
    nsresult __result = inner.SetPrompt(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIDOMHTMLIsIndexElement inner;

}

