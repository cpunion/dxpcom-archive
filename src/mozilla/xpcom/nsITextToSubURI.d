/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITextToSubURI.idl
 */

module mozilla.xpcom.nsITextToSubURI;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsITextToSubURI */
const char[] NS_ITEXTTOSUBURI_IID_STR = "8b042e24-6f87-11d3-b3c8-00805f8a6670";

const nsIID NS_ITEXTTOSUBURI_IID= 
  {0x8b042e24, 0x6f87, 0x11d3, 
    [ 0xb3, 0xc8, 0x00, 0x80, 0x5f, 0x8a, 0x66, 0x70 ]};

extern(Windows)
interface nsITextToSubURI : nsISupports {
  static const char[] IID_STR = NS_ITEXTTOSUBURI_IID_STR;
  static const nsIID IID = NS_ITEXTTOSUBURI_IID;

  /* string ConvertAndEscape (in string charset, in wstring text); */
  nsresult ConvertAndEscape(char *charset, PRUnichar *text, char **_retval);

  /* wstring UnEscapeAndConvert (in string charset, in string text); */
  nsresult UnEscapeAndConvert(char *charset, char *text, PRUnichar **_retval);

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
  nsresult UnEscapeURIForUI(nsACString * aCharset, nsACString * aURIFragment, nsAString * _retval);

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
  nsresult UnEscapeNonAsciiURI(nsACString * aCharset, nsACString * aURIFragment, nsAString * _retval);

}

