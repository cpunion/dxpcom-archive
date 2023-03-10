/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMIMEHeaderParam.idl
 */

module mozilla.dxpcom.nsIMIMEHeaderParamD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMIMEHeaderParam;


public import mozilla.dxpcom.nsIMIMEHeaderParamD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIMIMEHeaderParam */
class nsIMIMEHeaderParamD : public nsISupportsD {

  static const nsIID IID = NS_IMIMEHEADERPARAM_IID;


  alias nsIMIMEHeaderParam InnerType;

  this(nsIMIMEHeaderParam intr){
    super(intr);
    this.inner = intr;
  }

  nsIMIMEHeaderParam opCast() {
    return inner;
  }

  void opAssign(nsIMIMEHeaderParam value) {
    inner = value;
  }

  /** 
   * Given the value of a single header field  (such as
   * Content-Disposition and Content-Type) and the name of a parameter
   * (e.g. filename, name, charset), returns the value of the parameter.
   * The value is obtained by decoding RFC 2231-style encoding,
   * RFC 2047-style encoding, and converting to UniChar(UTF-16)
   * from charset specified in RFC 2231/2047 encoding, UTF-8, 
   * <code>aFallbackCharset</code> and the locale charset as the last
   * resort if <code>TryLocaleCharset</code> is set.
   *
   * <p> 
   * This method internally invokes <code>getParameterInternal</code>, 
   * However, it does not stop at decoding RFC 2231 (the task for
   * <code>getParameterInternal</code> but tries to cope
   * with several non-standard-compliant cases mentioned below.
   *
   * <p>
   * Note that a lot of MUAs and HTTP servers put RFC 2047-encoded parameters 
   * in mail headers and HTTP headers. Unfortunately, this includes Mozilla 
   * as of 2003-05-30. Even more standard-ignorant MUAs, web servers and 
   * application servers put 'raw 8bit characters'. This will try to cope 
   * with all these cases as gracefully as possible. Additionally, it 
   * returns the language tag if the parameter is encoded per RFC 2231 and 
   * includes lang.
   *
   *
   *
   * @param  aHeaderVal        a header string to get the value of a parameter 
   *                           from.
   * @param  aParamName        the name of a MIME header parameter (e.g. 
   *                           filename, name, charset). If empty,  returns 
   *                           the first (possibly) _unnamed_ 'parameter'.
   * @param  aFallbackCharset  fallback charset to try if  the string after
   *                           RFC 2231/2047 decoding or the raw 8bit 
   *                           string is not UTF-8
   * @param  aTryLocaleCharset If set, makes yet another attempt 
   *                           with the locale charset.
   * @param  aLang             If non-null, assigns it to a pointer 
   *                           to a string containing the value of language 
   *                           obtained from RFC 2231 parsing. Caller has to 
   *                           nsMemory::Free it.
   * @return the value of <code>aParamName</code> in Unichar(UTF-16).
   */
  /* AString getParameter (in ACString aHeaderVal, in string aParamName, in ACString aFallbackCharset, in boolean aTryLocaleCharset, out string aLang); */
  wchar[] GetParameter(char[] aHeaderVal, char*aParamName, char[] aFallbackCharset, PRBool aTryLocaleCharset, out char*aLang){
    scope auto _aHeaderVal = new ACString(aHeaderVal);
    scope auto _aFallbackCharset = new ACString(aFallbackCharset);
    scope auto _retval = new AString;
    nsresult __result = inner.GetParameter(cast(nsACString*)_aHeaderVal, aParamName, cast(nsACString*)_aFallbackCharset, aTryLocaleCharset, &aLang, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /** 
   * Given the value of a single header field  (such as
   * Content-Disposition and Content-Type) and the name of a parameter
   * (e.g. filename, name, charset), returns the value of the parameter 
   * after decoding RFC 2231-style encoding. 
   * <p>
   * For <strong>internal use only</strong>. The only other place where 
   * this needs to be  invoked  is  |MimeHeaders_get_parameter| in 
   * mailnews/mime/src/mimehdrs.cpp defined as 
   * char * MimeHeaders_get_parameter (const char *header_value, 
   *                                   const char *parm_name,
   *                                   char **charset, char **language)
   *
   * Otherwise, this method would have been made static.
   *
   * @param  aHeaderVal  a header string to get the value of a parameter from.
   * @param  aParamName  the name of a MIME header parameter (e.g. 
   *                     filename, name, charset). If empty,  returns 
   *                     the first (possibly) _unnamed_ 'parameter'.
   * @param  aCharset    If non-null, it gets assigned a new pointer
   *                     to a string containing the value of charset obtained
   *                     from RFC 2231 parsing. Caller has to nsMemory::Free it.
   * @param  aLang       If non-null, it gets assigned a new pointer
   *                     to a string containing the value of language obtained
   *                     from RFC 2231 parsing. Caller has to nsMemory::Free it.
   * @return             the value of <code>aParamName</code> after
   *                     RFC 2231 decoding but without charset conversion.
   */
  /* [noscript] string getParameterInternal (in string aHeaderVal, in string aParamName, out string aCharset, out string aLang); */
  char* GetParameterInternal(char*aHeaderVal, char*aParamName, out char*aCharset, out char*aLang){
    char* _retval;
    nsresult __result = inner.GetParameterInternal(aHeaderVal, aParamName, &aCharset, &aLang, &_retval);
    CheckException(__result);
    return _retval;
  }

  /** 
   * Given a header value, decodes RFC 2047-style encoding and
   * returns the decoded header value in UTF-8 if either it's
   * RFC-2047-encoded or aDefaultCharset is given. Otherwise,
   * returns the input header value (in whatever encoding) 
   * as it is except that  RFC 822 (using backslash) quotation and 
   * CRLF (if aEatContinuation is set) are stripped away
   * <p>
   * For internal use only. The only other place where this needs to be 
   * invoked  is  <code>MIME_DecodeMimeHeader</code> in 
   * mailnews/mime/src/mimehdrs.cpp defined as
   * char * Mime_DecodeMimeHeader(char *header_val, const char *charset, 
   *                              PRBool override, PRBool eatcontinuation)
   *
   * @param aHeaderVal       a header value to decode
   * @param aDefaultCharset  MIME charset to use in place of MIME charset
   *                         specified in RFC 2047 style encoding
   *                         when <code>aOverrideCharset</code> is set.
   * @param aOverrideCharset When set, overrides MIME charset specified 
   *                         in RFC 2047 style encoding with <code>aDefaultCharset</code>
   * @param aEatContinuation When set, removes CR/LF
   * @return                 decoded header value
   */
  /* [noscript] ACString decodeRFC2047Header (in string aHeaderVal, in string aDefaultCharset, in boolean aOverrideCharset, in boolean aEatContinuation); */
  char[] DecodeRFC2047Header(char*aHeaderVal, char*aDefaultCharset, PRBool aOverrideCharset, PRBool aEatContinuation){
    scope auto _retval = new ACString;
    nsresult __result = inner.DecodeRFC2047Header(aHeaderVal, aDefaultCharset, aOverrideCharset, aEatContinuation, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /** 
   * Given a header parameter, decodes RFC 2047 style encoding (if it's 
   * not obtained from RFC 2231 encoding),  converts it to
   * UTF-8 and returns the result in UTF-8 if an attempt to extract 
   * charset info. from a few different sources succeeds.
   * Otherwise,  returns the input header value (in whatever encoding) 
   * as it is except that  RFC 822 (using backslash) quotation is
   * stripped off.
   * <p>
   * For internal use only. The only other place where this needs to be 
   * invoked  is  <code>mime_decode_filename</code> in 
   * mailnews/mime/src/mimehdrs.cpp defined as
   * char * mime_decode_filename(char *name, const char *charset, 
   *                             MimeDisplayOptions *opt) 
   *
   * @param aParamValue      the value of a parameter to decode and convert
   * @param aCharset         charset obtained from RFC 2231 decoding  in which 
   *                         <code>aParamValue</code> is encoded. If null,
   *                         indicates that it needs to try RFC 2047, instead. 
   * @param aDefaultCharset  MIME charset to use when aCharset is null and
   *                         cannot be obtained per RFC 2047 (most likely 
   *                         because 'bare' string is  used.)  Besides, it 
   *                         overrides aCharset/MIME charset obtained from 
   *                         RFC 2047 if <code>aOverrideCharset</code>  is set.
   * @param aOverrideCharset When set, overrides MIME charset specified 
   *                         in RFC 2047 style encoding with 
   *                         <code>aDefaultCharset</code>
   * @return                 decoded parameter 
   */
  /* [noscript] ACString decodeParameter (in ACString aParamValue, in string aCharset, in string aDefaultCharset, in boolean aOverrideCharset); */
  char[] DecodeParameter(char[] aParamValue, char*aCharset, char*aDefaultCharset, PRBool aOverrideCharset){
    scope auto _aParamValue = new ACString(aParamValue);
    scope auto _retval = new ACString;
    nsresult __result = inner.DecodeParameter(cast(nsACString*)_aParamValue, aCharset, aDefaultCharset, aOverrideCharset, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsIMIMEHeaderParam inner;

}

