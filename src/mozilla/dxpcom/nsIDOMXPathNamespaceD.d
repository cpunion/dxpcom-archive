/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXPathNamespace.idl
 */

module mozilla.dxpcom.nsIDOMXPathNamespaceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMXPathNamespace;


public import mozilla.dxpcom.nsIDOMXPathNamespaceD;

public import mozilla.xpcom.nsIDOMNode;
public import mozilla.dxpcom.nsIDOMNodeD;


/* starting wrapper class:    nsIDOMXPathNamespace */
class nsIDOMXPathNamespaceD : public nsIDOMNodeD {

  static const nsIID IID = NS_IDOMXPATHNAMESPACE_IID;


  alias nsIDOMXPathNamespace InnerType;

  this(nsIDOMXPathNamespace intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMXPathNamespace opCast() {
    return inner;
  }

  void opAssign(nsIDOMXPathNamespace value) {
    inner = value;
  }

  enum { XPATH_NAMESPACE_NODE = 13U }

  /* readonly attribute nsIDOMElement ownerElement; */
  nsIDOMElementD  OwnerElement(){
    nsIDOMElement value;
    nsresult __result = inner.GetOwnerElement(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

private:
  nsIDOMXPathNamespace inner;

}

