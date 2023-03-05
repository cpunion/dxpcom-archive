/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMRangeException.idl
 */

module mozilla.dxpcom.nsIDOMRangeExceptionD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMRangeException;


public import mozilla.dxpcom.nsIDOMRangeExceptionD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIDOMRangeException */
class nsIDOMRangeExceptionD : public nsISupportsD {

  static const nsIID IID = NS_IDOMRANGEEXCEPTION_IID;


  alias nsIDOMRangeException InnerType;

  this(nsIDOMRangeException intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMRangeException opCast() {
    return inner;
  }

  void opAssign(nsIDOMRangeException value) {
    inner = value;
  }

  enum { BAD_BOUNDARYPOINTS_ERR = 1U }

  enum { INVALID_NODE_TYPE_ERR = 2U }

  /* readonly attribute unsigned short code; */
  PRUint16 Code(){
    PRUint16 value;
    nsresult __result = inner.GetCode(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIDOMRangeException inner;

}

