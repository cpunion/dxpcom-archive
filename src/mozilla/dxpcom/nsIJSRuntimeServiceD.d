/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIJSRuntimeService.idl
 */

module mozilla.dxpcom.nsIJSRuntimeServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIJSRuntimeService;


public import mozilla.dxpcom.nsIJSRuntimeServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIXPCScriptable;

public import mozilla.dxpcom.nsIXPCScriptableD;


/* starting wrapper class:    nsIJSRuntimeService */
class nsIJSRuntimeServiceD : public nsISupportsD {

  static const nsIID IID = NS_IJSRUNTIMESERVICE_IID;


  alias nsIJSRuntimeService InnerType;

  this(nsIJSRuntimeService intr){
    super(intr);
    this.inner = intr;
  }

  nsIJSRuntimeService opCast() {
    return inner;
  }

  void opAssign(nsIJSRuntimeService value) {
    inner = value;
  }

  /* readonly attribute JSRuntime runtime; */
  JSRuntime * Runtime(){
    JSRuntime * value;
    nsresult __result = inner.GetRuntime(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsIXPCScriptable backstagePass; */
  nsIXPCScriptableD  BackstagePass(){
    nsIXPCScriptable value;
    nsresult __result = inner.GetBackstagePass(&value);
    CheckException(__result);
    return new nsIXPCScriptableD(value);
  }

private:
  nsIJSRuntimeService inner;

}

