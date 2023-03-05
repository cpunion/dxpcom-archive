/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrintOptions.idl
 */

module mozilla.dxpcom.nsIPrintOptionsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPrintOptions;


public import mozilla.dxpcom.nsIPrintOptionsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIPrintSettings;
public import mozilla.dxpcom.nsIPrintSettingsD;

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;


/* starting wrapper class:    nsIPrintOptions */
/**
 * Print options interface
 *
 * Do not attempt to freeze this API - it still needs lots of work. Consult
 * John Keiser <jkeiser@netscape.com> and Roland Mainz
 * <roland.mainz@informatik.med.uni-giessen.de> for futher details.
 */
class nsIPrintOptionsD : public nsISupportsD {

  static const nsIID IID = NS_IPRINTOPTIONS_IID;


  alias nsIPrintOptions InnerType;

  this(nsIPrintOptions intr){
    super(intr);
    this.inner = intr;
  }

  nsIPrintOptions opCast() {
    return inner;
  }

  void opAssign(nsIPrintOptions value) {
    inner = value;
  }

  /**
   * Show Native Print Options dialog, this may not be supported on all platforms
   */
  /* void ShowPrintSetupDialog (in nsIPrintSettings aThePrintSettings); */
  void ShowPrintSetupDialog(nsIPrintSettingsD aThePrintSettings){
    nsresult __result = inner.ShowPrintSetupDialog(aThePrintSettings ? cast(nsIPrintSettings)aThePrintSettings : null);
    CheckException(__result);
  }

  /**
   * Creates a new PrintSettnigs Object
   * and initializes it from prefs
   */
  /* nsIPrintSettings CreatePrintSettings (); */
  nsIPrintSettingsD  CreatePrintSettings(){
    nsIPrintSettings _retval;
    nsresult __result = inner.CreatePrintSettings(&_retval);
    CheckException(__result);
    return new nsIPrintSettingsD(_retval);
  }

  /**
   * available Printers
   * It returns an enumerator object or throws an exception on error cases
   * like if internal setup failed and/or no printers are available.
   */
  /* nsISimpleEnumerator availablePrinters (); */
  nsISimpleEnumeratorD  AvailablePrinters(){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.AvailablePrinters(&_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

  /**
   * Get a prefixed integer pref 
   */
  /* PRInt32 getPrinterPrefInt (in nsIPrintSettings aPrintSettings, in wstring aPrefName); */
  PRInt32 GetPrinterPrefInt(nsIPrintSettingsD aPrintSettings, PRUnichar*aPrefName){
    PRInt32 _retval;
    nsresult __result = inner.GetPrinterPrefInt(aPrintSettings ? cast(nsIPrintSettings)aPrintSettings : null, aPrefName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * display Printer Job Properties dialog
   */
  /* void displayJobProperties (in wstring aPrinter, in nsIPrintSettings aPrintSettings, out boolean aDisplayed); */
  void DisplayJobProperties(PRUnichar*aPrinter, nsIPrintSettingsD aPrintSettings, out PRBool aDisplayed){
    nsresult __result = inner.DisplayJobProperties(aPrinter, aPrintSettings ? cast(nsIPrintSettings)aPrintSettings : null, &aDisplayed);
    CheckException(__result);
  }

  /* void setFontNamePointSize (in AString aName, in PRInt32 aPointSize); */
  void SetFontNamePointSize(wchar[] aName, PRInt32 aPointSize){
    scope auto _aName = new AString(aName);
    nsresult __result = inner.SetFontNamePointSize(cast(nsAString*)_aName, aPointSize);
    CheckException(__result);
  }

  /* [noscript] void SetDefaultFont (in nsNativeFontRef aFont); */
  void SetDefaultFont(nsFont * aFont){
    nsresult __result = inner.SetDefaultFont(aFont);
    CheckException(__result);
  }

  /* [noscript] void GetDefaultFont (in nsNativeFontRef aFont); */
  void GetDefaultFont(nsFont * aFont){
    nsresult __result = inner.GetDefaultFont(aFont);
    CheckException(__result);
  }

  /**
   * Native data constants
   */
  enum { kNativeDataPrintRecord = 0 }

  /* [noscript] voidPtr GetNativeData (in short aDataType); */
  void * GetNativeData(PRInt16 aDataType){
void * _retval;
    nsresult __result = inner.GetNativeData(aDataType, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIPrintOptions inner;

}


/* starting wrapper class:    nsIPrinterEnumerator */
class nsIPrinterEnumeratorD : public nsISupportsD {

  static const nsIID IID = NS_IPRINTERENUMERATOR_IID;


  alias nsIPrinterEnumerator InnerType;

  this(nsIPrinterEnumerator intr){
    super(intr);
    this.inner = intr;
  }

  nsIPrinterEnumerator opCast() {
    return inner;
  }

  void opAssign(nsIPrinterEnumerator value) {
    inner = value;
  }

  /**
   * The name of the default printer 
   * This name must be in the list of printer names returned by
   * "availablePrinters"
   * 
   */
  /* readonly attribute wstring defaultPrinterName; */
  PRUnichar* DefaultPrinterName(){
    PRUnichar* value;
    nsresult __result = inner.GetDefaultPrinterName(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Initializes certain settings from the native printer into the PrintSettings
   * These settings include, but are not limited to:
   *   Page Orientation
   *   Page Size
   *   Number of Copies
   */
  /* void initPrintSettingsFromPrinter (in wstring aPrinterName, in nsIPrintSettings aPrintSettings); */
  void InitPrintSettingsFromPrinter(PRUnichar*aPrinterName, nsIPrintSettingsD aPrintSettings){
    nsresult __result = inner.InitPrintSettingsFromPrinter(aPrinterName, aPrintSettings ? cast(nsIPrintSettings)aPrintSettings : null);
    CheckException(__result);
  }

  /**
   * Returns an array of the names of all installed printers.
   *
   * @param  aCount     returns number of printers returned
   * @param  aResult    returns array of names
   * @return void
   */
  /* void enumeratePrinters (out PRUint32 aCount, [array, size_is (aCount), retval] out wstring aResult); */
  void EnumeratePrinters(out PRUint32 aCount, out PRUnichar**aResult){
    nsresult __result = inner.EnumeratePrinters(&aCount, &aResult);
    CheckException(__result);
  }

  /* void displayPropertiesDlg (in wstring aPrinter, in nsIPrintSettings aPrintSettings); */
  void DisplayPropertiesDlg(PRUnichar*aPrinter, nsIPrintSettingsD aPrintSettings){
    nsresult __result = inner.DisplayPropertiesDlg(aPrinter, aPrintSettings ? cast(nsIPrintSettings)aPrintSettings : null);
    CheckException(__result);
  }

private:
  nsIPrinterEnumerator inner;

}

