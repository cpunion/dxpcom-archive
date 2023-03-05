/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPolicyListener.idl
 */

module mozilla.dxpcom.nsIPolicyListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPolicyListener;


public import mozilla.dxpcom.nsIPolicyListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIPolicyListener */
class nsIPolicyListenerD : public nsISupportsD {

  static const nsIID IID = NS_IPOLICYLISTENER_IID;


  alias nsIPolicyListener InnerType;

  this(nsIPolicyListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIPolicyListener opCast() {
    return inner;
  }

  void opAssign(nsIPolicyListener value) {
    inner = value;
  }

  /**
   * Notify listeners about the availabiltiy of a policy
   *
   * @param aPolicyLocation -> Points to the sites full p3p policy
   * @param aError          -> POLICY_LOAD_SUCCESS | POLICY_LOAD_FAILURE | POLICY_LIFE_EXPIRED | POLICY_SYNTAX_ERROR
   *
   */
  /* void notifyPolicyLocation (in string aPolicyLocation, in long aError); */
  void NotifyPolicyLocation(char*aPolicyLocation, PRInt32 aError){
    nsresult __result = inner.NotifyPolicyLocation(aPolicyLocation, aError);
    CheckException(__result);
  }

  /**
   * Notify an error to the listener
   *
   * @param aError          -> POLICY_LOAD_FAILURE | POLICY_LIFE_EXPIRED | POLICY_SYNTAX_ERROR
   *
   */
  /* void notifyPolicyError (in long aError); */
  void NotifyPolicyError(PRInt32 aError){
    nsresult __result = inner.NotifyPolicyError(aError);
    CheckException(__result);
  }

private:
  nsIPolicyListener inner;

}

