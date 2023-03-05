/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozIStorageFunction.idl
 */

module mozilla.dxpcom.mozIStorageFunctionD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.mozIStorageFunction;


public import mozilla.dxpcom.mozIStorageFunctionD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.mozIStorageConnection;

public import mozilla.dxpcom.mozIStorageConnectionD;

public import mozilla.xpcom.mozIStorageValueArray;

public import mozilla.dxpcom.mozIStorageValueArrayD;

public import mozilla.xpcom.nsIArray;

public import mozilla.dxpcom.nsIArrayD;


/* starting wrapper class:    mozIStorageFunction */
/**
 * mozIStorageFunction is to be implemented by storage consumers that
 * wish to define custom storage functions, through
 * mozIStorageConnection's createFunction method.
 */
class mozIStorageFunctionD : public nsISupportsD {

  static const nsIID IID = MOZISTORAGEFUNCTION_IID;


  alias mozIStorageFunction InnerType;

  this(mozIStorageFunction intr){
    super(intr);
    this.inner = intr;
  }

  mozIStorageFunction opCast() {
    return inner;
  }

  void opAssign(mozIStorageFunction value) {
    inner = value;
  }

  /**
   * onFunctionCall is called when execution of a custom
   * function should occur.  There are no return values.
   * 
   * @param aNumArguments         The number of arguments
   * @param aFunctionArguments    The arguments passed in to the function
   */
  /* void onFunctionCall (in mozIStorageValueArray aFunctionArguments); */
  void OnFunctionCall(mozIStorageValueArrayD aFunctionArguments){
    nsresult __result = inner.OnFunctionCall(aFunctionArguments ? cast(mozIStorageValueArray)aFunctionArguments : null);
    CheckException(__result);
  }

private:
  mozIStorageFunction inner;

}

