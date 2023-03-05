/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICharsetConverterManager.idl
 */

module mozilla.xpcom.nsICharsetConverterManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.xpcom.nsIAtom;

public import mozilla.xpcom.nsIStringEnumerator;


/* starting interface:    nsICharsetConverterManager */
const char[] NS_ICHARSETCONVERTERMANAGER_IID_STR = "f5323a76-c8f7-4c65-8d0c-1250e969c7d5";

const nsIID NS_ICHARSETCONVERTERMANAGER_IID= 
  {0xf5323a76, 0xc8f7, 0x4c65, 
    [ 0x8d, 0x0c, 0x12, 0x50, 0xe9, 0x69, 0xc7, 0xd5 ]};

/**
 *
 * Here Charsets are indentified by ASCII strings. Charset alias
 * resolution is provided by default in most methods. "Raw"
 * versions that do not need this resolution are also provided.
 *
 * @created         21/Feb/2000
 * @author  Catalin Rotaru [CATA]
 */
extern(Windows)
interface nsICharsetConverterManager : nsISupports {
  static const char[] IID_STR = NS_ICHARSETCONVERTERMANAGER_IID_STR;
  static const nsIID IID = NS_ICHARSETCONVERTERMANAGER_IID;

  /**
     * Get the Unicode decoder for the given charset.
     * The "Raw" version skips charset alias resolution
     */
  /* nsIUnicodeDecoder getUnicodeDecoder (in string charset); */
  nsresult GetUnicodeDecoder(char *charset, nsIUnicodeDecoder *_retval);

  /* nsIUnicodeDecoder getUnicodeDecoderRaw (in string charset); */
  nsresult GetUnicodeDecoderRaw(char *charset, nsIUnicodeDecoder *_retval);

  /**
     * Get the Unicode encoder for the given charset.
     * The "Raw" version skips charset alias resolution
     */
  /* nsIUnicodeEncoder getUnicodeEncoder (in string charset); */
  nsresult GetUnicodeEncoder(char *charset, nsIUnicodeEncoder *_retval);

  /* nsIUnicodeEncoder getUnicodeEncoderRaw (in string charset); */
  nsresult GetUnicodeEncoderRaw(char *charset, nsIUnicodeEncoder *_retval);

  /**
     * A shortcut to calling nsICharsetAlias to do alias resolution
     */
  /* ACString getCharsetAlias (in string charset); */
  nsresult GetCharsetAlias(char *charset, nsACString * _retval);

  /**
     * Get the complete list of available decoders.
     */
  /* nsIUTF8StringEnumerator getDecoderList (); */
  nsresult GetDecoderList(nsIUTF8StringEnumerator *_retval);

  /**
     * Get the complete list of available encoders.
     */
  /* nsIUTF8StringEnumerator getEncoderList (); */
  nsresult GetEncoderList(nsIUTF8StringEnumerator *_retval);

  /**
     * Get the complete list of available charset detectors.
     */
  /* nsIUTF8StringEnumerator GetCharsetDetectorList (); */
  nsresult GetCharsetDetectorList(nsIUTF8StringEnumerator *_retval);

  /**
     * Get the human-readable name for the given charset.
     */
  /* AString getCharsetTitle (in string charset); */
  nsresult GetCharsetTitle(char *charset, nsAString * _retval);

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
  nsresult GetCharsetData(char *charset, PRUnichar *prop, nsAString * _retval);

  /**
     * Get the language group for the given charset. This is similar to 
     * calling <tt>getCharsetData</tt> with the <tt>prop</tt> "LangGroup".
     * 
     * @param charset name of the character encoding, e.g. 'iso-8859-15'.
     * @return the language code for the character encoding.
     */
  /* nsIAtom getCharsetLangGroup (in string charset); */
  nsresult GetCharsetLangGroup(char *charset, nsIAtom *_retval);

  /* nsIAtom getCharsetLangGroupRaw (in string charset); */
  nsresult GetCharsetLangGroupRaw(char *charset, nsIAtom *_retval);

}

