/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPResponse.idl
 */

module mozilla.dxpcom.nsISOAPResponseD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISOAPResponse;


public import mozilla.dxpcom.nsISOAPResponseD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISOAPCall;
public import mozilla.dxpcom.nsISOAPCallD;

public import mozilla.xpcom.nsISOAPParameter;

public import mozilla.dxpcom.nsISOAPParameterD;

public import mozilla.xpcom.nsISOAPFault;

public import mozilla.dxpcom.nsISOAPFaultD;


/* starting wrapper class:    nsISOAPResponse */
class nsISOAPResponseD : public nsISOAPMessageD {

  static const nsIID IID = NS_ISOAPRESPONSE_IID;


  alias nsISOAPResponse InnerType;

  this(nsISOAPResponse intr){
    super(intr);
    this.inner = intr;
  }

  nsISOAPResponse opCast() {
    return inner;
  }

  void opAssign(nsISOAPResponse value) {
    inner = value;
  }

  /**
 * This is an extension of a message which contains extra functions
 * such as tracking, where appropriate, the original call that
 * produced the response message, identifying the fault, if any,
 * and supplying the return value.
 */
/**
   * The fault returned in the response, if one was generated. NULL
   * if there was no fault.  This does not rely on the response
   * parameters having been deserialized.
   */
  /* readonly attribute nsISOAPFault fault; */
  nsISOAPFaultD  Fault(){
    nsISOAPFault value;
    nsresult __result = inner.GetFault(&value);
    CheckException(__result);
    return new nsISOAPFaultD(value);
  }

private:
  nsISOAPResponse inner;

}

