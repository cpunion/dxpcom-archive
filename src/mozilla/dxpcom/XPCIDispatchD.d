/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM XPCIDispatch.idl
 */

module mozilla.dxpcom.XPCIDispatchD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.XPCIDispatch;


public import mozilla.dxpcom.XPCIDispatchD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    IDispatch */
/**
 * This interface is not to be used directly, it is to be used internally
 * for XPConnect's IDispatch support
 */
class IDispatchD : public nsISupportsD {

  static const nsIID IID = IDISPATCH_IID;


  alias IDispatch InnerType;

  this(IDispatch intr){
    super(intr);
    this.inner = intr;
  }

  IDispatch opCast() {
    return inner;
  }

  void opAssign(IDispatch value) {
    inner = value;
  }

private:
  IDispatch inner;

}

