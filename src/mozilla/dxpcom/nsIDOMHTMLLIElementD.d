/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLLIElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLLIElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLLIElement;


public import mozilla.dxpcom.nsIDOMHTMLLIElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLLIElement */
/**
 * The nsIDOMHTMLLIElement interface is the interface to a [X]HTML li
 * element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLLIElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLLIELEMENT_IID;


  alias nsIDOMHTMLLIElement InnerType;

  this(nsIDOMHTMLLIElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLLIElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLLIElement value) {
    inner = value;
  }

  /* attribute DOMString type; */
  wchar[] Type(){
    scope auto value = new AString();
    nsresult __result = inner.GetType(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Type(wchar[] aType){
    scope auto value = new AString(aType);
    nsresult __result = inner.SetType(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute long value; */
  PRInt32 Value(){
    PRInt32 value;
    nsresult __result = inner.GetValue(&value);
    CheckException(__result);
    return value;
  }
  void Value(PRInt32 aValue){
    nsresult __result = inner.SetValue(aValue);
    CheckException(__result);
  }

private:
  nsIDOMHTMLLIElement inner;

}

