/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFontList.idl
 */

module mozilla.xpcom.nsIFontList;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */


/* starting interface:    nsIFontList */
const char[] NS_IFONTLIST_IID_STR = "702909c6-1dd2-11b2-b833-8a740f643539";

const nsIID NS_IFONTLIST_IID= 
  {0x702909c6, 0x1dd2, 0x11b2, 
    [ 0xb8, 0x33, 0x8a, 0x74, 0x0f, 0x64, 0x35, 0x39 ]};

/**
 * The nsIFontList interface provides an application the  
 * necessary information so that the user can select the font to use 
 * as the default style sheet. This is used if the style sheet is 
 * missing or does not specify a font.
 * <P>Font lists are specified per language group.
 *
 */
extern(Windows)
interface nsIFontList : nsISupports {
  static const char[] IID_STR = NS_IFONTLIST_IID_STR;
  static const nsIID IID = NS_IFONTLIST_IID;

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
  nsresult AvailableFonts(PRUnichar *aLangGroup, PRUnichar *aFontType, nsISimpleEnumerator *_retval);

}

