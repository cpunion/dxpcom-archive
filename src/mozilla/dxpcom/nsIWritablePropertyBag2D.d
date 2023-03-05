/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWritablePropertyBag2.idl
 */

module mozilla.dxpcom.nsIWritablePropertyBag2D;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWritablePropertyBag2;


public import mozilla.dxpcom.nsIWritablePropertyBag2D;

public import mozilla.xpcom.nsIPropertyBag2;
public import mozilla.dxpcom.nsIPropertyBag2D;


/* starting wrapper class:    nsIWritablePropertyBag2 */
class nsIWritablePropertyBag2D : public nsIPropertyBag2D {

  static const nsIID IID = NS_IWRITABLEPROPERTYBAG2_IID;


  alias nsIWritablePropertyBag2 InnerType;

  this(nsIWritablePropertyBag2 intr){
    super(intr);
    this.inner = intr;
  }

  nsIWritablePropertyBag2 opCast() {
    return inner;
  }

  void opAssign(nsIWritablePropertyBag2 value) {
    inner = value;
  }

  /* void setPropertyAsInt32 (in AString prop, in PRInt32 value); */
  void SetPropertyAsInt32(wchar[] prop, PRInt32 value){
    scope auto _prop = new AString(prop);
    nsresult __result = inner.SetPropertyAsInt32(cast(nsAString*)_prop, value);
    CheckException(__result);
  }

  /* void setPropertyAsUint32 (in AString prop, in PRUint32 value); */
  void SetPropertyAsUint32(wchar[] prop, PRUint32 value){
    scope auto _prop = new AString(prop);
    nsresult __result = inner.SetPropertyAsUint32(cast(nsAString*)_prop, value);
    CheckException(__result);
  }

  /* void setPropertyAsInt64 (in AString prop, in PRInt64 value); */
  void SetPropertyAsInt64(wchar[] prop, PRInt64 value){
    scope auto _prop = new AString(prop);
    nsresult __result = inner.SetPropertyAsInt64(cast(nsAString*)_prop, value);
    CheckException(__result);
  }

  /* void setPropertyAsUint64 (in AString prop, in PRUint64 value); */
  void SetPropertyAsUint64(wchar[] prop, PRUint64 value){
    scope auto _prop = new AString(prop);
    nsresult __result = inner.SetPropertyAsUint64(cast(nsAString*)_prop, value);
    CheckException(__result);
  }

  /* void setPropertyAsDouble (in AString prop, in double value); */
  void SetPropertyAsDouble(wchar[] prop, double value){
    scope auto _prop = new AString(prop);
    nsresult __result = inner.SetPropertyAsDouble(cast(nsAString*)_prop, value);
    CheckException(__result);
  }

  /* void setPropertyAsAString (in AString prop, in AString value); */
  void SetPropertyAsAString(wchar[] prop, wchar[] value){
    scope auto _prop = new AString(prop);
    scope auto _value = new AString(value);
    nsresult __result = inner.SetPropertyAsAString(cast(nsAString*)_prop, cast(nsAString*)_value);
    CheckException(__result);
  }

  /* void setPropertyAsACString (in AString prop, in ACString value); */
  void SetPropertyAsACString(wchar[] prop, char[] value){
    scope auto _prop = new AString(prop);
    scope auto _value = new ACString(value);
    nsresult __result = inner.SetPropertyAsACString(cast(nsAString*)_prop, cast(nsACString*)_value);
    CheckException(__result);
  }

  /* void setPropertyAsAUTF8String (in AString prop, in AUTF8String value); */
  void SetPropertyAsAUTF8String(wchar[] prop, char[] value){
    scope auto _prop = new AString(prop);
    scope auto _value = new ACString(value);
    nsresult __result = inner.SetPropertyAsAUTF8String(cast(nsAString*)_prop, cast(nsACString*)_value);
    CheckException(__result);
  }

  /* void setPropertyAsBool (in AString prop, in boolean value); */
  void SetPropertyAsBool(wchar[] prop, PRBool value){
    scope auto _prop = new AString(prop);
    nsresult __result = inner.SetPropertyAsBool(cast(nsAString*)_prop, value);
    CheckException(__result);
  }

  /* void setPropertyAsInterface (in AString prop, in nsISupports value); */
  void SetPropertyAsInterface(wchar[] prop, nsISupportsD value){
    scope auto _prop = new AString(prop);
    nsresult __result = inner.SetPropertyAsInterface(cast(nsAString*)_prop, value ? cast(nsISupports)value : null);
    CheckException(__result);
  }

private:
  nsIWritablePropertyBag2 inner;

}

