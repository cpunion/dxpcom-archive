/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPolicyTarget.idl
 */

module mozilla.dxpcom.nsIPolicyTargetD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPolicyTarget;


public import mozilla.dxpcom.nsIPolicyTargetD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIPolicyListener;

public import mozilla.dxpcom.nsIPolicyListenerD;


/* starting wrapper class:    nsIPolicyTarget */
class nsIPolicyTargetD : public nsISupportsD {

  static const nsIID IID = NS_IPOLICYTARGET_IID;


  alias nsIPolicyTarget InnerType;

  this(nsIPolicyTarget intr){
    super(intr);
    this.inner = intr;
  }

  nsIPolicyTarget opCast() {
    return inner;
  }

  void opAssign(nsIPolicyTarget value) {
    inner = value;
  }

  /**
   * Setup a listener that is to be notified when the policy location 
   * becomes available
   *
   * @param aListener ->
   */
  /* void setupPolicyListener (in nsIPolicyListener aListener); */
  void SetupPolicyListener(nsIPolicyListenerD aListener){
    nsresult __result = inner.SetupPolicyListener(aListener ? cast(nsIPolicyListener)aListener : null);
    CheckException(__result);
  }

private:
  nsIPolicyTarget inner;

}

