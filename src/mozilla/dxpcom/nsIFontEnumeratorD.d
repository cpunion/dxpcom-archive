/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFontEnumerator.idl
 */

module mozilla.dxpcom.nsIFontEnumeratorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFontEnumerator;


public import mozilla.dxpcom.nsIFontEnumeratorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIFontEnumerator */
class nsIFontEnumeratorD : public nsISupportsD {

  static const nsIID IID = NS_IFONTENUMERATOR_IID;


  alias nsIFontEnumerator InnerType;

  this(nsIFontEnumerator intr){
    super(intr);
    this.inner = intr;
  }

  nsIFontEnumerator opCast() {
    return inner;
  }

  void opAssign(nsIFontEnumerator value) {
    inner = value;
  }

  /**
   * Return a sorted array of the names of all installed fonts.
   *
   * @param  aCount     returns number of names returned
   * @param  aResult    returns array of names
   * @return void
   */
  /* void EnumerateAllFonts (out PRUint32 aCount, [array, size_is (aCount), retval] out wstring aResult); */
  void EnumerateAllFonts(out PRUint32 aCount, out PRUnichar**aResult){
    nsresult __result = inner.EnumerateAllFonts(&aCount, &aResult);
    CheckException(__result);
  }

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
  void EnumerateFonts(char*aLangGroup, char*aGeneric, out PRUint32 aCount, out PRUnichar**aResult){
    nsresult __result = inner.EnumerateFonts(aLangGroup, aGeneric, &aCount, &aResult);
    CheckException(__result);
  }

  /**
    @param  aLangGroup language group
    @return bool do we have a font for this language group
   */
  /* void HaveFontFor (in string aLangGroup, [retval] out boolean aResult); */
  void HaveFontFor(char*aLangGroup, out PRBool aResult){
    nsresult __result = inner.HaveFontFor(aLangGroup, &aResult);
    CheckException(__result);
  }

  /**
   * @param  aLangGroup language group
   * @param  aGeneric CSS generic font
   * @return suggested default font for this language group and generic family
   */
  /* wstring getDefaultFont (in string aLangGroup, in string aGeneric); */
  PRUnichar* GetDefaultFont(char*aLangGroup, char*aGeneric){
    PRUnichar* _retval;
    nsresult __result = inner.GetDefaultFont(aLangGroup, aGeneric, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * update the global font list
   * return true if font list is changed
   */
  /* boolean updateFontList (); */
  PRBool UpdateFontList(){
    PRBool _retval;
    nsresult __result = inner.UpdateFontList(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIFontEnumerator inner;

}

