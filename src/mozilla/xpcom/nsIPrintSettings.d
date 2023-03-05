/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrintSettings.idl
 */

module mozilla.xpcom.nsIPrintSettings;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIPrintSession; /* forward declaration */


/* starting interface:    nsIPrintSettings */
const char[] NS_IPRINTSETTINGS_IID_STR = "f1094df6-ce0e-42c9-9847-2f663172c38d";

const nsIID NS_IPRINTSETTINGS_IID= 
  {0xf1094df6, 0xce0e, 0x42c9, 
    [ 0x98, 0x47, 0x2f, 0x66, 0x31, 0x72, 0xc3, 0x8d ]};

/**
 * Simplified graphics interface for JS rendering.
 *
 * @status UNDER_REVIEW
 */
extern(Windows)
interface nsIPrintSettings : nsISupports {
  static const char[] IID_STR = NS_IPRINTSETTINGS_IID_STR;
  static const nsIID IID = NS_IPRINTSETTINGS_IID;

  /**
   * PrintSettings to be Saved Navigation Constants
   */
  enum { kInitSaveOddEvenPages = 1U };

  enum { kInitSaveHeaderLeft = 2U };

  enum { kInitSaveHeaderCenter = 4U };

  enum { kInitSaveHeaderRight = 8U };

  enum { kInitSaveFooterLeft = 16U };

  enum { kInitSaveFooterCenter = 32U };

  enum { kInitSaveFooterRight = 64U };

  enum { kInitSaveBGColors = 128U };

  enum { kInitSaveBGImages = 256U };

  enum { kInitSavePaperSize = 512U };

  enum { kInitSavePaperName = 1024U };

  enum { kInitSavePaperSizeUnit = 2048U };

  enum { kInitSavePaperSizeType = 4096U };

  enum { kInitSavePaperData = 8192U };

  enum { kInitSavePaperWidth = 16384U };

  enum { kInitSavePaperHeight = 32768U };

  enum { kInitSaveReversed = 65536U };

  enum { kInitSaveInColor = 131072U };

  enum { kInitSaveOrientation = 262144U };

  enum { kInitSavePrintCommand = 524288U };

  enum { kInitSavePrinterName = 1048576U };

  enum { kInitSavePrintToFile = 2097152U };

  enum { kInitSaveToFileName = 4194304U };

  enum { kInitSavePageDelay = 8388608U };

  enum { kInitSaveMargins = 16777216U };

  enum { kInitSaveNativeData = 33554432U };

  enum { kInitSavePlexName = 67108864U };

  enum { kInitSaveShrinkToFit = 134217728U };

  enum { kInitSaveScaling = 268435456U };

  enum { kInitSaveColorspace = 536870912U };

  enum { kInitSaveResolutionName = 1073741824U };

  enum { kInitSaveDownloadFonts = 2147483648U };

  enum { kInitSaveAll = 4294967295U };

  enum { kPrintOddPages = 1 };

  enum { kPrintEvenPages = 2 };

  enum { kEnableSelectionRB = 4 };

  enum { kRangeAllPages = 0 };

  enum { kRangeSpecifiedPageRange = 1 };

  enum { kRangeSelection = 2 };

  enum { kRangeFocusFrame = 3 };

  enum { kJustLeft = 0 };

  enum { kJustCenter = 1 };

  enum { kJustRight = 2 };

  /**
   * FrameSet Default Type Constants
   */
  enum { kUseInternalDefault = 0 };

  enum { kUseSettingWhenPossible = 1 };

  /**
   * Page Size Type Constants
   */
  enum { kPaperSizeNativeData = 0 };

  enum { kPaperSizeDefined = 1 };

  /**
   * Page Size Unit Constants
   */
  enum { kPaperSizeInches = 0 };

  enum { kPaperSizeMillimeters = 1 };

  /**
   * Orientation Constants
   */
  enum { kPortraitOrientation = 0 };

