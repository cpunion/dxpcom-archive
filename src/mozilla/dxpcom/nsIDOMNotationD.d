/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMNotation.idl
 */

module mozilla.dxpcom.nsIDOMNotationD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMNotation;


public import mozilla.dxpcom.nsIDOMNotationD;

public import mozilla.xpcom.nsIDOMNode;
public import mozilla.dxpcom.nsIDOMNodeD;


/* starting wrapper class:    nsIDOMNotation */
class nsIDOMNotationD : public nsIDOMNodeD {

  static const nsIID IID = NS_IDOMNOTATION_IID;


  alias nsIDOMNotation InnerType;

  this(nsIDOMNotation intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMNotation opCast() {
    return inner;
  }

  void opAssign(nsIDOMNotation value) {
    inner = value;
  }

  /**
 * The nsIDOMNotation interface represents a notation declared in the DTD.
 * A notation  either declares, by name, the format of an unparsed entity, 
 * or is used for formal declaration of processing instruction targets.
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

private:
  nsIDOMNotation inner;

}

