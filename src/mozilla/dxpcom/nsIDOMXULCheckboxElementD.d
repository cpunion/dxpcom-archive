/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULCheckboxElement.idl
 */

module mozilla.dxpcom.nsIDOMXULCheckboxElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMXULCheckboxElement;


public import mozilla.dxpcom.nsIDOMXULCheckboxElementD;

public import mozilla.xpcom.nsIDOMElement;
public import mozilla.dxpcom.nsIDOMElementD;
public import mozilla.xpcom.nsIDOMXULLabeledControlEl;
public import mozilla.dxpcom.nsIDOMXULLabeledControlElD;


/* starting wrapper class:    nsIDOMXULCheckboxElement */
class nsIDOMXULCheckboxElementD : public nsIDOMXULLabeledControlElementD {

  static const nsIID IID = NS_IDOMXULCHECKBOXELEMENT_IID;


  alias nsIDOMXULCheckboxElement InnerType;

  this(nsIDOMXULCheckboxElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMXULCheckboxElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMXULCheckboxElement value) {
    inner = value;
  }

  enum { CHECKSTATE_UNCHECKED = 0 }

  enum { CHECKSTATE_CHECKED = 1 }

  enum { CHECKSTATE_MIXED = 2 }

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

private:
  nsIDOMXULCheckboxElement inner;

}

