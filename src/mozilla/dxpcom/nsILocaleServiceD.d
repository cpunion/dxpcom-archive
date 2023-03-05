/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILocaleService.idl
 */

module mozilla.dxpcom.nsILocaleServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsILocaleService;


public import mozilla.dxpcom.nsILocaleServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsILocale;
public import mozilla.dxpcom.nsILocaleD;


/* starting wrapper class:    nsILocaleDefinition */
class nsILocaleDefinitionD : public nsISupportsD {

  static const nsIID IID = NS_ILOCALEDEFINITION_IID;


  alias nsILocaleDefinition InnerType;

  this(nsILocaleDefinition intr){
    super(intr);
    this.inner = intr;
  }

  nsILocaleDefinition opCast() {
    return inner;
  }

  void opAssign(nsILocaleDefinition value) {
    inner = value;
  }

  /* void setLocaleCategory (in AString category, in AString value); */
  void SetLocaleCategory(wchar[] category, wchar[] value){
    scope auto _category = new AString(category);
    scope auto _value = new AString(value);
    nsresult __result = inner.SetLocaleCategory(cast(nsAString*)_category, cast(nsAString*)_value);
    CheckException(__result);
  }

private:
  nsILocaleDefinition inner;

}


/* starting wrapper class:    nsILocaleService */
class nsILocaleServiceD : public nsISupportsD {

  static const nsIID IID = NS_ILOCALESERVICE_IID;


  alias nsILocaleService InnerType;

  this(nsILocaleService intr){
    super(intr);
    this.inner = intr;
  }

  nsILocaleService opCast() {
    return inner;
  }

  void opAssign(nsILocaleService value) {
    inner = value;
  }

  /* nsILocale newLocale (in AString aLocale); */
  nsILocaleD  NewLocale(wchar[] aLocale){
    scope auto _aLocale = new AString(aLocale);
    nsILocale _retval;
    nsresult __result = inner.NewLocale(cast(nsAString*)_aLocale, &_retval);
    CheckException(__result);
    return new nsILocaleD(_retval);
  }

  /* nsILocale newLocaleObject (in nsILocaleDefinition localeDefinition); */
  nsILocaleD  NewLocaleObject(nsILocaleDefinitionD localeDefinition){
    nsILocale _retval;
    nsresult __result = inner.NewLocaleObject(localeDefinition ? cast(nsILocaleDefinition)localeDefinition : null, &_retval);
    CheckException(__result);
    return new nsILocaleD(_retval);
  }

  /* nsILocale getSystemLocale (); */
  nsILocaleD  GetSystemLocale(){
    nsILocale _retval;
    nsresult __result = inner.GetSystemLocale(&_retval);
    CheckException(__result);
    return new nsILocaleD(_retval);
  }

  /* nsILocale getApplicationLocale (); */
  nsILocaleD  GetApplicationLocale(){
    nsILocale _retval;
    nsresult __result = inner.GetApplicationLocale(&_retval);
    CheckException(__result);
    return new nsILocaleD(_retval);
  }

  /* nsILocale getLocaleFromAcceptLanguage (in string acceptLanguage); */
  nsILocaleD  GetLocaleFromAcceptLanguage(char*acceptLanguage){
    nsILocale _retval;
    nsresult __result = inner.GetLocaleFromAcceptLanguage(acceptLanguage, &_retval);
    CheckException(__result);
    return new nsILocaleD(_retval);
  }

  /* AString getLocaleComponentForUserAgent (); */
  wchar[] GetLocaleComponentForUserAgent(){
    scope auto _retval = new AString;
    nsresult __result = inner.GetLocaleComponentForUserAgent(cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsILocaleService inner;

}

