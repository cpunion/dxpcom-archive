/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMEntity.idl
 */

module mozilla.dxpcom.nsIDOMEntityD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMEntity;


public import mozilla.dxpcom.nsIDOMEntityD;

public import mozilla.xpcom.nsIDOMNode;
public import mozilla.dxpcom.nsIDOMNodeD;


/* starting wrapper class:    nsIDOMEntity */
class nsIDOMEntityD : public nsIDOMNodeD {

  static const nsIID IID = NS_IDOMENTITY_IID;


  alias nsIDOMEntity InnerType;

  this(nsIDOMEntity intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMEntity opCast() {
    return inner;
  }

  void opAssign(nsIDOMEntity value) {
    inner = value;
  }

  /**
 * The nsIDOMEntity interface represents an entity, either parsed 
 * or unparsed, in an XML document.
 *
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Core/
 *
 * @status FROZEN
 */
  /* readonly attribute DOMString publicId; */
  wchar[] PublicId(){
    scope auto value = new AString();
    nsresult __result = inner.GetPublicId(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute DOMString systemId; */
  wchar[] SystemId(){
    scope auto value = new AString();
    nsresult __result = inner.GetSystemId(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute DOMString notationName; */
  wchar[] NotationName(){
    scope auto value = new AString();
    nsresult __result = inner.GetNotationName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

private:
  nsIDOMEntity inner;

}

