/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITextToSubURI.idl
 */

module mozilla.dxpcom.nsITextToSubURID;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsITextToSubURI;


public import mozilla.dxpcom.nsITextToSubURID;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsITextToSubURI */
class nsITextToSubURID : public nsISupportsD {

  static const nsIID IID = NS_ITEXTTOSUBURI_IID;


  alias nsITextToSubURI InnerType;

  this(nsITextToSubURI intr){
    super(intr);
    this.inner = intr;
  }

  nsITextToSubURI opCast() {
    return inner;
  }

  void opAssign(nsITextToSubURI value) {
    inner = value;
  }

  /* string ConvertAndEscape (in string charset, in wstring text); */
  char* ConvertAndEscape(char*charset, PRUnichar*text){
    char* _retval;
    nsresult __result = inner.ConvertAndEscape(charset, text, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* wstring UnEscapeAndConvert (in string charset, in string text); */
  PRUnichar* UnEscapeAndConvert(char*charset, char*text){
    PRUnichar* _retval;
    nsresult __result = inner.UnEscapeAndConvert(charset, text, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Unescapes the given URI fragment (for UI purpose only)
   * Note: 
   * <ul>
   *  <li> escaping back the result (unescaped string) is not guaranteed to 
   *       give the original escaped string
   *  <li> In case of a conversion error, the URI fragment (escaped) is 
   *       assumed to be in UTF-8 and converted to AString (UTF-16)
   *  <li> Always succeeeds (callers don't need to do error checking)
   * </ul>
   *
   * @param aCharset the charset to convert from
   * @param aURIFragment the URI (or URI fragment) to unescape
   * @return Unescaped aURIFragment  converted to unicode
   */
  /* AString unEscapeURIForUI (in ACString aCharset, in AUTF8String aURIFragment); */
  wchar[] UnEscapeURIForUI(char[] aCharset, char[] aURIFragment){
    scope auto _aCharset = new ACString(aCharset);
    scope auto _aURIFragment = new ACString(aURIFragment);
    scope auto _retval = new AString;
    nsresult __result = inner.UnEscapeURIForUI(cast(nsACString*)_aCharset, cast(nsACString*)_aURIFragment, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Unescapes only non ASCII characters in the given URI fragment 
   * note: this method assumes the URI as UTF-8 and fallbacks to the given charset
   * in case the data is not UTF-8
   *
   * @param aCharset the charset to convert from
   * @param aURIFragment the URI (or URI fragment) to unescape
   * @return Unescaped aURIFragment  converted to unicode
   * @throws NS_ERROR_UCONV_NOCONV when there is no decoder for aCharset
   *         or error code of nsIUnicodeDecoder in case of conversion failure
   */
  /* AString unEscapeNonAsciiURI (in ACString aCharset, in AUTF8String aURIFragment); */
  wchar[] UnEscapeNonAsciiURI(char[] aCharset, char[] aURIFragment){
    scope auto _aCharset = new ACString(aCharset);
    scope auto _aURIFragment = new ACString(aURIFragment);
    scope auto _retval = new AString;
    nsresult __result = inner.UnEscapeNonAsciiURI(cast(nsACString*)_aCharset, cast(nsACString*)_aURIFragment, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsITextToSubURI inner;

}

