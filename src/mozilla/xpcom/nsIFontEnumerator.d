/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFontEnumerator.idl
 */

module mozilla.xpcom.nsIFontEnumerator;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIFontEnumerator */
const char[] NS_IFONTENUMERATOR_IID_STR = "a6cf9114-15b3-11d2-932e-00805f8add32";

const nsIID NS_IFONTENUMERATOR_IID= 
  {0xa6cf9114, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

extern(Windows)
interface nsIFontEnumerator : nsISupports {
  static const char[] IID_STR = NS_IFONTENUMERATOR_IID_STR;
  static const nsIID IID = NS_IFONTENUMERATOR_IID;

  /**
   * Return a sorted array of the names of all installed fonts.
   *
   * @param  aCount     returns number of names returned
   * @param  aResult    returns array of names
   * @return void
   */
  /* void EnumerateAllFonts (out PRUint32 aCount, [array, size_is (aCount), retval] out wstring aResult); */
  nsresult EnumerateAllFonts(PRUint32 *aCount, PRUnichar ***aResult);

  /**
   * Return a sorted array of names of fonts that support the given language
   * group and are suitable for use as the given CSS generic font.
   *
   * @param  aLangGroup language group
   * @param  aGeneric   CSS generic font
   * @param  aCount     returns number of names returned
   * @param  aResult    returns array of names
   * @return void
   */
  /* void EnumerateFonts (in string aLangGroup, in string aGeneric, out PRUint32 aCount, [array, size_is (aCount), retval] out wstring aResult); */
  nsresult EnumerateFonts(char *aLangGroup, char *aGeneric, PRUint32 *aCount, PRUnichar ***aResult);

  /**
    @param  aLangGroup language group
    @return bool do we have a font for this language group
   */
  /* void HaveFontFor (in string aLangGroup, [retval] out boolean aResult); */
  nsresult HaveFontFor(char *aLangGroup, PRBool *aResult);

  /**
   * @param  aLangGroup language group
   * @param  aGeneric CSS generic font
   * @return suggested default font for this language group and generic family
   */
  /* wstring getDefaultFont (in string aLangGroup, in string aGeneric); */
  nsresult GetDefaultFont(char *aLangGroup, char *aGeneric, PRUnichar **_retval);

  /**
   * update the global font list
   * return true if font list is changed
   */
  /* boolean updateFontList (); */
  nsresult UpdateFontList(PRBool *_retval);

}

