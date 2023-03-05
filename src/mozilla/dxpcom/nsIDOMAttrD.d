/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMAttr.idl
 */

module mozilla.dxpcom.nsIDOMAttrD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMAttr;


public import mozilla.dxpcom.nsIDOMAttrD;

public import mozilla.xpcom.nsIDOMNode;
public import mozilla.dxpcom.nsIDOMNodeD;


/* starting wrapper class:    nsIDOMAttr */
class nsIDOMAttrD : public nsIDOMNodeD {

  static const nsIID IID = NS_IDOMATTR_IID;


  alias nsIDOMAttr InnerType;

  this(nsIDOMAttr intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMAttr opCast() {
    return inner;
  }

  void opAssign(nsIDOMAttr value) {
    inner = value;
  }

  /**
 * The nsIDOMAttr interface represents an attribute in an "Element" object. 
 * Typically the allowable values for the attribute are defined in a document 
 * type definition.
 * 
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Core/
 *
 * @status FROZEN
 */
  /* readonly attribute DOMString name; */
  wchar[] Name(){
    scope auto value = new AString();
    nsresult __result = inner.GetName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute boolean specified; */
  PRBool Specified(){
    PRBool value;
    nsresult __result = inner.GetSpecified(&value);
    CheckException(__result);
    return value;
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

  /* readonly attribute nsIDOMElement ownerElement; */
  nsIDOMElementD  OwnerElement(){
    nsIDOMElement value;
    nsresult __result = inner.GetOwnerElement(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

private:
  nsIDOMAttr inner;

}

