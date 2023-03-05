/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISchemaValidatorRegexp.idl
 */

module mozilla.dxpcom.nsISchemaValidatorRegexpD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISchemaValidatorRegexp;


public import mozilla.dxpcom.nsISchemaValidatorRegexpD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsISchemaValidatorRegexp */
class nsISchemaValidatorRegexpD : public nsISupportsD {

  static const nsIID IID = NS_ISCHEMAVALIDATORREGEXP_IID;


  alias nsISchemaValidatorRegexp InnerType;

  this(nsISchemaValidatorRegexp intr){
    super(intr);
    this.inner = intr;
  }

  nsISchemaValidatorRegexp opCast() {
    return inner;
  }

  void opAssign(nsISchemaValidatorRegexp value) {
    inner = value;
  }

  /* boolean runRegexp (in DOMString aString, in DOMString aRegexpString, in string aModifierString); */
  PRBool RunRegexp(wchar[] aString, wchar[] aRegexpString, char*aModifierString){
    scope auto _aString = new AString(aString);
    scope auto _aRegexpString = new AString(aRegexpString);
    PRBool _retval;
    nsresult __result = inner.RunRegexp(cast(nsAString*)_aString, cast(nsAString*)_aRegexpString, aModifierString, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISchemaValidatorRegexp inner;

}

