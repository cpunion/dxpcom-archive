/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMDOMError.idl
 */

module mozilla.dxpcom.nsIDOMDOMErrorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMDOMError;


public import mozilla.dxpcom.nsIDOMDOMErrorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIDOMDOMLocator;
public import mozilla.dxpcom.nsIDOMDOMLocatorD;


/* starting wrapper class:    nsIDOMDOMError */
/**
 * The nsIDOMDOMError interface is "An non-zero implementation
 * dependent error code describing the error, or 0 if there is no
 * error." [sic]
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/2002/WD-DOM-Level-3-Core-20020409/core.html
 */
class nsIDOMDOMErrorD : public nsISupportsD {

  static const nsIID IID = NS_IDOMDOMERROR_IID;


  alias nsIDOMDOMError InnerType;

  this(nsIDOMDOMError intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMDOMError opCast() {
    return inner;
  }

  void opAssign(nsIDOMDOMError value) {
    inner = value;
  }

  enum { SEVERITY_WARNING = 0U }

  enum { SEVERITY_ERROR = 1U }

  enum { SEVERITY_FATAL_ERROR = 2U }

  /* readonly attribute unsigned short severity; */
  PRUint16 Severity(){
    PRUint16 value;
    nsresult __result = inner.GetSeverity(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute DOMString message; */
  wchar[] Message(){
    scope auto value = new AString();
    nsresult __result = inner.GetMessage(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute nsISupports relatedException; */
  nsISupportsD  RelatedException(){
    nsISupports value;
    nsresult __result = inner.GetRelatedException(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }

  /* readonly attribute nsIDOMDOMLocator location; */
  nsIDOMDOMLocatorD  Location(){
    nsIDOMDOMLocator value;
    nsresult __result = inner.GetLocation(&value);
    CheckException(__result);
    return new nsIDOMDOMLocatorD(value);
  }

private:
  nsIDOMDOMError inner;

}