  enum { kLandscapeOrientation = 1 };

  /**
   * Print Frame Constants
   */
  enum { kNoFrames = 0 };

  enum { kFramesAsIs = 1 };

  enum { kSelectedFrame = 2 };

  enum { kEachFrameSep = 3 };

  /**
   * How to Enable Frame Set Printing Constants
   */
  enum { kFrameEnableNone = 0 };

  enum { kFrameEnableAll = 1 };

  enum { kFrameEnableAsIsAndEach = 2 };

  /**
   * Set PrintOptions 
   */
  /* void SetPrintOptions (in PRInt32 aType, in PRBool aTurnOnOff); */
  nsresult SetPrintOptions(PRInt32 aType, PRBool aTurnOnOff);

  /**
   * Get PrintOptions 
   */
  /* PRBool GetPrintOptions (in PRInt32 aType); */
  nsresult GetPrintOptions(PRInt32 aType, PRBool *_retval);

  /**
   * Set PrintOptions Bit field
   */
  /* PRInt32 GetPrintOptionsBits (); */
  nsresult GetPrintOptionsBits(PRInt32 *_retval);

  /**
   * Returns W/H in Twips from Paper Size H/W
   */
  /* void GetPageSizeInTwips (out long aWidth, out long aHeight); */
  nsresult GetPageSizeInTwips(PRInt32 *aWidth, PRInt32 *aHeight);

  /**
   * Makes a new copy
   */
  /* nsIPrintSettings clone (); */
  nsresult Clone(nsIPrintSettings *_retval);

  /**
   * Assigns the internal values from the "in" arg to the current object
   */
  /* void assign (in nsIPrintSettings aPS); */
  nsresult Assign(nsIPrintSettings aPS);

  /**
   * Data Members
   */
  /* [noscript] attribute nsIPrintSession printSession; */
  nsresult GetPrintSession(nsIPrintSession  *aPrintSession);
  nsresult SetPrintSession(nsIPrintSession  aPrintSession);

  /* attribute long startPageRange; */
  nsresult GetStartPageRange(PRInt32 *aStartPageRange);
  nsresult SetStartPageRange(PRInt32 aStartPageRange);

  /* attribute long endPageRange; */
  nsresult GetEndPageRange(PRInt32 *aEndPageRange);
  nsresult SetEndPageRange(PRInt32 aEndPageRange);

  /* attribute double marginTop; */
  nsresult GetMarginTop(double *aMarginTop);
  nsresult SetMarginTop(double aMarginTop);

  /* attribute double marginLeft; */
  nsresult GetMarginLeft(double *aMarginLeft);
  nsresult SetMarginLeft(double aMarginLeft);

  /* attribute double marginBottom; */
  nsresult GetMarginBottom(double *aMarginBottom);
  nsresult SetMarginBottom(double aMarginBottom);

  /* attribute double marginRight; */
  nsresult GetMarginRight(double *aMarginRight);
  nsresult SetMarginRight(double aMarginRight);

  /* attribute double scaling; */
  nsresult GetScaling(double *aScaling);
  nsresult SetScaling(double aScaling);

  /* attribute boolean printBGColors; */
  nsresult GetPrintBGColors(PRBool *aPrintBGColors);
  nsresult SetPrintBGColors(PRBool aPrintBGColors);

  /* attribute boolean printBGImages; */
  nsresult GetPrintBGImages(PRBool *aPrintBGImages);
  nsresult SetPrintBGImages(PRBool aPrintBGImages);

  /* attribute short printRange; */
  nsresult GetPrintRange(PRInt16 *aPrintRange);
  nsresult SetPrintRange(PRInt16 aPrintRange);

  /* attribute wstring title; */
  nsresult GetTitle(PRUnichar * *aTitle);
  nsresult SetTitle(PRUnichar * aTitle);

  /* attribute wstring docURL; */
  nsresult GetDocURL(PRUnichar * *aDocURL);
  nsresult SetDocURL(PRUnichar * aDocURL);

