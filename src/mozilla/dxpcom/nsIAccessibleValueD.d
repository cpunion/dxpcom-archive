/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessibleValue.idl
 */

module mozilla.dxpcom.nsIAccessibleValueD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAccessibleValue;


public import mozilla.dxpcom.nsIAccessibleValueD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIAccessibleValue */
class nsIAccessibleValueD : public nsISupportsD {

  static const nsIID IID = NS_IACCESSIBLEVALUE_IID;


  alias nsIAccessibleValue InnerType;

  this(nsIAccessibleValue intr){
    super(intr);
    this.inner = intr;
  }

  nsIAccessibleValue opCast() {
    return inner;
  }

  void opAssign(nsIAccessibleValue value) {
    inner = value;
  }

  /* readonly attribute double maximumValue; */
  double MaximumValue(){
    double value;
    nsresult __result = inner.GetMaximumValue(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute double minimumValue; */
  double MinimumValue(){
    double value;
    nsresult __result = inner.GetMinimumValue(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute double currentValue; */
  double CurrentValue(){
    double value;
    nsresult __result = inner.GetCurrentValue(&value);
    CheckException(__result);
    return value;
  }

  /**
      * We want to be able to return a success condition of the value
      *   getting set. ie if the value is not within the interval of
      *   minimumValue-maximumValue
      */
  /* boolean setCurrentValue (in double value); */
  PRBool SetCurrentValue(double value){
    PRBool _retval;
    nsresult __result = inner.SetCurrentValue(value, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIAccessibleValue inner;

}

