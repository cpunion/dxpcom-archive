/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULControlElement.idl
 */

module mozilla.dxpcom.nsIDOMXULControlElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMXULControlElement;


public import mozilla.dxpcom.nsIDOMXULControlElementD;

public import mozilla.xpcom.nsIDOMElement;
public import mozilla.dxpcom.nsIDOMElementD;
public import mozilla.xpcom.nsIDOMXULElement;
public import mozilla.dxpcom.nsIDOMXULElementD;

public import mozilla.xpcom.nsIControllers;

public import mozilla.dxpcom.nsIControllersD;


/* starting wrapper class:    nsIDOMXULControlElement */
class nsIDOMXULControlElementD : public nsIDOMXULElementD {

  static const nsIID IID = NS_IDOMXULCONTROLELEMENT_IID;


  alias nsIDOMXULControlElement InnerType;

  this(nsIDOMXULControlElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMXULControlElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMXULControlElement value) {
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

  /* attribute long tabIndex; */
  PRInt32 TabIndex(){
    PRInt32 value;
    nsresult __result = inner.GetTabIndex(&value);
    CheckException(__result);
    return value;
  }
  void TabIndex(PRInt32 aTabIndex){
    nsresult __result = inner.SetTabIndex(aTabIndex);
    CheckException(__result);
  }

private:
  nsIDOMXULControlElement inner;

}

