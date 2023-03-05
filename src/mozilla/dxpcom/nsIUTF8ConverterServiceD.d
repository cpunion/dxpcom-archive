/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUTF8ConverterService.idl
 */

module mozilla.dxpcom.nsIUTF8ConverterServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIUTF8ConverterService;


public import mozilla.dxpcom.nsIUTF8ConverterServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIUTF8ConverterService */
class nsIUTF8ConverterServiceD : public nsISupportsD {

  static const nsIID IID = NS_IUTF8CONVERTERSERVICE_IID;


  alias nsIUTF8ConverterService InnerType;

  this(nsIUTF8ConverterService intr){
    super(intr);
    this.inner = intr;
  }

  nsIUTF8ConverterService opCast() {
    return inner;
  }

  void opAssign(nsIUTF8ConverterService value) {
    inner = value;
  }

  /**
   * Ensure that |aString| is encoded in UTF-8.  If not, 
   * convert to UTF-8 assuming it's encoded in |aCharset|
   * and return the converted string in UTF-8.
   *
   * @param aString a string to  ensure its UTF8ness
   * @param aCharset the charset to convert from if |aString| is not in UTF-8
   * @param aSkipCheck determines whether or not to skip 'ASCIIness' and 
   *        'UTF8ness' check. Set this to PR_TRUE only if you suspect that 
   *        aString can be mistaken for ASCII / UTF-8 but is actually NOT 
   *        in ASCII / UTF-8 so that aString has to go through the conversion.
   *        skipping ASCIIness/UTF8ness check.
   *        The most common case is the input is in 7bit non-ASCII charsets
   *        like ISO-2022-JP, HZ or UTF-7 (in its original form or
   *        a modified form used in IMAP folder names).
   * @return the converted string in UTF-8.
   * @throws NS_ERROR_UCONV_NOCONV when there is no decoder for aCharset
   *         or error code of nsIUnicodeDecoder in case of conversion failure
   */
  /* AUTF8String convertStringToUTF8 (in ACString aString, in string aCharset, in boolean aSkipCheck); */
  char[] ConvertStringToUTF8(char[] aString, char*aCharset, PRBool aSkipCheck){
    scope auto _aString = new ACString(aString);
    scope auto _retval = new ACString;
    nsresult __result = inner.ConvertStringToUTF8(cast(nsACString*)_aString, aCharset, aSkipCheck, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Ensure that |aSpec| (after URL-unescaping it) is encoded in UTF-8.  
   * If not,  convert it to UTF-8, assuming it's encoded in |aCharset|,  
   * and return the result.
   *
   * <p>Make sure that all characters outside US-ASCII in your input spec 
   * are url-escaped if  your spec is not in UTF-8 (before url-escaping) 
   * because the presence of non-ASCII characters is <strong>blindly</strong>
   * regarded as an indication that your input spec is in unescaped UTF-8
   * and it will be returned without further processing. No valid spec
   * going around in Mozilla code would break this assumption. 
   *
   * <p>XXX The above may change in the future depending on the usage pattern.
   *
   * @param aSpec an url-escaped URI spec to  ensure its UTF8ness
   * @param aCharset the charset to convert from if |aSpec| is not in UTF-8
   * @return the converted spec in UTF-8.
   * @throws NS_ERROR_UCONV_NOCONV when there is no decoder for aCharset
   *         or error code of nsIUnicodeDecoder in case of conversion failure
   */
  /* AUTF8String convertURISpecToUTF8 (in ACString aSpec, in string aCharset); */
  char[] ConvertURISpecToUTF8(char[] aSpec, char*aCharset){
    scope auto _aSpec = new ACString(aSpec);
    scope auto _retval = new ACString;
    nsresult __result = inner.ConvertURISpecToUTF8(cast(nsACString*)_aSpec, aCharset, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsIUTF8ConverterService inner;

}

