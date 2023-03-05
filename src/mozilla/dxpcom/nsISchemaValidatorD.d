/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISchemaValidator.idl
 */

module mozilla.dxpcom.nsISchemaValidatorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISchemaValidator;


public import mozilla.dxpcom.nsISchemaValidatorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISchema;
public import mozilla.dxpcom.nsISchemaD;
public import mozilla.xpcom.nsISchemaDuration;
public import mozilla.dxpcom.nsISchemaDurationD;
public import mozilla.xpcom.nsIDOMNode;
public import mozilla.dxpcom.nsIDOMNodeD;


/* starting wrapper class:    nsISchemaValidator */
class nsISchemaValidatorD : public nsISupportsD {

  static const nsIID IID = NS_ISCHEMAVALIDATOR_IID;


  alias nsISchemaValidator InnerType;

  this(nsISchemaValidator intr){
    super(intr);
    this.inner = intr;
  }

  nsISchemaValidator opCast() {
    return inner;
  }

  void opAssign(nsISchemaValidator value) {
    inner = value;
  }

  /* void loadSchema (in nsISchema aSchema); */
  void LoadSchema(nsISchemaD aSchema){
    nsresult __result = inner.LoadSchema(aSchema ? cast(nsISchema)aSchema : null);
    CheckException(__result);
  }

  /* boolean validate (in nsIDOMNode aElement); */
  PRBool Validate(nsIDOMNodeD aElement){
    PRBool _retval;
    nsresult __result = inner.Validate(aElement ? cast(nsIDOMNode)aElement : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean validateString (in AString aValue, in AString aType, in AString aNamespace); */
  PRBool ValidateString(wchar[] aValue, wchar[] aType, wchar[] aNamespace){
    scope auto _aValue = new AString(aValue);
    scope auto _aType = new AString(aType);
    scope auto _aNamespace = new AString(aNamespace);
    PRBool _retval;
    nsresult __result = inner.ValidateString(cast(nsAString*)_aValue, cast(nsAString*)_aType, cast(nsAString*)_aNamespace, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean validateAgainstType (in nsIDOMNode aElement, in nsISchemaType aType); */
  PRBool ValidateAgainstType(nsIDOMNodeD aElement, nsISchemaTypeD aType){
    PRBool _retval;
    nsresult __result = inner.ValidateAgainstType(aElement ? cast(nsIDOMNode)aElement : null, aType ? cast(nsISchemaType)aType : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsISchemaType getType (in AString aType, in AString aNamespace); */
  nsISchemaTypeD  GetType(wchar[] aType, wchar[] aNamespace){
    scope auto _aType = new AString(aType);
    scope auto _aNamespace = new AString(aNamespace);
    nsISchemaType _retval;
    nsresult __result = inner.GetType(cast(nsAString*)_aType, cast(nsAString*)_aNamespace, &_retval);
    CheckException(__result);
    return new nsISchemaTypeD(_retval);
  }

  /* nsISchemaDuration validateBuiltinTypeDuration (in AString aValue); */
  nsISchemaDurationD  ValidateBuiltinTypeDuration(wchar[] aValue){
    scope auto _aValue = new AString(aValue);
    nsISchemaDuration _retval;
    nsresult __result = inner.ValidateBuiltinTypeDuration(cast(nsAString*)_aValue, &_retval);
    CheckException(__result);
    return new nsISchemaDurationD(_retval);
  }

  /* PRTime validateBuiltinTypeTime (in AString aValue); */
  PRTime ValidateBuiltinTypeTime(wchar[] aValue){
    scope auto _aValue = new AString(aValue);
    PRTime _retval;
    nsresult __result = inner.ValidateBuiltinTypeTime(cast(nsAString*)_aValue, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRTime validateBuiltinTypeDate (in AString aValue); */
  PRTime ValidateBuiltinTypeDate(wchar[] aValue){
    scope auto _aValue = new AString(aValue);
    PRTime _retval;
    nsresult __result = inner.ValidateBuiltinTypeDate(cast(nsAString*)_aValue, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRTime validateBuiltinTypeDateTime (in AString aValue); */
  PRTime ValidateBuiltinTypeDateTime(wchar[] aValue){
    scope auto _aValue = new AString(aValue);
    PRTime _retval;
    nsresult __result = inner.ValidateBuiltinTypeDateTime(cast(nsAString*)_aValue, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISchemaValidator inner;

}