  /* attribute wstring headerStrLeft; */
  nsresult GetHeaderStrLeft(PRUnichar * *aHeaderStrLeft);
  nsresult SetHeaderStrLeft(PRUnichar * aHeaderStrLeft);

  /* attribute wstring headerStrCenter; */
  nsresult GetHeaderStrCenter(PRUnichar * *aHeaderStrCenter);
  nsresult SetHeaderStrCenter(PRUnichar * aHeaderStrCenter);

  /* attribute wstring headerStrRight; */
  nsresult GetHeaderStrRight(PRUnichar * *aHeaderStrRight);
  nsresult SetHeaderStrRight(PRUnichar * aHeaderStrRight);

  /* attribute wstring footerStrLeft; */
  nsresult GetFooterStrLeft(PRUnichar * *aFooterStrLeft);
  nsresult SetFooterStrLeft(PRUnichar * aFooterStrLeft);

  /* attribute wstring footerStrCenter; */
  nsresult GetFooterStrCenter(PRUnichar * *aFooterStrCenter);
  nsresult SetFooterStrCenter(PRUnichar * aFooterStrCenter);

  /* attribute wstring footerStrRight; */
  nsresult GetFooterStrRight(PRUnichar * *aFooterStrRight);
  nsresult SetFooterStrRight(PRUnichar * aFooterStrRight);

  /* attribute short howToEnableFrameUI; */
  nsresult GetHowToEnableFrameUI(PRInt16 *aHowToEnableFrameUI);
  nsresult SetHowToEnableFrameUI(PRInt16 aHowToEnableFrameUI);

  /* attribute boolean isCancelled; */
  nsresult GetIsCancelled(PRBool *aIsCancelled);
  nsresult SetIsCancelled(PRBool aIsCancelled);

  /* attribute short printFrameTypeUsage; */
  nsresult GetPrintFrameTypeUsage(PRInt16 *aPrintFrameTypeUsage);
  nsresult SetPrintFrameTypeUsage(PRInt16 aPrintFrameTypeUsage);

  /* attribute short printFrameType; */
  nsresult GetPrintFrameType(PRInt16 *aPrintFrameType);
  nsresult SetPrintFrameType(PRInt16 aPrintFrameType);

  /* attribute boolean printSilent; */
  nsresult GetPrintSilent(PRBool *aPrintSilent);
  nsresult SetPrintSilent(PRBool aPrintSilent);

  /* attribute boolean shrinkToFit; */
  nsresult GetShrinkToFit(PRBool *aShrinkToFit);
  nsresult SetShrinkToFit(PRBool aShrinkToFit);

  /* attribute boolean showPrintProgress; */
  nsresult GetShowPrintProgress(PRBool *aShowPrintProgress);
  nsresult SetShowPrintProgress(PRBool aShowPrintProgress);

  /* attribute wstring paperName; */
  nsresult GetPaperName(PRUnichar * *aPaperName);
  nsresult SetPaperName(PRUnichar * aPaperName);

  /* attribute short paperSizeType; */
  nsresult GetPaperSizeType(PRInt16 *aPaperSizeType);
  nsresult SetPaperSizeType(PRInt16 aPaperSizeType);

  /* attribute short paperData; */
  nsresult GetPaperData(PRInt16 *aPaperData);
  nsresult SetPaperData(PRInt16 aPaperData);

  /* attribute double paperWidth; */
  nsresult GetPaperWidth(double *aPaperWidth);
  nsresult SetPaperWidth(double aPaperWidth);

  /* attribute double paperHeight; */
  nsresult GetPaperHeight(double *aPaperHeight);
  nsresult SetPaperHeight(double aPaperHeight);

  /* attribute short paperSizeUnit; */
  nsresult GetPaperSizeUnit(PRInt16 *aPaperSizeUnit);
  nsresult SetPaperSizeUnit(PRInt16 aPaperSizeUnit);

