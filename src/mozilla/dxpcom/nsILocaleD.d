/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILocale.idl
 */

module mozilla.dxpcom.nsILocaleD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsILocale;


public import mozilla.dxpcom.nsILocaleD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsILocale */
class nsILocaleD : public nsISupportsD {

  static const nsIID IID = NS_ILOCALE_IID;


  alias nsILocale InnerType;

  this(nsILocale intr){
    super(intr);
    this.inner = intr;
  }

  nsILocale opCast() {
    return inner;
  }

  void opAssign(nsILocale value) {
    inner = value;
  }

  /* AString getCategory (in AString category); */
  wchar[] GetCategory(wchar[] category){
    scope auto _category = new AString(category);
    scope auto _retval = new AString;
    nsresult __result = inner.GetCategory(cast(nsAString*)_category, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsILocale inner;

}

