/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPropertyBag2.idl
 */

module mozilla.dxpcom.nsIPropertyBag2D;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPropertyBag2;


public import mozilla.dxpcom.nsIPropertyBag2D;

public import mozilla.xpcom.nsIPropertyBag;
public import mozilla.dxpcom.nsIPropertyBagD;


/* starting wrapper class:    nsIPropertyBag2 */
class nsIPropertyBag2D : public nsIPropertyBagD {

  static const nsIID IID = NS_IPROPERTYBAG2_IID;


  alias nsIPropertyBag2 InnerType;

  this(nsIPropertyBag2 intr){
    super(intr);
    this.inner = intr;
  }

  nsIPropertyBag2 opCast() {
    return inner;
  }

  void opAssign(nsIPropertyBag2 value) {
    inner = value;
  }

  /* PRInt32 getPropertyAsInt32 (in AString prop); */
  PRInt32 GetPropertyAsInt32(wchar[] prop){
    scope auto _prop = new AString(prop);
    PRInt32 _retval;
    nsresult __result = inner.GetPropertyAsInt32(cast(nsAString*)_prop, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRUint32 getPropertyAsUint32 (in AString prop); */
  PRUint32 GetPropertyAsUint32(wchar[] prop){
    scope auto _prop = new AString(prop);
    PRUint32 _retval;
    nsresult __result = inner.GetPropertyAsUint32(cast(nsAString*)_prop, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRInt64 getPropertyAsInt64 (in AString prop); */
  PRInt64 GetPropertyAsInt64(wchar[] prop){
    scope auto _prop = new AString(prop);
    PRInt64 _retval;
    nsresult __result = inner.GetPropertyAsInt64(cast(nsAString*)_prop, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRUint64 getPropertyAsUint64 (in AString prop); */
  PRUint64 GetPropertyAsUint64(wchar[] prop){
    scope auto _prop = new AString(prop);
    PRUint64 _retval;
    nsresult __result = inner.GetPropertyAsUint64(cast(nsAString*)_prop, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* double getPropertyAsDouble (in AString prop); */
  double GetPropertyAsDouble(wchar[] prop){
    scope auto _prop = new AString(prop);
    double _retval;
    nsresult __result = inner.GetPropertyAsDouble(cast(nsAString*)_prop, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* AString getPropertyAsAString (in AString prop); */
  wchar[] GetPropertyAsAString(wchar[] prop){
    scope auto _prop = new AString(prop);
    scope auto _retval = new AString;
    nsresult __result = inner.GetPropertyAsAString(cast(nsAString*)_prop, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* ACString getPropertyAsACString (in AString prop); */
  char[] GetPropertyAsACString(wchar[] prop){
    scope auto _prop = new AString(prop);
    scope auto _retval = new ACString;
    nsresult __result = inner.GetPropertyAsACString(cast(nsAString*)_prop, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* AUTF8String getPropertyAsAUTF8String (in AString prop); */
  char[] GetPropertyAsAUTF8String(wchar[] prop){
    scope auto _prop = new AString(prop);
    scope auto _retval = new ACString;
    nsresult __result = inner.GetPropertyAsAUTF8String(cast(nsAString*)_prop, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* boolean getPropertyAsBool (in AString prop); */
  PRBool GetPropertyAsBool(wchar[] prop){
    scope auto _prop = new AString(prop);
    PRBool _retval;
    nsresult __result = inner.GetPropertyAsBool(cast(nsAString*)_prop, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * This method returns null if the value exists, but is null.
   */
  /* void getPropertyAsInterface (in AString prop, in nsIIDRef iid, [iid_is (iid), retval] out nsQIResult result); */
  void GetPropertyAsInterface(wchar[] prop, nsIID * iid, out void * result){
    scope auto _prop = new AString(prop);
    nsresult __result = inner.GetPropertyAsInterface(cast(nsAString*)_prop, iid, &result);
    CheckException(__result);
  }

private:
  nsIPropertyBag2 inner;

}