  /* attribute wstring plexName; */
  nsresult GetPlexName(PRUnichar * *aPlexName);
  nsresult SetPlexName(PRUnichar * aPlexName);

  /* attribute wstring colorspace; */
  nsresult GetColorspace(PRUnichar * *aColorspace);
  nsresult SetColorspace(PRUnichar * aColorspace);

  /* attribute wstring resolutionName; */
  nsresult GetResolutionName(PRUnichar * *aResolutionName);
  nsresult SetResolutionName(PRUnichar * aResolutionName);

  /* attribute boolean downloadFonts; */
  nsresult GetDownloadFonts(PRBool *aDownloadFonts);
  nsresult SetDownloadFonts(PRBool aDownloadFonts);

  /* attribute boolean printReversed; */
  nsresult GetPrintReversed(PRBool *aPrintReversed);
  nsresult SetPrintReversed(PRBool aPrintReversed);

  /* attribute boolean printInColor; */
  nsresult GetPrintInColor(PRBool *aPrintInColor);
  nsresult SetPrintInColor(PRBool aPrintInColor);

  /* attribute long paperSize; */
  nsresult GetPaperSize(PRInt32 *aPaperSize);
  nsresult SetPaperSize(PRInt32 aPaperSize);

  /* attribute long orientation; */
  nsresult GetOrientation(PRInt32 *aOrientation);
  nsresult SetOrientation(PRInt32 aOrientation);

  /* attribute wstring printCommand; */
  nsresult GetPrintCommand(PRUnichar * *aPrintCommand);
  nsresult SetPrintCommand(PRUnichar * aPrintCommand);

  /* attribute long numCopies; */
  nsresult GetNumCopies(PRInt32 *aNumCopies);
  nsresult SetNumCopies(PRInt32 aNumCopies);

  /* attribute wstring printerName; */
  nsresult GetPrinterName(PRUnichar * *aPrinterName);
  nsresult SetPrinterName(PRUnichar * aPrinterName);

  /* attribute boolean printToFile; */
  nsresult GetPrintToFile(PRBool *aPrintToFile);
  nsresult SetPrintToFile(PRBool aPrintToFile);

  /* attribute wstring toFileName; */
  nsresult GetToFileName(PRUnichar * *aToFileName);
  nsresult SetToFileName(PRUnichar * aToFileName);

  /* attribute long printPageDelay; */
  nsresult GetPrintPageDelay(PRInt32 *aPrintPageDelay);
  nsresult SetPrintPageDelay(PRInt32 aPrintPageDelay);

  /**
   * This attribute tracks whether the PS has been initialized 
   * from a printer specified by the "printerName" attr. 
   * If a different name is set into the "printerName" 
   * attribute than the one it was initialized with the PS
   * will then get intialized from that printer.
   */
  /* attribute boolean isInitializedFromPrinter; */
  nsresult GetIsInitializedFromPrinter(PRBool *aIsInitializedFromPrinter);
  nsresult SetIsInitializedFromPrinter(PRBool aIsInitializedFromPrinter);

  /**
   * This attribute tracks whether the PS has been initialized 
   * from prefs. If a different name is set into the "printerName" 
   * attribute than the one it was initialized with the PS
   * will then get intialized from prefs again.
   */
  /* attribute boolean isInitializedFromPrefs; */
  nsresult GetIsInitializedFromPrefs(PRBool *aIsInitializedFromPrefs);
  nsresult SetIsInitializedFromPrefs(PRBool aIsInitializedFromPrefs);

  /* [noscript] void SetMarginInTwips (in nsNativeMarginRef aMargin); */
  nsresult SetMarginInTwips(nsMargin * aMargin);

  /* [noscript] void GetMarginInTwips (in nsNativeMarginRef aMargin); */
  nsresult GetMarginInTwips(nsMargin * aMargin);

}

