/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMNSXBLFormControl.idl
 */

module mozilla.dxpcom.nsIDOMNSXBLFormControlD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMNSXBLFormControl;


public import mozilla.dxpcom.nsIDOMNSXBLFormControlD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIBoxObject;

public import mozilla.dxpcom.nsIBoxObjectD;


/* starting wrapper class:    nsIDOMNSXBLFormControl */
class nsIDOMNSXBLFormControlD : public nsISupportsD {

  static const nsIID IID = NS_IDOMNSXBLFORMCONTROL_IID;


  alias nsIDOMNSXBLFormControl InnerType;

  this(nsIDOMNSXBLFormControl intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMNSXBLFormControl opCast() {
    return inner;
  }

  void opAssign(nsIDOMNSXBLFormControl value) {
    inner = value;
  }

  /* readonly attribute nsIBoxObject boxObject; */
  nsIBoxObjectD  BoxObject(){
    nsIBoxObject value;
    nsresult __result = inner.GetBoxObject(&value);
    CheckException(__result);
    return new nsIBoxObjectD(value);
  }

private:
  nsIDOMNSXBLFormControl inner;

}

