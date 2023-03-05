/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScriptableUConv.idl
 */

module mozilla.xpcom.nsIScriptableUConv;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIInputStream; /* forward declaration */


/* starting interface:    nsIScriptableUnicodeConverter */
const char[] NS_ISCRIPTABLEUNICODECONVERTER_IID_STR = "1ea19c6c-c59f-4fd7-9fc7-151e946baca0";

const nsIID NS_ISCRIPTABLEUNICODECONVERTER_IID= 
  {0x1ea19c6c, 0xc59f, 0x4fd7, 
    [ 0x9f, 0xc7, 0x15, 0x1e, 0x94, 0x6b, 0xac, 0xa0 ]};

/**
 * This interface is a unicode encoder for use by scripts
 *
 * @created         8/Jun/2000
 * @author          Makoto Kato [m_kato@ga2.so-net.ne.jp]
 */
extern(Windows)
interface nsIScriptableUnicodeConverter : nsISupports {
  static const char[] IID_STR = NS_ISCRIPTABLEUNICODECONVERTER_IID_STR;
  static const nsIID IID = NS_ISCRIPTABLEUNICODECONVERTER_IID;

  /**
   * Converts the data from Unicode to one Charset.
   * Returns the converted string. After converting, Finish should be called
   * and its return value appended to this return value.
   */
  /* ACString ConvertFromUnicode (in AString aSrc); */
  nsresult ConvertFromUnicode(nsAString * aSrc, nsACString * _retval);

  /**
   * Returns the terminator string.
   * Should be called after ConvertFromUnicode() and appended to that
   * function's return value.
   */
  /* ACString Finish (); */
  nsresult Finish(nsACString * _retval);

  /**
   * Converts the data from one Charset to Unicode.
   */
  /* AString ConvertToUnicode (in ACString aSrc); */
  nsresult ConvertToUnicode(nsACString * aSrc, nsAString * _retval);

  /**
   * Converts an array of bytes to a unicode string.
   */
  /* AString convertFromByteArray ([array, size_is (aCount), const] in octet aData, in unsigned long aCount); */
  nsresult ConvertFromByteArray(PRUint8 *aData, PRUint32 aCount, nsAString * _retval);

  /**
   * Convert a unicode string to an array of bytes. Finish does not need to be
   * called.
   */
  /* void convertToByteArray (in AString aString, out unsigned long aLen, [array, size_is (aLen), retval] out octet aData); */
  nsresult ConvertToByteArray(nsAString * aString, PRUint32 *aLen, PRUint8 **aData);

  /**
   * Converts a unicode string to an input stream. The bytes in the stream are
   * encoded according to the charset attribute.
   * The returned stream will be nonblocking.
   */
  /* nsIInputStream convertToInputStream (in AString aString); */
  nsresult ConvertToInputStream(nsAString * aString, nsIInputStream *_retval);

  /**
   * Current character set.
   *
   * @throw NS_ERROR_UCONV_NOCONV
   *        The requested charset is not supported.
   */
  /* attribute string charset; */
  nsresult GetCharset(char * *aCharset);
  nsresult SetCharset(char * aCharset);

}

