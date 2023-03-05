/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPFault.idl
 */

module mozilla.dxpcom.nsISOAPFaultD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISOAPFault;


public import mozilla.dxpcom.nsISOAPFaultD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;


/* starting wrapper class:    nsISOAPFault */
/**
 * This interface conveniently interprets information about a fault 
 * that has been returned in a response message.
 *
 */
class nsISOAPFaultD : public nsISupportsD {

  static const nsIID IID = NS_ISOAPFAULT_IID;


  alias nsISOAPFault InnerType;

  this(nsISOAPFault intr){
    super(intr);
    this.inner = intr;
  }

  nsISOAPFault opCast() {
    return inner;
  }

  void opAssign(nsISOAPFault value) {
    inner = value;
  }

  /**
   * The DOM element representing the fault in the response SOAP message.
   * This must be set for the rest of the interface to function correctly.
   */
  /* attribute nsIDOMElement element; */
  nsIDOMElementD  Element(){
    nsIDOMElement value;
    nsresult __result = inner.GetElement(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }
  void Element(nsIDOMElementD  aElement){
    nsIDOMElement value;
    nsresult __result = inner.SetElement(value);
    CheckException(__result);
  }

  /**
   * The namespaceURI of the fault code.
   */
  /* readonly attribute AString faultNamespaceURI; */
  wchar[] FaultNamespaceURI(){
    scope auto value = new AString();
    nsresult __result = inner.GetFaultNamespaceURI(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * The fault code
   */
  /* readonly attribute AString faultCode; */
  wchar[] FaultCode(){
    scope auto value = new AString();
    nsresult __result = inner.GetFaultCode(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * The fault string
   */
  /* readonly attribute AString faultString; */
  wchar[] FaultString(){
    scope auto value = new AString();
    nsresult __result = inner.GetFaultString(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * The fault actor if one was specified.
   */
  /* readonly attribute AString faultActor; */
  wchar[] FaultActor(){
    scope auto value = new AString();
    nsresult __result = inner.GetFaultActor(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * The DOM element representing the fault details
   */
  /* readonly attribute nsIDOMElement detail; */
  nsIDOMElementD  Detail(){
    nsIDOMElement value;
    nsresult __result = inner.GetDetail(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

private:
  nsISOAPFault inner;

}

