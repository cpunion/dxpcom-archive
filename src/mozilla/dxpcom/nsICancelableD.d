/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICancelable.idl
 */

module mozilla.dxpcom.nsICancelableD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICancelable;


public import mozilla.dxpcom.nsICancelableD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsICancelable */
/**
 * This interface provides a means to cancel an operation that is in progress.
 *
 * @status UNDER_REVIEW
 */
class nsICancelableD : public nsISupportsD {

  static const nsIID IID = NS_ICANCELABLE_IID;


  alias nsICancelable InnerType;

  this(nsICancelable intr){
    super(intr);
    this.inner = intr;
  }

  nsICancelable opCast() {
    return inner;
  }

  void opAssign(nsICancelable value) {
    inner = value;
  }

  /**
   * Call this method to request that this object abort whatever operation it
   * may be performing.
   *
   * @param aReason
   *        Pass a failure code to indicate the reason why this operation is
   *        being canceled.  It is an error to pass a success code.
   */
  /* void cancel (in nsresult aReason); */
  void Cancel(nsresult aReason){
    nsresult __result = inner.Cancel(aReason);
    CheckException(__result);
  }

private:
  nsICancelable inner;

}

