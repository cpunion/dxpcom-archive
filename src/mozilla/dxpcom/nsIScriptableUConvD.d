/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScriptableUConv.idl
 */

module mozilla.dxpcom.nsIScriptableUConvD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIScriptableUConv;


public import mozilla.dxpcom.nsIScriptableUConvD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;


/* starting wrapper class:    nsIScriptableUnicodeConverter */
/**
 * This interface is a unicode encoder for use by scripts
 *
 * @created         8/Jun/2000
 * @author          Makoto Kato [m_kato@ga2.so-net.ne.jp]
 */
class nsIScriptableUnicodeConverterD : public nsISupportsD {

  static const nsIID IID = NS_ISCRIPTABLEUNICODECONVERTER_IID;


  alias nsIScriptableUnicodeConverter InnerType;

  this(nsIScriptableUnicodeConverter intr){
    super(intr);
    this.inner = intr;
  }

  nsIScriptableUnicodeConverter opCast() {
    return inner;
  }

  void opAssign(nsIScriptableUnicodeConverter value) {
    inner = value;
  }

  /**
   * Converts the data from Unicode to one Charset.
   * Returns the converted string. After converting, Finish should be called
   * and its return value appended to this return value.
   */
  /* ACString ConvertFromUnicode (in AString aSrc); */
  char[] ConvertFromUnicode(wchar[] aSrc){
    scope auto _aSrc = new AString(aSrc);
    scope auto _retval = new ACString;
    nsresult __result = inner.ConvertFromUnicode(cast(nsAString*)_aSrc, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Returns the terminator string.
   * Should be called after ConvertFromUnicode() and appended to that
   * function's return value.
   */
  /* ACString Finish (); */
  char[] Finish(){
    scope auto _retval = new ACString;
    nsresult __result = inner.Finish(cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Converts the data from one Charset to Unicode.
   */
  /* AString ConvertToUnicode (in ACString aSrc); */
  wchar[] ConvertToUnicode(char[] aSrc){
    scope auto _aSrc = new ACString(aSrc);
    scope auto _retval = new AString;
    nsresult __result = inner.ConvertToUnicode(cast(nsACString*)_aSrc, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Converts an array of bytes to a unicode string.
   */
  /* AString convertFromByteArray ([array, size_is (aCount), const] in octet aData, in unsigned long aCount); */
  wchar[] ConvertFromByteArray(PRUint8 *aData, PRUint32 aCount){
    scope auto _retval = new AString;
    nsresult __result = inner.ConvertFromByteArray(aData, aCount, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Convert a unicode string to an array of bytes. Finish does not need to be
   * called.
   */
  /* void convertToByteArray (in AString aString, out unsigned long aLen, [array, size_is (aLen), retval] out octet aData); */
  void ConvertToByteArray(wchar[] aString, out PRUint32 aLen, out PRUint8 *aData){
    scope auto _aString = new AString(aString);
    nsresult __result = inner.ConvertToByteArray(cast(nsAString*)_aString, &aLen, &aData);
    CheckException(__result);
  }

  /**
   * Converts a unicode string to an input stream. The bytes in the stream are
   * encoded according to the charset attribute.
   * The returned stream will be nonblocking.
   */
  /* nsIInputStream convertToInputStream (in AString aString); */
  nsIInputStreamD  ConvertToInputStream(wchar[] aString){
    scope auto _aString = new AString(aString);
    nsIInputStream _retval;
    nsresult __result = inner.ConvertToInputStream(cast(nsAString*)_aString, &_retval);
    CheckException(__result);
    return new nsIInputStreamD(_retval);
  }

  /**
   * Current character set.
   *
   * @throw NS_ERROR_UCONV_NOCONV
   *        The requested charset is not supported.
   */
  /* attribute string charset; */
  char* Charset(){
    char* value;
    nsresult __result = inner.GetCharset(&value);
    CheckException(__result);
    return value;
  }
  void Charset(char* aCharset){
    nsresult __result = inner.SetCharset(aCharset);
    CheckException(__result);
  }

private:
  nsIScriptableUnicodeConverter inner;

}

