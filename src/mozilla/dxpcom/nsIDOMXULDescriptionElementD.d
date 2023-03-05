/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULDescriptionElement.idl
 */

module mozilla.dxpcom.nsIDOMXULDescriptionElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMXULDescriptionElement;


public import mozilla.dxpcom.nsIDOMXULDescriptionElementD;

public import mozilla.xpcom.nsIDOMXULElement;
public import mozilla.dxpcom.nsIDOMXULElementD;


/* starting wrapper class:    nsIDOMXULDescriptionElement */
class nsIDOMXULDescriptionElementD : public nsIDOMXULElementD {

  static const nsIID IID = NS_IDOMXULDESCRIPTIONELEMENT_IID;


  alias nsIDOMXULDescriptionElement InnerType;

  this(nsIDOMXULDescriptionElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMXULDescriptionElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMXULDescriptionElement value) {
    inner = value;
  }

  /* attribute boolean disabled; */
  PRBool Disabled(){
    PRBool value;
    nsresult __result = inner.GetDisabled(&value);
    CheckException(__result);
    return value;
  }
  void Disabled(PRBool aDisabled){
    nsresult __result = inner.SetDisabled(aDisabled);
    CheckException(__result);
  }

  /* attribute boolean crop; */
  PRBool Crop(){
    PRBool value;
    nsresult __result = inner.GetCrop(&value);
    CheckException(__result);
    return value;
  }
  void Crop(PRBool aCrop){
    nsresult __result = inner.SetCrop(aCrop);
    CheckException(__result);
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

private:
  nsIDOMXULDescriptionElement inner;

}

