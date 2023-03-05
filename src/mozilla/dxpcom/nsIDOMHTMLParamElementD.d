/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLParamElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLParamElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLParamElement;


public import mozilla.dxpcom.nsIDOMHTMLParamElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLParamElement */
/**
 * The nsIDOMHTMLParamElement interface is the interface to a [X]HTML
 * param element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLParamElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLPARAMELEMENT_IID;


  alias nsIDOMHTMLParamElement InnerType;

  this(nsIDOMHTMLParamElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLParamElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLParamElement value) {
    inner = value;
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

  /* attribute DOMString value; */
  wchar[] Value(){
    scope auto value = new AString();
    nsresult __result = inner.GetValue(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Value(wchar[] aValue){
    scope auto value = new AString(aValue);
    nsresult __result = inner.SetValue(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString valueType; */
  wchar[] ValueType(){
    scope auto value = new AString();
    nsresult __result = inner.GetValueType(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void ValueType(wchar[] aValueType){
    scope auto value = new AString(aValueType);
    nsresult __result = inner.SetValueType(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIDOMHTMLParamElement inner;

}

