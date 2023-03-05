/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULButtonElement.idl
 */

module mozilla.dxpcom.nsIDOMXULButtonElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMXULButtonElement;


public import mozilla.dxpcom.nsIDOMXULButtonElementD;

public import mozilla.xpcom.nsIDOMXULLabeledControlEl;
public import mozilla.dxpcom.nsIDOMXULLabeledControlElD;


/* starting wrapper class:    nsIDOMXULButtonElement */
class nsIDOMXULButtonElementD : public nsIDOMXULLabeledControlElementD {

  static const nsIID IID = NS_IDOMXULBUTTONELEMENT_IID;


  alias nsIDOMXULButtonElement InnerType;

  this(nsIDOMXULButtonElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMXULButtonElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMXULButtonElement value) {
    inner = value;
  }

  enum { CHECKSTATE_UNCHECKED = 0 }

  enum { CHECKSTATE_CHECKED = 1 }

  enum { CHECKSTATE_MIXED = 2 }

  /* attribute DOMString type; */
  wchar[] Type(){
    scope auto value = new AString();
    nsresult __result = inner.GetType(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Type(wchar[] aType){
    scope auto value = new AString(aType);
    nsresult __result = inner.SetType(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString dlgType; */
  wchar[] DlgType(){
    scope auto value = new AString();
    nsresult __result = inner.GetDlgType(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void DlgType(wchar[] aDlgType){
    scope auto value = new AString(aDlgType);
    nsresult __result = inner.SetDlgType(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute boolean open; */
  PRBool Open(){
    PRBool value;
    nsresult __result = inner.GetOpen(&value);
    CheckException(__result);
    return value;
  }
  void Open(PRBool aOpen){
    nsresult __result = inner.SetOpen(aOpen);
    CheckException(__result);
  }

  /* attribute boolean checked; */
  PRBool Checked(){
    PRBool value;
    nsresult __result = inner.GetChecked(&value);
    CheckException(__result);
    return value;
  }
  void Checked(PRBool aChecked){
    nsresult __result = inner.SetChecked(aChecked);
    CheckException(__result);
  }

  /* attribute long checkState; */
  PRInt32 CheckState(){
    PRInt32 value;
    nsresult __result = inner.GetCheckState(&value);
    CheckException(__result);
    return value;
  }
  void CheckState(PRInt32 aCheckState){
    nsresult __result = inner.SetCheckState(aCheckState);
    CheckException(__result);
  }

  /* attribute boolean autoCheck; */
  PRBool AutoCheck(){
    PRBool value;
    nsresult __result = inner.GetAutoCheck(&value);
    CheckException(__result);
    return value;
  }
  void AutoCheck(PRBool aAutoCheck){
    nsresult __result = inner.SetAutoCheck(aAutoCheck);
    CheckException(__result);
  }

  /* attribute DOMString group; */
  wchar[] Group(){
    scope auto value = new AString();
    nsresult __result = inner.GetGroup(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Group(wchar[] aGroup){
    scope auto value = new AString(aGroup);
    nsresult __result = inner.SetGroup(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIDOMXULButtonElement inner;

}

