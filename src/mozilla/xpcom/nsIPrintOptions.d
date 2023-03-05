/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrintOptions.idl
 */

module mozilla.xpcom.nsIPrintOptions;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIPrintSettings;

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */


/* starting interface:    nsIPrintOptions */
const char[] NS_IPRINTOPTIONS_IID_STR = "d9948a4d-f49c-4456-938a-acda2c8d7741";

const nsIID NS_IPRINTOPTIONS_IID= 
  {0xd9948a4d, 0xf49c, 0x4456, 
    [ 0x93, 0x8a, 0xac, 0xda, 0x2c, 0x8d, 0x77, 0x41 ]};

/**
 * Print options interface
 *
 * Do not attempt to freeze this API - it still needs lots of work. Consult
 * John Keiser <jkeiser@netscape.com> and Roland Mainz
 * <roland.mainz@informatik.med.uni-giessen.de> for futher details.
 */
extern(Windows)
interface nsIPrintOptions : nsISupports {
  static const char[] IID_STR = NS_IPRINTOPTIONS_IID_STR;
  static const nsIID IID = NS_IPRINTOPTIONS_IID;

  /**
   * Show Native Print Options dialog, this may not be supported on all platforms
   */
  /* void ShowPrintSetupDialog (in nsIPrintSettings aThePrintSettings); */
  nsresult ShowPrintSetupDialog(nsIPrintSettings aThePrintSettings);

  /**
   * Creates a new PrintSettnigs Object
   * and initializes it from prefs
   */
  /* nsIPrintSettings CreatePrintSettings (); */
  nsresult CreatePrintSettings(nsIPrintSettings *_retval);

  /**
   * available Printers
   * It returns an enumerator object or throws an exception on error cases
   * like if internal setup failed and/or no printers are available.
   */
  /* nsISimpleEnumerator availablePrinters (); */
  nsresult AvailablePrinters(nsISimpleEnumerator *_retval);

  /**
   * Get a prefixed integer pref 
   */
  /* PRInt32 getPrinterPrefInt (in nsIPrintSettings aPrintSettings, in wstring aPrefName); */
  nsresult GetPrinterPrefInt(nsIPrintSettings aPrintSettings, PRUnichar *aPrefName, PRInt32 *_retval);

  /**
   * display Printer Job Properties dialog
   */
  /* void displayJobProperties (in wstring aPrinter, in nsIPrintSettings aPrintSettings, out boolean aDisplayed); */
  nsresult DisplayJobProperties(PRUnichar *aPrinter, nsIPrintSettings aPrintSettings, PRBool *aDisplayed);

  /* void setFontNamePointSize (in AString aName, in PRInt32 aPointSize); */
  nsresult SetFontNamePointSize(nsAString * aName, PRInt32 aPointSize);

  /* [noscript] void SetDefaultFont (in nsNativeFontRef aFont); */
  nsresult SetDefaultFont(nsFont * aFont);

  /* [noscript] void GetDefaultFont (in nsNativeFontRef aFont); */
  nsresult GetDefaultFont(nsFont * aFont);

  /**
   * Native data constants
   */
  enum { kNativeDataPrintRecord = 0 };

  /* [noscript] voidPtr GetNativeData (in short aDataType); */
  nsresult GetNativeData(PRInt16 aDataType, void * *_retval);

}


/* starting interface:    nsIPrinterEnumerator */
const char[] NS_IPRINTERENUMERATOR_IID_STR = "a6cf9128-15b3-11d2-932e-00805f8add32";

const nsIID NS_IPRINTERENUMERATOR_IID= 
  {0xa6cf9128, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

extern(Windows)
interface nsIPrinterEnumerator : nsISupports {
  static const char[] IID_STR = NS_IPRINTERENUMERATOR_IID_STR;
  static const nsIID IID = NS_IPRINTERENUMERATOR_IID;

  /**
   * The name of the default printer 
   * This name must be in the list of printer names returned by
   * "availablePrinters"
   * 
   */
  /* readonly attribute wstring defaultPrinterName; */
  nsresult GetDefaultPrinterName(PRUnichar * *aDefaultPrinterName);

  /**
   * Initializes certain settings from the native printer into the PrintSettings
   * These settings include, but are not limited to:
   *   Page Orientation
   *   Page Size
   *   Number of Copies
   */
  /* void initPrintSettingsFromPrinter (in wstring aPrinterName, in nsIPrintSettings aPrintSettings); */
  nsresult InitPrintSettingsFromPrinter(PRUnichar *aPrinterName, nsIPrintSettings aPrintSettings);

  /**
   * Returns an array of the names of all installed printers.
   *
   * @param  aCount     returns number of printers returned
   * @param  aResult    returns array of names
   * @return void
   */
  /* void enumeratePrinters (out PRUint32 aCount, [array, size_is (aCount), retval] out wstring aResult); */
  nsresult EnumeratePrinters(PRUint32 *aCount, PRUnichar ***aResult);

  /* void displayPropertiesDlg (in wstring aPrinter, in nsIPrintSettings aPrintSettings); */
  nsresult DisplayPropertiesDlg(PRUnichar *aPrinter, nsIPrintSettings aPrintSettings);

}

