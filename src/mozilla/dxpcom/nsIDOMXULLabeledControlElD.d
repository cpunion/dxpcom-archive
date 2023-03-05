/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULLabeledControlEl.idl
 */

module mozilla.dxpcom.nsIDOMXULLabeledControlElD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMXULLabeledControlEl;


public import mozilla.dxpcom.nsIDOMXULLabeledControlElD;

public import mozilla.xpcom.nsIDOMElement;
public import mozilla.dxpcom.nsIDOMElementD;
public import mozilla.xpcom.nsIDOMXULControlElement;
public import mozilla.dxpcom.nsIDOMXULControlElementD;


/* starting wrapper class:    nsIDOMXULLabeledControlElement */
class nsIDOMXULLabeledControlElementD : public nsIDOMXULControlElementD {

  static const nsIID IID = NS_IDOMXULLABELEDCONTROLELEMENT_IID;


  alias nsIDOMXULLabeledControlElement InnerType;

  this(nsIDOMXULLabeledControlElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMXULLabeledControlElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMXULLabeledControlElement value) {
    inner = value;
  }

  /* attribute DOMString crop; */
  wchar[] Crop(){
    scope auto value = new AString();
    nsresult __result = inner.GetCrop(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Crop(wchar[] aCrop){
    scope auto value = new AString(aCrop);
    nsresult __result = inner.SetCrop(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString image; */
  wchar[] Image(){
    scope auto value = new AString();
    nsresult __result = inner.GetImage(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Image(wchar[] aImage){
    scope auto value = new AString(aImage);
    nsresult __result = inner.SetImage(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString label; */
  wchar[] Label(){
    scope auto value = new AString();
    nsresult __result = inner.GetLabel(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Label(wchar[] aLabel){
    scope auto value = new AString(aLabel);
    nsresult __result = inner.SetLabel(cast(nsAString*)value);
    CheckException(__result);
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

  /* attribute DOMString command; */
  wchar[] Command(){
    scope auto value = new AString();
    nsresult __result = inner.GetCommand(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Command(wchar[] aCommand){
    scope auto value = new AString(aCommand);
    nsresult __result = inner.SetCommand(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIDOMXULLabeledControlElement inner;

}

