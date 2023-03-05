/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMLSProgressEvent.idl
 */

module mozilla.dxpcom.nsIDOMLSProgressEventD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMLSProgressEvent;


public import mozilla.dxpcom.nsIDOMLSProgressEventD;

public import mozilla.xpcom.nsIDOMEvent;
public import mozilla.dxpcom.nsIDOMEventD;

public import mozilla.xpcom.nsIDOMLSInput;

public import mozilla.dxpcom.nsIDOMLSInputD;


/* starting wrapper class:    nsIDOMLSProgressEvent */
class nsIDOMLSProgressEventD : public nsIDOMEventD {

  static const nsIID IID = NS_IDOMLSPROGRESSEVENT_IID;


  alias nsIDOMLSProgressEvent InnerType;

  this(nsIDOMLSProgressEvent intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMLSProgressEvent opCast() {
    return inner;
  }

  void opAssign(nsIDOMLSProgressEvent value) {
    inner = value;
  }

  /* readonly attribute nsIDOMLSInput input; */
  nsIDOMLSInputD  Input(){
    nsIDOMLSInput value;
    nsresult __result = inner.GetInput(&value);
    CheckException(__result);
    return new nsIDOMLSInputD(value);
  }

  /* readonly attribute unsigned long position; */
  PRUint32 Position(){
    PRUint32 value;
    nsresult __result = inner.GetPosition(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute unsigned long totalSize; */
  PRUint32 TotalSize(){
    PRUint32 value;
    nsresult __result = inner.GetTotalSize(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIDOMLSProgressEvent inner;

}

