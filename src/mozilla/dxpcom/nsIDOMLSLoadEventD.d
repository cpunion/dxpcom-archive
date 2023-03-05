/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMLSLoadEvent.idl
 */

module mozilla.dxpcom.nsIDOMLSLoadEventD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMLSLoadEvent;


public import mozilla.dxpcom.nsIDOMLSLoadEventD;

public import mozilla.xpcom.nsIDOMEvent;
public import mozilla.dxpcom.nsIDOMEventD;

public import mozilla.xpcom.nsIDOMLSInput;

public import mozilla.dxpcom.nsIDOMLSInputD;


/* starting wrapper class:    nsIDOMLSLoadEvent */
class nsIDOMLSLoadEventD : public nsIDOMEventD {

  static const nsIID IID = NS_IDOMLSLOADEVENT_IID;


  alias nsIDOMLSLoadEvent InnerType;

  this(nsIDOMLSLoadEvent intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMLSLoadEvent opCast() {
    return inner;
  }

  void opAssign(nsIDOMLSLoadEvent value) {
    inner = value;
  }

  /* readonly attribute nsIDOMDocument newDocument; */
  nsIDOMDocumentD  NewDocument(){
    nsIDOMDocument value;
    nsresult __result = inner.GetNewDocument(&value);
    CheckException(__result);
    return new nsIDOMDocumentD(value);
  }

  /* readonly attribute nsIDOMLSInput input; */
  nsIDOMLSInputD  Input(){
    nsIDOMLSInput value;
    nsresult __result = inner.GetInput(&value);
    CheckException(__result);
    return new nsIDOMLSInputD(value);
  }

private:
  nsIDOMLSLoadEvent inner;

}

