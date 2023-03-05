/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAcceptLang.idl
 */

module mozilla.dxpcom.nsIAcceptLangD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAcceptLang;


public import mozilla.dxpcom.nsIAcceptLangD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIAcceptLang */
class nsIAcceptLangD : public nsISupportsD {

  static const nsIID IID = NS_IACCEPTLANG_IID;


  alias nsIAcceptLang InnerType;

  this(nsIAcceptLang intr){
    super(intr);
    this.inner = intr;
  }

  nsIAcceptLang opCast() {
    return inner;
  }

  void opAssign(nsIAcceptLang value) {
    inner = value;
  }

  /* wstring getAcceptLangFromLocale (in wstring aLocale); */
  PRUnichar* GetAcceptLangFromLocale(PRUnichar*aLocale){
    PRUnichar* _retval;
    nsresult __result = inner.GetAcceptLangFromLocale(aLocale, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* wstring getLocaleFromAcceptLang (in wstring aName); */
  PRUnichar* GetLocaleFromAcceptLang(PRUnichar*aName){
    PRUnichar* _retval;
    nsresult __result = inner.GetLocaleFromAcceptLang(aName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* wstring acceptLang2List (in wstring aName, in wstring aList); */
  PRUnichar* AcceptLang2List(PRUnichar*aName, PRUnichar*aList){
    PRUnichar* _retval;
    nsresult __result = inner.AcceptLang2List(aName, aList, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIAcceptLang inner;

}

