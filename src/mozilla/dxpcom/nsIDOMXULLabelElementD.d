/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULLabelElement.idl
 */

module mozilla.dxpcom.nsIDOMXULLabelElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMXULLabelElement;


public import mozilla.dxpcom.nsIDOMXULLabelElementD;

public import mozilla.xpcom.nsIDOMXULDescriptionElement;
public import mozilla.dxpcom.nsIDOMXULDescriptionElementD;


/* starting wrapper class:    nsIDOMXULLabelElement */
class nsIDOMXULLabelElementD : public nsIDOMXULDescriptionElementD {

  static const nsIID IID = NS_IDOMXULLABELELEMENT_IID;


  alias nsIDOMXULLabelElement InnerType;

  this(nsIDOMXULLabelElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMXULLabelElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMXULLabelElement value) {
    inner = value;
  }

  /* attribute DOMString accessKey; */
  wchar[] AccessKey(){
    scope auto value = new AString();
    nsresult __result = inner.GetAccessKey(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void AccessKey(wchar[] aAccessKey){
    scope auto value = new AString(aAccessKey);
    nsresult __result = inner.SetAccessKey(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString control; */
  wchar[] Control(){
    scope auto value = new AString();
    nsresult __result = inner.GetControl(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Control(wchar[] aControl){
    scope auto value = new AString(aControl);
    nsresult __result = inner.SetControl(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIDOMXULLabelElement inner;

}

