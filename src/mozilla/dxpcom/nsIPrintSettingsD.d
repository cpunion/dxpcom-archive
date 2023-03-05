/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrintSettings.idl
 */

module mozilla.dxpcom.nsIPrintSettingsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPrintSettings;


public import mozilla.dxpcom.nsIPrintSettingsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIPrintSession;

public import mozilla.dxpcom.nsIPrintSessionD;


/* starting wrapper class:    nsIPrintSettings */
/**
 * Simplified graphics interface for JS rendering.
 *
 * @status UNDER_REVIEW
 */
class nsIPrintSettingsD : public nsISupportsD {

  static const nsIID IID = NS_IPRINTSETTINGS_IID;


  alias nsIPrintSettings InnerType;

  this(nsIPrintSettings intr){
    super(intr);
    this.inner = intr;
  }

  nsIPrintSettings opCast() {
    return inner;
  }

  void opAssign(nsIPrintSettings value) {
    inner = value;
  }

  /**
   * PrintSettings to be Saved Navigation Constants
   */
  enum { kInitSaveOddEvenPages = 1U }

  enum { kInitSaveHeaderLeft = 2U }

  enum { kInitSaveHeaderCenter = 4U }

  enum { kInitSaveHeaderRight = 8U }

  enum { kInitSaveFooterLeft = 16U }

  enum { kInitSaveFooterCenter = 32U }

  enum { kInitSaveFooterRight = 64U }

  enum { kInitSaveBGColors = 128U }

  enum { kInitSaveBGImages = 256U }

  enum { kInitSavePaperSize = 512U }

  enum { kInitSavePaperName = 1024U }

  enum { kInitSavePaperSizeUnit = 2048U }

  enum { kInitSavePaperSizeType = 4096U }

  enum { kInitSavePaperData = 8192U }

  enum { kInitSavePaperWidth = 16384U }

  enum { kInitSavePaperHeight = 32768U }

  enum { kInitSaveReversed = 65536U }

  enum { kInitSaveInColor = 131072U }

  enum { kInitSaveOrientation = 262144U }

  enum { kInitSavePrintCommand = 524288U }

  enum { kInitSavePrinterName = 1048576U }

  enum { kInitSavePrintToFile = 2097152U }

  enum { kInitSaveToFileName = 4194304U }

  enum { kInitSavePageDelay = 8388608U }

  enum { kInitSaveMargins = 16777216U }

  enum { kInitSaveNativeData = 33554432U }

  enum { kInitSavePlexName = 67108864U }

  enum { kInitSaveShrinkToFit = 134217728U }

  enum { kInitSaveScaling = 268435456U }

  enum { kInitSaveColorspace = 536870912U }

  enum { kInitSaveResolutionName = 1073741824U }

  enum { kInitSaveDownloadFonts = 2147483648U }

  enum { kInitSaveAll = 4294967295U }

  enum { kPrintOddPages = 1 }

  enum { kPrintEvenPages = 2 }

  enum { kEnableSelectionRB = 4 }

  enum { kRangeAllPages = 0 }

  enum { kRangeSpecifiedPageRange = 1 }

  enum { kRangeSelection = 2 }

  enum { kRangeFocusFrame = 3 }

  enum { kJustLeft = 0 }

  enum { kJustCenter = 1 }

  enum { kJustRight = 2 }

  /**
   * FrameSet Default Type Constants
   */
  enum { kUseInternalDefault = 0 }

  enum { kUseSettingWhenPossible = 1 }

  /**
   * Page Size Type Constants
   */
  enum { kPaperSizeNativeData = 0 }

  enum { kPaperSizeDefined = 1 }

  /**
   * Page Size Unit Constants
   */
  enum { kPaperSizeInches = 0 }

  enum { kPaperSizeMillimeters = 1 }

  /**
   * Orientation Constants
   */
  enum { kPortraitOrientation = 0 }

  enum { kLandscapeOrientation = 1 }

  /**
   * Print Frame Constants
   */
  enum { kNoFrames = 0 }

  enum { kFramesAsIs = 1 }

  enum { kSelectedFrame = 2 }

  enum { kEachFrameSep = 3 }

  /**
   * How to Enable Frame Set Printing Constants
   */
  enum { kFrameEnableNone = 0 }

