/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebBrowserPrint.idl
 */

module mozilla.dxpcom.nsIWebBrowserPrintD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWebBrowserPrint;


public import mozilla.dxpcom.nsIWebBrowserPrintD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.dxpcom.nsIDOMWindowD;

public import mozilla.xpcom.nsIPrintSettings;

public import mozilla.dxpcom.nsIPrintSettingsD;

public import mozilla.xpcom.nsIWebProgressListener;

public import mozilla.dxpcom.nsIWebProgressListenerD;


/* starting wrapper class:    nsIWebBrowserPrint */
/**
 * nsIWebBrowserPrint corresponds to the main interface
 * for printing an embedded Gecko web browser window/document
 *
 * @status FROZEN
 */
class nsIWebBrowserPrintD : public nsISupportsD {

  static const nsIID IID = NS_IWEBBROWSERPRINT_IID;


  alias nsIWebBrowserPrint InnerType;

  this(nsIWebBrowserPrint intr){
    super(intr);
    this.inner = intr;
  }

  nsIWebBrowserPrint opCast() {
    return inner;
  }

  void opAssign(nsIWebBrowserPrint value) {
    inner = value;
  }

  /**
   * PrintPreview Navigation Constants
   */
  enum { PRINTPREVIEW_GOTO_PAGENUM = 0 }

  enum { PRINTPREVIEW_PREV_PAGE = 1 }

  enum { PRINTPREVIEW_NEXT_PAGE = 2 }

  enum { PRINTPREVIEW_HOME = 3 }

  enum { PRINTPREVIEW_END = 4 }

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
   * Returns a pointer to the PrintSettings object that
   * that was passed into either "print" or "print preview"
   *
   * This enables any consumers of the interface to have access
   * to the "current" PrintSetting at later points in the execution
   */
  /* readonly attribute nsIPrintSettings currentPrintSettings; */
  nsIPrintSettingsD  CurrentPrintSettings(){
    nsIPrintSettings value;
    nsresult __result = inner.GetCurrentPrintSettings(&value);
    CheckException(__result);
    return new nsIPrintSettingsD(value);
  }

  /**
   * Returns a pointer to the current child DOMWindow
   * that is being print previewed. (FrameSet Frames)
   *
   * Returns null if parent document is not a frameset or the entire FrameSet 
   * document is being print previewed
   *
   * This enables any consumers of the interface to have access
   * to the "current" child DOMWindow at later points in the execution
   */
  /* readonly attribute nsIDOMWindow currentChildDOMWindow; */
  nsIDOMWindowD  CurrentChildDOMWindow(){
    nsIDOMWindow value;
    nsresult __result = inner.GetCurrentChildDOMWindow(&value);
    CheckException(__result);
    return new nsIDOMWindowD(value);
  }

