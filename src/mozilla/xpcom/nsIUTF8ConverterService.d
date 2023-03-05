/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUTF8ConverterService.idl
 */

module mozilla.xpcom.nsIUTF8ConverterService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIUTF8ConverterService */
const char[] NS_IUTF8CONVERTERSERVICE_IID_STR = "249f52a3-2599-4b00-ba40-0481364831a2";

const nsIID NS_IUTF8CONVERTERSERVICE_IID= 
  {0x249f52a3, 0x2599, 0x4b00, 
    [ 0xba, 0x40, 0x04, 0x81, 0x36, 0x48, 0x31, 0xa2 ]};

extern(Windows)
interface nsIUTF8ConverterService : nsISupports {
  static const char[] IID_STR = NS_IUTF8CONVERTERSERVICE_IID_STR;
  static const nsIID IID = NS_IUTF8CONVERTERSERVICE_IID;

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
  nsresult ConvertStringToUTF8(nsACString * aString, char *aCharset, PRBool aSkipCheck, nsACString * _retval);

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
  nsresult ConvertURISpecToUTF8(nsACString * aSpec, char *aCharset, nsACString * _retval);

}

