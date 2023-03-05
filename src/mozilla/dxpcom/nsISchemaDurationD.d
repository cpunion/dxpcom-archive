/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISchemaDuration.idl
 */

module mozilla.dxpcom.nsISchemaDurationD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISchemaDuration;


public import mozilla.dxpcom.nsISchemaDurationD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsISchemaDuration */
class nsISchemaDurationD : public nsISupportsD {

  static const nsIID IID = NS_ISCHEMADURATION_IID;


  alias nsISchemaDuration InnerType;

  this(nsISchemaDuration intr){
    super(intr);
    this.inner = intr;
  }

  nsISchemaDuration opCast() {
    return inner;
  }

  void opAssign(nsISchemaDuration value) {
    inner = value;
  }

  /* readonly attribute boolean negative; */
  PRBool Negative(){
    PRBool value;
    nsresult __result = inner.GetNegative(&value);
    CheckException(__result);
    return value;
  }

  /* PRUint32 getYears (); */
  PRUint32 GetYears(){
    PRUint32 _retval;
    nsresult __result = inner.GetYears(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRUint32 getMonths (); */
  PRUint32 GetMonths(){
    PRUint32 _retval;
    nsresult __result = inner.GetMonths(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRUint32 getDays (); */
  PRUint32 GetDays(){
    PRUint32 _retval;
    nsresult __result = inner.GetDays(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRUint32 getHours (); */
  PRUint32 GetHours(){
    PRUint32 _retval;
    nsresult __result = inner.GetHours(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRUint32 getMinutes (); */
  PRUint32 GetMinutes(){
    PRUint32 _retval;
    nsresult __result = inner.GetMinutes(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRUint32 getSeconds (); */
  PRUint32 GetSeconds(){
    PRUint32 _retval;
    nsresult __result = inner.GetSeconds(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* double getFractionSeconds (); */
  double GetFractionSeconds(){
    double _retval;
    nsresult __result = inner.GetFractionSeconds(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISchemaDuration inner;

}

