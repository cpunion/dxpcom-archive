/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLHeadElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLHeadElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLHeadElement;


public import mozilla.dxpcom.nsIDOMHTMLHeadElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLHeadElement */
/**
 * The nsIDOMHTMLHeadElement interface is the interface to a [X]HTML
 * head element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLHeadElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLHEADELEMENT_IID;


  alias nsIDOMHTMLHeadElement InnerType;

  this(nsIDOMHTMLHeadElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLHeadElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLHeadElement value) {
    inner = value;
  }

  /* attribute DOMString profile; */
  wchar[] Profile(){
    scope auto value = new AString();
    nsresult __result = inner.GetProfile(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Profile(wchar[] aProfile){
    scope auto value = new AString(aProfile);
    nsresult __result = inner.SetProfile(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIDOMHTMLHeadElement inner;

}

