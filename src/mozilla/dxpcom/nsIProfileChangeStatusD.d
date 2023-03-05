/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProfileChangeStatus.idl
 */

module mozilla.dxpcom.nsIProfileChangeStatusD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIProfileChangeStatus;


public import mozilla.dxpcom.nsIProfileChangeStatusD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIProfileChangeStatus */
class nsIProfileChangeStatusD : public nsISupportsD {

  static const nsIID IID = NS_IPROFILECHANGESTATUS_IID;


  alias nsIProfileChangeStatus InnerType;

  this(nsIProfileChangeStatus intr){
    super(intr);
    this.inner = intr;
  }

  nsIProfileChangeStatus opCast() {
    return inner;
  }

  void opAssign(nsIProfileChangeStatus value) {
    inner = value;
  }

  /* void vetoChange (); */
  void VetoChange(){
    nsresult __result = inner.VetoChange();
    CheckException(__result);
  }

  /**
    * Called by a profile change observer when a fatal error
    * occurred during the attempt to switch the profile.
    *
    * The profile should be considered in an unsafe condition,
    * and the profile manager should inform the user and
    * exit immediately.
    *
    */
  /* void changeFailed (); */
  void ChangeFailed(){
    nsresult __result = inner.ChangeFailed();
    CheckException(__result);
  }

private:
  nsIProfileChangeStatus inner;

}

