/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDNSRequest.idl
 */

module mozilla.dxpcom.nsIDNSRequestD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDNSRequest;


public import mozilla.dxpcom.nsIDNSRequestD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIDNSRequest */
/**
 * nsIDNSRequest
 */
class nsIDNSRequestD : public nsISupportsD {

  static const nsIID IID = NS_IDNSREQUEST_IID;


  alias nsIDNSRequest InnerType;

  this(nsIDNSRequest intr){
    super(intr);
    this.inner = intr;
  }

  nsIDNSRequest opCast() {
    return inner;
  }

  void opAssign(nsIDNSRequest value) {
    inner = value;
  }

  /**
     * called to cancel a pending asynchronous DNS request.  the listener will
     * passed to asyncResolve will be notified immediately with a status code
     * of NS_ERROR_ABORT.
     */
  /* void cancel (); */
  void Cancel(){
    nsresult __result = inner.Cancel();
    CheckException(__result);
  }

private:
  nsIDNSRequest inner;

}

