/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrintSettingsService.idl
 */

module mozilla.dxpcom.nsIPrintSettingsServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPrintSettingsService;


public import mozilla.dxpcom.nsIPrintSettingsServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIPrintSettings;

public import mozilla.dxpcom.nsIPrintSettingsD;


/* starting wrapper class:    nsIPrintSettingsService */
class nsIPrintSettingsServiceD : public nsISupportsD {

  static const nsIID IID = NS_IPRINTSETTINGSSERVICE_IID;


  alias nsIPrintSettingsService InnerType;

  this(nsIPrintSettingsService intr){
    super(intr);
    this.inner = intr;
  }

  nsIPrintSettingsService opCast() {
    return inner;
  }

  void opAssign(nsIPrintSettingsService value) {
    inner = value;
  }

  /**
   * Returns a "global" PrintSettings object 
   * Creates a new the first time, if one doesn't exist.
   *
   * Then returns the same object each time after that.
   *
   * Initializes the globalPrintSettings from the default printer
   */
  /* readonly attribute nsIPrintSettings globalPrintSettings; */
  nsIPrintSettingsD  GlobalPrintSettings(){
    nsIPrintSettings value;
    nsresult __result = inner.GetGlobalPrintSettings(&value);
    CheckException(__result);
    return new nsIPrintSettingsD(value);
  }

  /**
   * Returns a new, unique PrintSettings object each time.
   *
   * For example, if each browser was to have its own unique
   * PrintSettings, then each browser window would call this to
   * create its own unique PrintSettings object.
   *
   * If each browse window was to use the same PrintSettings object
   * then it should use "globalPrintSettings"
   *
   * Initializes the newPrintSettings from the default printer
   *
   */
  /* readonly attribute nsIPrintSettings newPrintSettings; */
  nsIPrintSettingsD  NewPrintSettings(){
    nsIPrintSettings value;
    nsresult __result = inner.GetNewPrintSettings(&value);
    CheckException(__result);
    return new nsIPrintSettingsD(value);
  }

  /**
   * The name of the last printer used, or else the system default printer.
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
   * if aPrinterName is null then it uses the default printer name if it can
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
   * Reads PrintSettings values from Prefs,
   * the values to be read are indicated by the "flags" arg.
   *
   * aPrintSettings should be initialized with the name of a printer. First
   * it reads in the PrintSettings from the last print job. Then it uses the
   * PrinterName in the PrinterSettings to read any settings that were saved
   * just for that printer.
   *
   * aPS - PrintSettings to have its settings read
   * aUsePrinterNamePrefix - indicates whether to use the printer name as a prefix
   * aFlags - indicates which prefs to read, see nsIPrintSettings.idl for the
   *          const values.
   *
   * Items not read:
   *   startPageRange, endPageRange, scaling, printRange, title
   *   docURL, howToEnableFrameUI, isCancelled, printFrameTypeUsage
   *   printFrameType, printSilent, shrinkToFit, numCopies,
   *   printerName
   *
   */
  /* void initPrintSettingsFromPrefs (in nsIPrintSettings aPrintSettings, in boolean aUsePrinterNamePrefix, in unsigned long aFlags); */
  void InitPrintSettingsFromPrefs(nsIPrintSettingsD aPrintSettings, PRBool aUsePrinterNamePrefix, PRUint32 aFlags){
    nsresult __result = inner.InitPrintSettingsFromPrefs(aPrintSettings ? cast(nsIPrintSettings)aPrintSettings : null, aUsePrinterNamePrefix, aFlags);
    CheckException(__result);
  }

  /**
   * Writes PrintSettings values to Prefs, 
   * the values to be written are indicated by the "flags" arg.
   *
   * If there is no PrinterName in the PrinterSettings 
   * the values are saved as the "generic" values not associated with any printer.
   * If a PrinterName is there, then it saves the items qualified for that Printer
   *
   * aPS - PrintSettings to have its settings saved
   * aUsePrinterNamePrefix - indicates whether to use the printer name as a prefix
   * aFlags - indicates which prefs to save, see nsIPrintSettings.idl for the const values.
   *
   * Items not written:
   *   startPageRange, endPageRange, scaling, printRange, title
   *   docURL, howToEnableFrameUI, isCancelled, printFrameTypeUsage
   *   printFrameType, printSilent, shrinkToFit, numCopies
   *
   */
  /* void savePrintSettingsToPrefs (in nsIPrintSettings aPrintSettings, in boolean aUsePrinterNamePrefix, in unsigned long aFlags); */
  void SavePrintSettingsToPrefs(nsIPrintSettingsD aPrintSettings, PRBool aUsePrinterNamePrefix, PRUint32 aFlags){
    nsresult __result = inner.SavePrintSettingsToPrefs(aPrintSettings ? cast(nsIPrintSettings)aPrintSettings : null, aUsePrinterNamePrefix, aFlags);
    CheckException(__result);
  }

private:
  nsIPrintSettingsService inner;

}

