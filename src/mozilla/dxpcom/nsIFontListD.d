/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFontList.idl
 */

module mozilla.dxpcom.nsIFontListD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFontList;


public import mozilla.dxpcom.nsIFontListD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;


/* starting wrapper class:    nsIFontList */
/**
 * The nsIFontList interface provides an application the  
 * necessary information so that the user can select the font to use 
 * as the default style sheet. This is used if the style sheet is 
 * missing or does not specify a font.
 * <P>Font lists are specified per language group.
 *
 */
class nsIFontListD : public nsISupportsD {

  static const nsIID IID = NS_IFONTLIST_IID;


  alias nsIFontList InnerType;

  this(nsIFontList intr){
    super(intr);
    this.inner = intr;
  }

  nsIFontList opCast() {
    return inner;
  }

  void opAssign(nsIFontList value) {
    inner = value;
  }

  /**
   * Get the list of available fonts for a language group
   * and for use as the given CSS generic font.
   *
   * @param aLangGroup limits the fonts to fonts in a language 
   *          group; eg: x-western (American/Western European), 
   *          ar (Arabic), el (Greek), he (Hebrew), ja (Japanese),
   *          ko (Korean), th (Thai), tr (Turkish),
   *          x-baltic (Baltic), x-central-euro (Eastern European),
   *          x-cyrillic (Russian), zh-CN (China), zh-TW (Taiwan)
   *
   * @param aFontType limits the fonts to the fonts with this CSS 
   *          generic font type; eg: serif, sans-serif, cursive,
   *          fantasy, monospace.
   *
   * @return a simple enumerator of the available fonts for a 
   *          language group / generic type.  These strings are
   *          the text supplied by the operating system's font 
   *          system.
   */
  /* nsISimpleEnumerator availableFonts (in wstring aLangGroup, in wstring aFontType); */
  nsISimpleEnumeratorD  AvailableFonts(PRUnichar*aLangGroup, PRUnichar*aFontType){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.AvailableFonts(aLangGroup, aFontType, &_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

private:
  nsIFontList inner;

}

