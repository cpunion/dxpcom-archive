/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAtom.idl
 */

module mozilla.dxpcom.nsIAtomD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAtom;


public import mozilla.dxpcom.nsIAtomD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIAtom */
class nsIAtomD : public nsISupportsD {

  static const nsIID IID = NS_IATOM_IID;


  alias nsIAtom InnerType;

  this(nsIAtom intr){
    super(intr);
    this.inner = intr;
  }

  nsIAtom opCast() {
    return inner;
  }

  void opAssign(nsIAtom value) {
    inner = value;
  }

  /**
   * Get the Unicode or UTF8 value for the string
   */
  /* AString toString (); */
  wchar[] ToString(){
    scope auto _retval = new AString;
    nsresult __result = inner.ToString(cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* AUTF8String toUTF8String (); */
  char[] ToUTF8String(){
    scope auto _retval = new ACString;
    nsresult __result = inner.ToUTF8String(cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Return a pointer to a zero terminated UTF8 string.
   */
  /* [noscript] void getUTF8String ([shared, retval] out string aResult); */
  void GetUTF8String(out char*aResult){
    nsresult __result = inner.GetUTF8String(&aResult);
    CheckException(__result);
  }

  /**
   * Compare the atom to a specific string value
   * Note that this will NEVER return/throw an error condition.
   */
  /* boolean equals (in AString aString); */
  PRBool Equals(wchar[] aString){
    scope auto _aString = new AString(aString);
    PRBool _retval;
    nsresult __result = inner.Equals(cast(nsAString*)_aString, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean equalsUTF8 (in AUTF8String aString); */
  PRBool EqualsUTF8(char[] aString){
    scope auto _aString = new ACString(aString);
    PRBool _retval;
    nsresult __result = inner.EqualsUTF8(cast(nsACString*)_aString, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIAtom inner;

}