  enum { kFrameEnableAll = 1 }

  enum { kFrameEnableAsIsAndEach = 2 }

  /**
   * Set PrintOptions 
   */
  /* void SetPrintOptions (in PRInt32 aType, in PRBool aTurnOnOff); */
  void SetPrintOptions(PRInt32 aType, PRBool aTurnOnOff){
    nsresult __result = inner.SetPrintOptions(aType, aTurnOnOff);
    CheckException(__result);
  }

  /**
   * Get PrintOptions 
   */
  /* PRBool GetPrintOptions (in PRInt32 aType); */
  PRBool GetPrintOptions(PRInt32 aType){
    PRBool _retval;
    nsresult __result = inner.GetPrintOptions(aType, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Set PrintOptions Bit field
   */
  /* PRInt32 GetPrintOptionsBits (); */
  PRInt32 GetPrintOptionsBits(){
    PRInt32 _retval;
    nsresult __result = inner.GetPrintOptionsBits(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Returns W/H in Twips from Paper Size H/W
   */
  /* void GetPageSizeInTwips (out long aWidth, out long aHeight); */
  void GetPageSizeInTwips(out PRInt32 aWidth, out PRInt32 aHeight){
    nsresult __result = inner.GetPageSizeInTwips(&aWidth, &aHeight);
    CheckException(__result);
  }

  /**
   * Makes a new copy
   */
  /* nsIPrintSettings clone (); */
  nsIPrintSettingsD  Clone(){
    nsIPrintSettings _retval;
    nsresult __result = inner.Clone(&_retval);
    CheckException(__result);
    return new nsIPrintSettingsD(_retval);
  }

  /**
   * Assigns the internal values from the "in" arg to the current object
   */
  /* void assign (in nsIPrintSettings aPS); */
  void Assign(nsIPrintSettingsD aPS){
    nsresult __result = inner.Assign(aPS ? cast(nsIPrintSettings)aPS : null);
    CheckException(__result);
  }

  /**
   * Data Members
   */
  /* [noscript] attribute nsIPrintSession printSession; */
  nsIPrintSessionD  PrintSession(){
    nsIPrintSession value;
    nsresult __result = inner.GetPrintSession(&value);
    CheckException(__result);
    return new nsIPrintSessionD(value);
  }
  void PrintSession(nsIPrintSessionD  aPrintSession){
    nsIPrintSession value;
    nsresult __result = inner.SetPrintSession(value);
    CheckException(__result);
  }

  /* attribute long startPageRange; */
  PRInt32 StartPageRange(){
    PRInt32 value;
    nsresult __result = inner.GetStartPageRange(&value);
    CheckException(__result);
    return value;
  }
  void StartPageRange(PRInt32 aStartPageRange){
    nsresult __result = inner.SetStartPageRange(aStartPageRange);
    CheckException(__result);
  }

  /* attribute long endPageRange; */
  PRInt32 EndPageRange(){
    PRInt32 value;
    nsresult __result = inner.GetEndPageRange(&value);
    CheckException(__result);
    return value;
  }
  void EndPageRange(PRInt32 aEndPageRange){
    nsresult __result = inner.SetEndPageRange(aEndPageRange);
    CheckException(__result);
  }

  /* attribute double marginTop; */
  double MarginTop(){
    double value;
    nsresult __result = inner.GetMarginTop(&value);
    CheckException(__result);
    return value;
  }
  void MarginTop(double aMarginTop){
    nsresult __result = inner.SetMarginTop(aMarginTop);
    CheckException(__result);
  }

  /* attribute double marginLeft; */
  double MarginLeft(){
    double value;
    nsresult __result = inner.GetMarginLeft(&value);
    CheckException(__result);
    return value;
  }
  void MarginLeft(double aMarginLeft){
    nsresult __result = inner.SetMarginLeft(aMarginLeft);
    CheckException(__result);
  }

  /* attribute double marginBottom; */
  double MarginBottom(){
    double value;
    nsresult __result = inner.GetMarginBottom(&value);
    CheckException(__result);
    return value;
  }
  void MarginBottom(double aMarginBottom){
    nsresult __result = inner.SetMarginBottom(aMarginBottom);
    CheckException(__result);
  }

  /* attribute double marginRight; */
  double MarginRight(){
    double value;
    nsresult __result = inner.GetMarginRight(&value);
    CheckException(__result);
    return value;
  }
  void MarginRight(double aMarginRight){
    nsresult __result = inner.SetMarginRight(aMarginRight);
    CheckException(__result);
  }

  /* attribute double scaling; */
  double Scaling(){
    double value;
    nsresult __result = inner.GetScaling(&value);
    CheckException(__result);
    return value;
  }
  void Scaling(double aScaling){
    nsresult __result = inner.SetScaling(aScaling);
    CheckException(__result);
  }

  /* attribute boolean printBGColors; */
  PRBool PrintBGColors(){
    PRBool value;
    nsresult __result = inner.GetPrintBGColors(&value);
    CheckException(__result);
    return value;
  }
  void PrintBGColors(PRBool aPrintBGColors){
    nsresult __result = inner.SetPrintBGColors(aPrintBGColors);
    CheckException(__result);
  }

  /* attribute boolean printBGImages; */
  PRBool PrintBGImages(){
    PRBool value;
    nsresult __result = inner.GetPrintBGImages(&value);
    CheckException(__result);
    return value;
  }
  void PrintBGImages(PRBool aPrintBGImages){
    nsresult __result = inner.SetPrintBGImages(aPrintBGImages);
    CheckException(__result);
  }

  /* attribute short printRange; */
  PRInt16 PrintRange(){
    PRInt16 value;
    nsresult __result = inner.GetPrintRange(&value);
    CheckException(__result);
    return value;
  }
  void PrintRange(PRInt16 aPrintRange){
    nsresult __result = inner.SetPrintRange(aPrintRange);
    CheckException(__result);
  }

  /* attribute wstring title; */
  PRUnichar* Title(){
    PRUnichar* value;
    nsresult __result = inner.GetTitle(&value);
    CheckException(__result);
    return value;
  }
  void Title(PRUnichar* aTitle){
    nsresult __result = inner.SetTitle(aTitle);
    CheckException(__result);
  }

  /* attribute wstring docURL; */
  PRUnichar* DocURL(){
    PRUnichar* value;
    nsresult __result = inner.GetDocURL(&value);
    CheckException(__result);
    return value;
  }
  void DocURL(PRUnichar* aDocURL){
    nsresult __result = inner.SetDocURL(aDocURL);
    CheckException(__result);
  }

  /* attribute wstring headerStrLeft; */
  PRUnichar* HeaderStrLeft(){
    PRUnichar* value;
    nsresult __result = inner.GetHeaderStrLeft(&value);
    CheckException(__result);
    return value;
  }
  void HeaderStrLeft(PRUnichar* aHeaderStrLeft){
    nsresult __result = inner.SetHeaderStrLeft(aHeaderStrLeft);
    CheckException(__result);
  }

  /* attribute wstring headerStrCenter; */
  PRUnichar* HeaderStrCenter(){
    PRUnichar* value;
    nsresult __result = inner.GetHeaderStrCenter(&value);
    CheckException(__result);
    return value;
  }
  void HeaderStrCenter(PRUnichar* aHeaderStrCenter){
    nsresult __result = inner.SetHeaderStrCenter(aHeaderStrCenter);
    CheckException(__result);
  }

  /* attribute wstring headerStrRight; */
  PRUnichar* HeaderStrRight(){
    PRUnichar* value;
    nsresult __result = inner.GetHeaderStrRight(&value);
    CheckException(__result);
    return value;
  }
  void HeaderStrRight(PRUnichar* aHeaderStrRight){
    nsresult __result = inner.SetHeaderStrRight(aHeaderStrRight);
    CheckException(__result);
  }

  /* attribute wstring footerStrLeft; */
  PRUnichar* FooterStrLeft(){
    PRUnichar* value;
    nsresult __result = inner.GetFooterStrLeft(&value);
    CheckException(__result);
    return value;
  }
  void FooterStrLeft(PRUnichar* aFooterStrLeft){
    nsresult __result = inner.SetFooterStrLeft(aFooterStrLeft);
    CheckException(__result);
  }

  /* attribute wstring footerStrCenter; */
  PRUnichar* FooterStrCenter(){
    PRUnichar* value;
    nsresult __result = inner.GetFooterStrCenter(&value);
    CheckException(__result);
    return value;
  }
  void FooterStrCenter(PRUnichar* aFooterStrCenter){
    nsresult __result = inner.SetFooterStrCenter(aFooterStrCenter);
    CheckException(__result);
  }

  /* attribute wstring footerStrRight; */
  PRUnichar* FooterStrRight(){
    PRUnichar* value;
    nsresult __result = inner.GetFooterStrRight(&value);
    CheckException(__result);
    return value;
  }
  void FooterStrRight(PRUnichar* aFooterStrRight){
    nsresult __result = inner.SetFooterStrRight(aFooterStrRight);
    CheckException(__result);
  }

  /* attribute short howToEnableFrameUI; */
  PRInt16 HowToEnableFrameUI(){
    PRInt16 value;
    nsresult __result = inner.GetHowToEnableFrameUI(&value);
    CheckException(__result);
    return value;
  }
  void HowToEnableFrameUI(PRInt16 aHowToEnableFrameUI){
    nsresult __result = inner.SetHowToEnableFrameUI(aHowToEnableFrameUI);
    CheckException(__result);
  }

  /* attribute boolean isCancelled; */
  PRBool IsCancelled(){
    PRBool value;
    nsresult __result = inner.GetIsCancelled(&value);
    CheckException(__result);
    return value;
  }
  void IsCancelled(PRBool aIsCancelled){
    nsresult __result = inner.SetIsCancelled(aIsCancelled);
    CheckException(__result);
  }

  /* attribute short printFrameTypeUsage; */
  PRInt16 PrintFrameTypeUsage(){
    PRInt16 value;
    nsresult __result = inner.GetPrintFrameTypeUsage(&value);
    CheckException(__result);
    return value;
  }
  void PrintFrameTypeUsage(PRInt16 aPrintFrameTypeUsage){
    nsresult __result = inner.SetPrintFrameTypeUsage(aPrintFrameTypeUsage);
    CheckException(__result);
  }

  /* attribute short printFrameType; */
  PRInt16 PrintFrameType(){
    PRInt16 value;
    nsresult __result = inner.GetPrintFrameType(&value);
    CheckException(__result);
    return value;
  }
  void PrintFrameType(PRInt16 aPrintFrameType){
    nsresult __result = inner.SetPrintFrameType(aPrintFrameType);
    CheckException(__result);
  }

  /* attribute boolean printSilent; */
  PRBool PrintSilent(){
    PRBool value;
    nsresult __result = inner.GetPrintSilent(&value);
    CheckException(__result);
    return value;
  }
  void PrintSilent(PRBool aPrintSilent){
    nsresult __result = inner.SetPrintSilent(aPrintSilent);
    CheckException(__result);
  }

  /* attribute boolean shrinkToFit; */
  PRBool ShrinkToFit(){
    PRBool value;
    nsresult __result = inner.GetShrinkToFit(&value);
    CheckException(__result);
    return value;
  }
  void ShrinkToFit(PRBool aShrinkToFit){
    nsresult __result = inner.SetShrinkToFit(aShrinkToFit);
    CheckException(__result);
  }

  /* attribute boolean showPrintProgress; */
  PRBool ShowPrintProgress(){
    PRBool value;
    nsresult __result = inner.GetShowPrintProgress(&value);
    CheckException(__result);
    return value;
  }
  void ShowPrintProgress(PRBool aShowPrintProgress){
    nsresult __result = inner.SetShowPrintProgress(aShowPrintProgress);
    CheckException(__result);
  }

  /* attribute wstring paperName; */
  PRUnichar* PaperName(){
    PRUnichar* value;
    nsresult __result = inner.GetPaperName(&value);
    CheckException(__result);
    return value;
  }
  void PaperName(PRUnichar* aPaperName){
    nsresult __result = inner.SetPaperName(aPaperName);
    CheckException(__result);
  }

  /* attribute short paperSizeType; */
  PRInt16 PaperSizeType(){
    PRInt16 value;
    nsresult __result = inner.GetPaperSizeType(&value);
    CheckException(__result);
    return value;
  }
  void PaperSizeType(PRInt16 aPaperSizeType){
    nsresult __result = inner.SetPaperSizeType(aPaperSizeType);
    CheckException(__result);
  }

  /* attribute short paperData; */
  PRInt16 PaperData(){
    PRInt16 value;
    nsresult __result = inner.GetPaperData(&value);
    CheckException(__result);
    return value;
  }
  void PaperData(PRInt16 aPaperData){
    nsresult __result = inner.SetPaperData(aPaperData);
    CheckException(__result);
  }

  /* attribute double paperWidth; */
  double PaperWidth(){
    double value;
    nsresult __result = inner.GetPaperWidth(&value);
    CheckException(__result);
    return value;
  }
  void PaperWidth(double aPaperWidth){
    nsresult __result = inner.SetPaperWidth(aPaperWidth);
    CheckException(__result);
  }

  /* attribute double paperHeight; */
  double PaperHeight(){
    double value;
    nsresult __result = inner.GetPaperHeight(&value);
    CheckException(__result);
    return value;
  }
  void PaperHeight(double aPaperHeight){
    nsresult __result = inner.SetPaperHeight(aPaperHeight);
    CheckException(__result);
  }

  /* attribute short paperSizeUnit; */
  PRInt16 PaperSizeUnit(){
    PRInt16 value;
    nsresult __result = inner.GetPaperSizeUnit(&value);
    CheckException(__result);
    return value;
  }
  void PaperSizeUnit(PRInt16 aPaperSizeUnit){
    nsresult __result = inner.SetPaperSizeUnit(aPaperSizeUnit);
    CheckException(__result);
  }

  /* attribute wstring plexName; */
  PRUnichar* PlexName(){
    PRUnichar* value;
    nsresult __result = inner.GetPlexName(&value);
    CheckException(__result);
    return value;
  }
  void PlexName(PRUnichar* aPlexName){
    nsresult __result = inner.SetPlexName(aPlexName);
    CheckException(__result);
  }

  /* attribute wstring colorspace; */
  PRUnichar* Colorspace(){
    PRUnichar* value;
    nsresult __result = inner.GetColorspace(&value);
    CheckException(__result);
    return value;
  }
  void Colorspace(PRUnichar* aColorspace){
    nsresult __result = inner.SetColorspace(aColorspace);
    CheckException(__result);
  }

  /* attribute wstring resolutionName; */
  PRUnichar* ResolutionName(){
    PRUnichar* value;
    nsresult __result = inner.GetResolutionName(&value);
    CheckException(__result);
    return value;
  }
  void ResolutionName(PRUnichar* aResolutionName){
    nsresult __result = inner.SetResolutionName(aResolutionName);
    CheckException(__result);
  }

  /* attribute boolean downloadFonts; */
  PRBool DownloadFonts(){
    PRBool value;
    nsresult __result = inner.GetDownloadFonts(&value);
    CheckException(__result);
    return value;
  }
  void DownloadFonts(PRBool aDownloadFonts){
    nsresult __result = inner.SetDownloadFonts(aDownloadFonts);
    CheckException(__result);
  }

  /* attribute boolean printReversed; */
  PRBool PrintReversed(){
    PRBool value;
    nsresult __result = inner.GetPrintReversed(&value);
    CheckException(__result);
    return value;
  }
  void PrintReversed(PRBool aPrintReversed){
    nsresult __result = inner.SetPrintReversed(aPrintReversed);
    CheckException(__result);
  }

  /* attribute boolean printInColor; */
  PRBool PrintInColor(){
    PRBool value;
    nsresult __result = inner.GetPrintInColor(&value);
    CheckException(__result);
    return value;
  }
  void PrintInColor(PRBool aPrintInColor){
    nsresult __result = inner.SetPrintInColor(aPrintInColor);
    CheckException(__result);
  }

  /* attribute long paperSize; */
  PRInt32 PaperSize(){
    PRInt32 value;
    nsresult __result = inner.GetPaperSize(&value);
    CheckException(__result);
    return value;
  }
  void PaperSize(PRInt32 aPaperSize){
    nsresult __result = inner.SetPaperSize(aPaperSize);
    CheckException(__result);
  }

  /* attribute long orientation; */
  PRInt32 Orientation(){
    PRInt32 value;
    nsresult __result = inner.GetOrientation(&value);
    CheckException(__result);
    return value;
  }
  void Orientation(PRInt32 aOrientation){
    nsresult __result = inner.SetOrientation(aOrientation);
    CheckException(__result);
  }

  /* attribute wstring printCommand; */
  PRUnichar* PrintCommand(){
    PRUnichar* value;
    nsresult __result = inner.GetPrintCommand(&value);
    CheckException(__result);
    return value;
  }
  void PrintCommand(PRUnichar* aPrintCommand){
    nsresult __result = inner.SetPrintCommand(aPrintCommand);
    CheckException(__result);
  }

  /* attribute long numCopies; */
  PRInt32 NumCopies(){
    PRInt32 value;
    nsresult __result = inner.GetNumCopies(&value);
    CheckException(__result);
    return value;
  }
  void NumCopies(PRInt32 aNumCopies){
    nsresult __result = inner.SetNumCopies(aNumCopies);
    CheckException(__result);
  }

  /* attribute wstring printerName; */
  PRUnichar* PrinterName(){
    PRUnichar* value;
    nsresult __result = inner.GetPrinterName(&value);
    CheckException(__result);
    return value;
  }
  void PrinterName(PRUnichar* aPrinterName){
    nsresult __result = inner.SetPrinterName(aPrinterName);
    CheckException(__result);
  }

  /* attribute boolean printToFile; */
  PRBool PrintToFile(){
    PRBool value;
    nsresult __result = inner.GetPrintToFile(&value);
    CheckException(__result);
    return value;
  }
  void PrintToFile(PRBool aPrintToFile){
    nsresult __result = inner.SetPrintToFile(aPrintToFile);
    CheckException(__result);
  }

  /* attribute wstring toFileName; */
  PRUnichar* ToFileName(){
    PRUnichar* value;
    nsresult __result = inner.GetToFileName(&value);
    CheckException(__result);
    return value;
  }
  void ToFileName(PRUnichar* aToFileName){
    nsresult __result = inner.SetToFileName(aToFileName);
    CheckException(__result);
  }

  /* attribute long printPageDelay; */
  PRInt32 PrintPageDelay(){
    PRInt32 value;
    nsresult __result = inner.GetPrintPageDelay(&value);
    CheckException(__result);
    return value;
  }
  void PrintPageDelay(PRInt32 aPrintPageDelay){
    nsresult __result = inner.SetPrintPageDelay(aPrintPageDelay);
    CheckException(__result);
  }

  /**
   * This attribute tracks whether the PS has been initialized 
   * from a printer specified by the "printerName" attr. 
   * If a different name is set into the "printerName" 
   * attribute than the one it was initialized with the PS
   * will then get intialized from that printer.
   */
  /* attribute boolean isInitializedFromPrinter; */
  PRBool IsInitializedFromPrinter(){
    PRBool value;
    nsresult __result = inner.GetIsInitializedFromPrinter(&value);
    CheckException(__result);
    return value;
  }
  void IsInitializedFromPrinter(PRBool aIsInitializedFromPrinter){
    nsresult __result = inner.SetIsInitializedFromPrinter(aIsInitializedFromPrinter);
    CheckException(__result);
  }

  /**
   * This attribute tracks whether the PS has been initialized 
   * from prefs. If a different name is set into the "printerName" 
   * attribute than the one it was initialized with the PS
   * will then get intialized from prefs again.
   */
  /* attribute boolean isInitializedFromPrefs; */
  PRBool IsInitializedFromPrefs(){
    PRBool value;
    nsresult __result = inner.GetIsInitializedFromPrefs(&value);
    CheckException(__result);
    return value;
  }
  void IsInitializedFromPrefs(PRBool aIsInitializedFromPrefs){
    nsresult __result = inner.SetIsInitializedFromPrefs(aIsInitializedFromPrefs);
    CheckException(__result);
  }

  /* [noscript] void SetMarginInTwips (in nsNativeMarginRef aMargin); */
  void SetMarginInTwips(nsMargin * aMargin){
    nsresult __result = inner.SetMarginInTwips(aMargin);
    CheckException(__result);
  }

  /* [noscript] void GetMarginInTwips (in nsNativeMarginRef aMargin); */
  void GetMarginInTwips(nsMargin * aMargin){
    nsresult __result = inner.GetMarginInTwips(aMargin);
    CheckException(__result);
  }

private:
  nsIPrintSettings inner;

}

