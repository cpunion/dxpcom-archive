/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM xpcexception.idl
 */

module mozilla.dxpcom.xpcexceptionD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.xpcexception;


public import mozilla.dxpcom.xpcexceptionD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIException;
public import mozilla.dxpcom.nsIExceptionD;


/* starting wrapper class:    nsIXPCException */
class nsIXPCExceptionD : public nsIExceptionD {

  static const nsIID IID = NS_IXPCEXCEPTION_IID;


  alias nsIXPCException InnerType;

  this(nsIXPCException intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPCException opCast() {
    return inner;
  }

  void opAssign(nsIXPCException value) {
    inner = value;
  }

  /* void initialize (in string aMessage, in nsresult aResult, in string aName, in nsIStackFrame aLocation, in nsISupports aData, in nsIException aInner); */
  void Initialize(char*aMessage, nsresult aResult, char*aName, nsIStackFrameD aLocation, nsISupportsD aData, nsIExceptionD aInner){
    nsresult __result = inner.Initialize(aMessage, aResult, aName, aLocation ? cast(nsIStackFrame)aLocation : null, aData ? cast(nsISupports)aData : null, aInner ? cast(nsIException)aInner : null);
    CheckException(__result);
  }

private:
  nsIXPCException inner;

}

