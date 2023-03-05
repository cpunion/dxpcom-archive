/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITimerInternal.idl
 */

module mozilla.dxpcom.nsITimerInternalD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsITimerInternal;


public import mozilla.dxpcom.nsITimerInternalD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsITimerInternal */
class nsITimerInternalD : public nsISupportsD {

  static const nsIID IID = NS_ITIMERINTERNAL_IID;


  alias nsITimerInternal InnerType;

  this(nsITimerInternal intr){
    super(intr);
    this.inner = intr;
  }

  nsITimerInternal opCast() {
    return inner;
  }

  void opAssign(nsITimerInternal value) {
    inner = value;
  }

  /* attribute boolean idle; */
  PRBool Idle(){
    PRBool value;
    nsresult __result = inner.GetIdle(&value);
    CheckException(__result);
    return value;
  }
  void Idle(PRBool aIdle){
    nsresult __result = inner.SetIdle(aIdle);
    CheckException(__result);
  }

private:
  nsITimerInternal inner;

}

