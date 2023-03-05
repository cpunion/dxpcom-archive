/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebBrowserPrint.idl
 */

module mozilla.xpcom.nsIWebBrowserPrint;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */

public import mozilla.xpcom.nsIPrintSettings; /* forward declaration */

public import mozilla.xpcom.nsIWebProgressListener; /* forward declaration */


/* starting interface:    nsIWebBrowserPrint */
const char[] NS_IWEBBROWSERPRINT_IID_STR = "9a7ca4b0-fbba-11d4-a869-00105a183419";

const nsIID NS_IWEBBROWSERPRINT_IID= 
  {0x9a7ca4b0, 0xfbba, 0x11d4, 
    [ 0xa8, 0x69, 0x00, 0x10, 0x5a, 0x18, 0x34, 0x19 ]};

/**
 * nsIWebBrowserPrint corresponds to the main interface
 * for printing an embedded Gecko web browser window/document
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIWebBrowserPrint : nsISupports {
  static const char[] IID_STR = NS_IWEBBROWSERPRINT_IID_STR;
  static const nsIID IID = NS_IWEBBROWSERPRINT_IID;

  /**
   * PrintPreview Navigation Constants
   */
  enum { PRINTPREVIEW_GOTO_PAGENUM = 0 };

  enum { PRINTPREVIEW_PREV_PAGE = 1 };

  enum { PRINTPREVIEW_NEXT_PAGE = 2 };

  enum { PRINTPREVIEW_HOME = 3 };

  enum { PRINTPREVIEW_END = 4 };

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
   * Returns a pointer to the PrintSettings object that
   * that was passed into either "print" or "print preview"
   *
   * This enables any consumers of the interface to have access
   * to the "current" PrintSetting at later points in the execution
   */
  /* readonly attribute nsIPrintSettings currentPrintSettings; */
  nsresult GetCurrentPrintSettings(nsIPrintSettings  *aCurrentPrintSettings);

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
  nsresult GetCurrentChildDOMWindow(nsIDOMWindow  *aCurrentChildDOMWindow);

  /**
   * Returns whether it is in Print mode
   */
  /* readonly attribute boolean doingPrint; */
  nsresult GetDoingPrint(PRBool *aDoingPrint);

  /**
   * Returns whether it is in Print Preview mode
   */
  /* readonly attribute boolean doingPrintPreview; */
  nsresult GetDoingPrintPreview(PRBool *aDoingPrintPreview);

  /**
   * This returns whether the current document is a frameset document
   */
  /* readonly attribute boolean isFramesetDocument; */
  nsresult GetIsFramesetDocument(PRBool *aIsFramesetDocument);

  /**
   * This returns whether the current document is a frameset document
   */
  /* readonly attribute boolean isFramesetFrameSelected; */
  nsresult GetIsFramesetFrameSelected(PRBool *aIsFramesetFrameSelected);

  /**
   * This returns whether there is an IFrame selected
   */
  /* readonly attribute boolean isIFrameSelected; */
  nsresult GetIsIFrameSelected(PRBool *aIsIFrameSelected);

  /**
   * This returns whether there is a "range" selection
   */
  /* readonly attribute boolean isRangeSelection; */
  nsresult GetIsRangeSelection(PRBool *aIsRangeSelection);

  /**
   * This returns the total number of pages for the Print Preview
   */
  /* readonly attribute long printPreviewNumPages; */
  nsresult GetPrintPreviewNumPages(PRInt32 *aPrintPreviewNumPages);

  /**
   * Print the specified DOM window
   *
   * @param aThePrintSettings - Printer Settings for the print job, if aThePrintSettings is null
   *                            then the global PS will be used.
   * @param aWPListener - is updated during the print
   * @return void
   */
  /* void print (in nsIPrintSettings aThePrintSettings, in nsIWebProgressListener aWPListener); */
  nsresult Print(nsIPrintSettings aThePrintSettings, nsIWebProgressListener aWPListener);

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
  nsresult PrintPreview(nsIPrintSettings aThePrintSettings, nsIDOMWindow aChildDOMWin, nsIWebProgressListener aWPListener);

  /**
   * Print Preview - Navigates within the window
   *
   * @param aNavType - navigation enum
   * @param aPageNum - page num to navigate to when aNavType = ePrintPreviewGoToPageNum
   * @return void
   */
  /* void printPreviewNavigate (in short aNavType, in long aPageNum); */
  nsresult PrintPreviewNavigate(PRInt16 aNavType, PRInt32 aPageNum);

  /**
   * Cancels the current print 
   * @return void
   */
  /* void cancel (); */
  nsresult Cancel();

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
  nsresult EnumerateDocumentNames(PRUint32 *aCount, PRUnichar ***aResult);

  /**
   * This exists PrintPreview mode and returns browser window to galley mode
   * @return void
   */
  /* void exitPrintPreview (); */
  nsresult ExitPrintPreview();

}

