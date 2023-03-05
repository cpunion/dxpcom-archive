/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXTFVisual.idl
 */

module mozilla.dxpcom.nsIXTFVisualD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXTFVisual;


public import mozilla.dxpcom.nsIXTFVisualD;

public import mozilla.xpcom.nsIXTFElement;
public import mozilla.dxpcom.nsIXTFElementD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;


/* starting wrapper class:    nsIXTFVisual */
class nsIXTFVisualD : public nsIXTFElementD {

  static const nsIID IID = NS_IXTFVISUAL_IID;


  alias nsIXTFVisual InnerType;

  this(nsIXTFVisual intr){
    super(intr);
    this.inner = intr;
  }

  nsIXTFVisual opCast() {
    return inner;
  }

  void opAssign(nsIXTFVisual value) {
    inner = value;
  }

  /* readonly attribute nsIDOMElement visualContent; */
  nsIDOMElementD  VisualContent(){
    nsIDOMElement value;
    nsresult __result = inner.GetVisualContent(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

  /* readonly attribute nsIDOMElement insertionPoint; */
  nsIDOMElementD  InsertionPoint(){
    nsIDOMElement value;
    nsresult __result = inner.GetInsertionPoint(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

  /* readonly attribute boolean applyDocumentStyleSheets; */
  PRBool ApplyDocumentStyleSheets(){
    PRBool value;
    nsresult __result = inner.GetApplyDocumentStyleSheets(&value);
    CheckException(__result);
    return value;
  }

  enum { NOTIFY_DID_LAYOUT = 131072U }

  /* void didLayout (); */
  void DidLayout(){
    nsresult __result = inner.DidLayout();
    CheckException(__result);
  }

private:
  nsIXTFVisual inner;

}