  /**
   * Returns whether it is in Print mode
   */
  /* readonly attribute boolean doingPrint; */
  PRBool DoingPrint(){
    PRBool value;
    nsresult __result = inner.GetDoingPrint(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Returns whether it is in Print Preview mode
   */
  /* readonly attribute boolean doingPrintPreview; */
  PRBool DoingPrintPreview(){
    PRBool value;
    nsresult __result = inner.GetDoingPrintPreview(&value);
    CheckException(__result);
    return value;
  }

  /**
   * This returns whether the current document is a frameset document
   */
  /* readonly attribute boolean isFramesetDocument; */
  PRBool IsFramesetDocument(){
    PRBool value;
    nsresult __result = inner.GetIsFramesetDocument(&value);
    CheckException(__result);
    return value;
  }

  /**
   * This returns whether the current document is a frameset document
   */
  /* readonly attribute boolean isFramesetFrameSelected; */
  PRBool IsFramesetFrameSelected(){
    PRBool value;
    nsresult __result = inner.GetIsFramesetFrameSelected(&value);
    CheckException(__result);
    return value;
  }

  /**
   * This returns whether there is an IFrame selected
   */
  /* readonly attribute boolean isIFrameSelected; */
  PRBool IsIFrameSelected(){
    PRBool value;
    nsresult __result = inner.GetIsIFrameSelected(&value);
    CheckException(__result);
    return value;
  }

  /**
   * This returns whether there is a "range" selection
   */
  /* readonly attribute boolean isRangeSelection; */
  PRBool IsRangeSelection(){
    PRBool value;
    nsresult __result = inner.GetIsRangeSelection(&value);
    CheckException(__result);
    return value;
  }

  /**
   * This returns the total number of pages for the Print Preview
   */
  /* readonly attribute long printPreviewNumPages; */
  PRInt32 PrintPreviewNumPages(){
    PRInt32 value;
    nsresult __result = inner.GetPrintPreviewNumPages(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Print the specified DOM window
   *
   * @param aThePrintSettings - Printer Settings for the print job, if aThePrintSettings is null
   *                            then the global PS will be used.
   * @param aWPListener - is updated during the print
   * @return void
   */
  /* void print (in nsIPrintSettings aThePrintSettings, in nsIWebProgressListener aWPListener); */
  void Print(nsIPrintSettingsD aThePrintSettings, nsIWebProgressListenerD aWPListener){
    nsresult __result = inner.Print(aThePrintSettings ? cast(nsIPrintSettings)aThePrintSettings : null, aWPListener ? cast(nsIWebProgressListener)aWPListener : null);
    CheckException(__result);
  }

  /**
   * Print Preview the specified DOM window
   *
   * @param aThePrintSettings - Printer Settings for the print preview, if aThePrintSettings is null
   *                            then the global PS will be used.
   * @param aChildDOMWin - DOM Window of the child document to be PP (FrameSet frames)
   * @param aWPListener - is updated during the printpreview
   * @return void
   */
  /* void printPreview (in nsIPrintSettings aThePrintSettings, in nsIDOMWindow aChildDOMWin, in nsIWebProgressListener aWPListener); */
  void PrintPreview(nsIPrintSettingsD aThePrintSettings, nsIDOMWindowD aChildDOMWin, nsIWebProgressListenerD aWPListener){
    nsresult __result = inner.PrintPreview(aThePrintSettings ? cast(nsIPrintSettings)aThePrintSettings : null, aChildDOMWin ? cast(nsIDOMWindow)aChildDOMWin : null, aWPListener ? cast(nsIWebProgressListener)aWPListener : null);
    CheckException(__result);
  }

  /**
   * Print Preview - Navigates within the window
   *
   * @param aNavType - navigation enum
   * @param aPageNum - page num to navigate to when aNavType = ePrintPreviewGoToPageNum
   * @return void
   */
  /* void printPreviewNavigate (in short aNavType, in long aPageNum); */
  void PrintPreviewNavigate(PRInt16 aNavType, PRInt32 aPageNum){
    nsresult __result = inner.PrintPreviewNavigate(aNavType, aPageNum);
    CheckException(__result);
  }

  /**
   * Cancels the current print 
   * @return void
   */
  /* void cancel (); */
  void Cancel(){
    nsresult __result = inner.Cancel();
    CheckException(__result);
  }

  /**
   * Returns an array of the names of all documents names (Title or URL)
   * and sub-documents. This will return a single item if the attr "isFramesetDocument" is false
   * and may return any number of items is "isFramesetDocument" is true
   *
   * @param  aCount - returns number of printers returned
   * @param  aResult - returns array of names
   * @return void
   */
  /* void enumerateDocumentNames (out PRUint32 aCount, [array, size_is (aCount), retval] out wstring aResult); */
  void EnumerateDocumentNames(out PRUint32 aCount, out PRUnichar**aResult){
    nsresult __result = inner.EnumerateDocumentNames(&aCount, &aResult);
    CheckException(__result);
  }

  /**
   * This exists PrintPreview mode and returns browser window to galley mode
   * @return void
   */
  /* void exitPrintPreview (); */
  void ExitPrintPreview(){
    nsresult __result = inner.ExitPrintPreview();
    CheckException(__result);
  }

private:
  nsIWebBrowserPrint inner;

}

