/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICharsetConverterManager.idl
 */

module mozilla.dxpcom.nsICharsetConverterManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICharsetConverterManager;


public import mozilla.dxpcom.nsICharsetConverterManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.dxpcom.nsISupportsArrayD;
public import mozilla.xpcom.nsIAtom;
public import mozilla.dxpcom.nsIAtomD;

public import mozilla.xpcom.nsIStringEnumerator;

import mozilla.dxpcom.nsIStringEnumeratorD;


/* starting wrapper class:    nsICharsetConverterManager */
/**
 *
 * Here Charsets are indentified by ASCII strings. Charset alias
 * resolution is provided by default in most methods. "Raw"
 * versions that do not need this resolution are also provided.
 *
 * @created         21/Feb/2000
 * @author  Catalin Rotaru [CATA]
 */
class nsICharsetConverterManagerD : public nsISupportsD {

  static const nsIID IID = NS_ICHARSETCONVERTERMANAGER_IID;


  alias nsICharsetConverterManager InnerType;

  this(nsICharsetConverterManager intr){
    super(intr);
    this.inner = intr;
  }

  nsICharsetConverterManager opCast() {
    return inner;
  }

  void opAssign(nsICharsetConverterManager value) {
    inner = value;
  }

  /**
     * Get the Unicode decoder for the given charset.
     * The "Raw" version skips charset alias resolution
     */
  /* nsIUnicodeDecoder getUnicodeDecoder (in string charset); */
  nsIUnicodeDecoderD  GetUnicodeDecoder(char*charset){
    nsIUnicodeDecoder _retval;
    nsresult __result = inner.GetUnicodeDecoder(charset, &_retval);
    CheckException(__result);
    return new nsIUnicodeDecoderD(_retval);
  }

  /* nsIUnicodeDecoder getUnicodeDecoderRaw (in string charset); */
  nsIUnicodeDecoderD  GetUnicodeDecoderRaw(char*charset){
    nsIUnicodeDecoder _retval;
    nsresult __result = inner.GetUnicodeDecoderRaw(charset, &_retval);
    CheckException(__result);
    return new nsIUnicodeDecoderD(_retval);
  }

  /**
     * Get the Unicode encoder for the given charset.
     * The "Raw" version skips charset alias resolution
     */
  /* nsIUnicodeEncoder getUnicodeEncoder (in string charset); */
  nsIUnicodeEncoderD  GetUnicodeEncoder(char*charset){
    nsIUnicodeEncoder _retval;
    nsresult __result = inner.GetUnicodeEncoder(charset, &_retval);
    CheckException(__result);
    return new nsIUnicodeEncoderD(_retval);
  }

  /* nsIUnicodeEncoder getUnicodeEncoderRaw (in string charset); */
  nsIUnicodeEncoderD  GetUnicodeEncoderRaw(char*charset){
    nsIUnicodeEncoder _retval;
    nsresult __result = inner.GetUnicodeEncoderRaw(charset, &_retval);
    CheckException(__result);
    return new nsIUnicodeEncoderD(_retval);
  }

  /**
     * A shortcut to calling nsICharsetAlias to do alias resolution
     */
  /* ACString getCharsetAlias (in string charset); */
  char[] GetCharsetAlias(char*charset){
    scope auto _retval = new ACString;
    nsresult __result = inner.GetCharsetAlias(charset, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
     * Get the complete list of available decoders.
     */
  /* nsIUTF8StringEnumerator getDecoderList (); */
  nsIUTF8StringEnumeratorD  GetDecoderList(){
    nsIUTF8StringEnumerator _retval;
    nsresult __result = inner.GetDecoderList(&_retval);
    CheckException(__result);
    return new nsIUTF8StringEnumeratorD(_retval);
  }

  /**
     * Get the complete list of available encoders.
     */
  /* nsIUTF8StringEnumerator getEncoderList (); */
  nsIUTF8StringEnumeratorD  GetEncoderList(){
    nsIUTF8StringEnumerator _retval;
    nsresult __result = inner.GetEncoderList(&_retval);
    CheckException(__result);
    return new nsIUTF8StringEnumeratorD(_retval);
  }

  /**
     * Get the complete list of available charset detectors.
     */
  /* nsIUTF8StringEnumerator GetCharsetDetectorList (); */
  nsIUTF8StringEnumeratorD  GetCharsetDetectorList(){
    nsIUTF8StringEnumerator _retval;
    nsresult __result = inner.GetCharsetDetectorList(&_retval);
    CheckException(__result);
    return new nsIUTF8StringEnumeratorD(_retval);
  }

  /**
     * Get the human-readable name for the given charset.
     */
  /* AString getCharsetTitle (in string charset); */
  wchar[] GetCharsetTitle(char*charset){
    scope auto _retval = new AString;
    nsresult __result = inner.GetCharsetTitle(charset, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
     * Get some data about the given charset. This includes whether the 
     * character encoding may be used for certain purposes, if it is 
     * multi-byte, and the language code for it. See charsetData.properties
     * for the source of this data. Some known property names:
     *    notForBrowser  - not to be used in the bowser.
     *    notForOutgoing - not to be used for exporting files.
     *    LangGroup      - language code for charset, e.g. 'he' and 'zh-CN'.
     *    isMultibyte    - is this a multi-byte charset?
     * 
     * @param charset name of the character encoding, e.g. 'iso-8859-15'.
     * @param prop property desired for the character encoding.
     * @return the value of the property, for the character encoding.
     */
  /* AString getCharsetData (in string charset, in wstring prop); */
  wchar[] GetCharsetData(char*charset, PRUnichar*prop){
    scope auto _retval = new AString;
    nsresult __result = inner.GetCharsetData(charset, prop, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
     * Get the language group for the given charset. This is similar to 
     * calling <tt>getCharsetData</tt> with the <tt>prop</tt> "LangGroup".
     * 
     * @param charset name of the character encoding, e.g. 'iso-8859-15'.
     * @return the language code for the character encoding.
     */
  /* nsIAtom getCharsetLangGroup (in string charset); */
  nsIAtomD  GetCharsetLangGroup(char*charset){
    nsIAtom _retval;
    nsresult __result = inner.GetCharsetLangGroup(charset, &_retval);
    CheckException(__result);
    return new nsIAtomD(_retval);
  }

  /* nsIAtom getCharsetLangGroupRaw (in string charset); */
  nsIAtomD  GetCharsetLangGroupRaw(char*charset){
    nsIAtom _retval;
    nsresult __result = inner.GetCharsetLangGroupRaw(charset, &_retval);
    CheckException(__result);
    return new nsIAtomD(_retval);
  }

private:
  nsICharsetConverterManager inner;

}

