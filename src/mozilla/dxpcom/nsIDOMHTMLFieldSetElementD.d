/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLFieldSetElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLFieldSetElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLFieldSetElement;


public import mozilla.dxpcom.nsIDOMHTMLFieldSetElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLFieldSetElement */
/**
 * The nsIDOMHTMLFieldSetElement interface is the interface to a
 * [X]HTML fieldset element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLFieldSetElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLFIELDSETELEMENT_IID;


  alias nsIDOMHTMLFieldSetElement InnerType;

  this(nsIDOMHTMLFieldSetElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLFieldSetElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLFieldSetElement value) {
    inner = value;
  }

  /* readonly attribute nsIDOMHTMLFormElement form; */
  nsIDOMHTMLFormElementD  Form(){
    nsIDOMHTMLFormElement value;
    nsresult __result = inner.GetForm(&value);
    CheckException(__result);
    return new nsIDOMHTMLFormElementD(value);
  }

private:
  nsIDOMHTMLFieldSetElement inner;

}

