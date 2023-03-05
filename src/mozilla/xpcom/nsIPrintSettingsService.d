/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrintSettingsService.idl
 */

module mozilla.xpcom.nsIPrintSettingsService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIPrintSettings; /* forward declaration */


/* starting interface:    nsIPrintSettingsService */
const char[] NS_IPRINTSETTINGSSERVICE_IID_STR = "841387c8-72e6-484b-9296-bf6eea80d58a";

const nsIID NS_IPRINTSETTINGSSERVICE_IID= 
  {0x841387c8, 0x72e6, 0x484b, 
    [ 0x92, 0x96, 0xbf, 0x6e, 0xea, 0x80, 0xd5, 0x8a ]};

extern(Windows)
interface nsIPrintSettingsService : nsISupports {
  static const char[] IID_STR = NS_IPRINTSETTINGSSERVICE_IID_STR;
  static const nsIID IID = NS_IPRINTSETTINGSSERVICE_IID;

  /**
   * Returns a "global" PrintSettings object 
   * Creates a new the first time, if one doesn't exist.
   *
   * Then returns the same object each time after that.
   *
   * Initializes the globalPrintSettings from the default printer
   */
  /* readonly attribute nsIPrintSettings globalPrintSettings; */
  nsresult GetGlobalPrintSettings(nsIPrintSettings  *aGlobalPrintSettings);

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
  nsresult GetNewPrintSettings(nsIPrintSettings  *aNewPrintSettings);

  /**
   * The name of the last printer used, or else the system default printer.
   */
  /* readonly attribute wstring defaultPrinterName; */
  nsresult GetDefaultPrinterName(PRUnichar * *aDefaultPrinterName);

  /**
   * Initializes certain settings from the native printer into the PrintSettings
   * if aPrinterName is null then it uses the default printer name if it can
   * These settings include, but are not limited to:
   *   Page Orientation
   *   Page Size
   *   Number of Copies
   */
  /* void initPrintSettingsFromPrinter (in wstring aPrinterName, in nsIPrintSettings aPrintSettings); */
  nsresult InitPrintSettingsFromPrinter(PRUnichar *aPrinterName, nsIPrintSettings aPrintSettings);

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
  nsresult InitPrintSettingsFromPrefs(nsIPrintSettings aPrintSettings, PRBool aUsePrinterNamePrefix, PRUint32 aFlags);

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
  nsresult SavePrintSettingsToPrefs(nsIPrintSettings aPrintSettings, PRBool aUsePrinterNamePrefix, PRUint32 aFlags);

}

