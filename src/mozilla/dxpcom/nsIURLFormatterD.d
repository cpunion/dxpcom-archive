/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIURLFormatter.idl
 */

module mozilla.dxpcom.nsIURLFormatterD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIURLFormatter;


public import mozilla.dxpcom.nsIURLFormatterD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIURLFormatter */
class nsIURLFormatterD : public nsISupportsD {

  static const nsIID IID = NS_IURLFORMATTER_IID;


  alias nsIURLFormatter InnerType;

  this(nsIURLFormatter intr){
    super(intr);
    this.inner = intr;
  }

  nsIURLFormatter opCast() {
    return inner;
  }

  void opAssign(nsIURLFormatter value) {
    inner = value;
  }

  /** 
   * formatURL - Formats a string URL
   *
   * @param aFormat string 
   */
  /* AString formatURL (in AString aFormat); */
  wchar[] FormatURL(wchar[] aFormat){
    scope auto _aFormat = new AString(aFormat);
    scope auto _retval = new AString;
    nsresult __result = inner.FormatURL(cast(nsAString*)_aFormat, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /** 
   * formatURLPref - Formats a string URL stored in a pref
   *
   * @param aFormat string 
   */
  /* AString formatURLPref (in AString aPref); */
  wchar[] FormatURLPref(wchar[] aPref){
    scope auto _aPref = new AString(aPref);
    scope auto _retval = new AString;
    nsresult __result = inner.FormatURLPref(cast(nsAString*)_aPref, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsIURLFormatter inner;

}

