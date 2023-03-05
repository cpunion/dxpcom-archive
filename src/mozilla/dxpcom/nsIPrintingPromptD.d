/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrintingPrompt.idl
 */

module mozilla.dxpcom.nsIPrintingPromptD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPrintingPrompt;


public import mozilla.dxpcom.nsIPrintingPromptD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIWebBrowserPrint;
public import mozilla.dxpcom.nsIWebBrowserPrintD;
public import mozilla.xpcom.nsIWebProgressListener;
public import mozilla.dxpcom.nsIWebProgressListenerD;
public import mozilla.xpcom.nsIPrintSettings;
public import mozilla.dxpcom.nsIPrintSettingsD;
public import mozilla.xpcom.nsIPrintProgressParams;
public import mozilla.dxpcom.nsIPrintProgressParamsD;
public import mozilla.xpcom.nsIObserver;
public import mozilla.dxpcom.nsIObserverD;


/* starting wrapper class:    nsIPrintingPrompt */
class nsIPrintingPromptD : public nsISupportsD {

  static const nsIID IID = NS_IPRINTINGPROMPT_IID;


  alias nsIPrintingPrompt InnerType;

  this(nsIPrintingPrompt intr){
    super(intr);
    this.inner = intr;
  }

  nsIPrintingPrompt opCast() {
    return inner;
  }

  void opAssign(nsIPrintingPrompt value) {
    inner = value;
  }

  /**
   *  This service enables embedders to implement their own Print and Progress Dialogs.
   *  Each platform has a "base" or "basckstop" implementation of the service. The 
   *  service is automatically registered at start up.
   *
   *  Historically, platform toolkits with native dialogs have implemented them in the GFX layer
   *  Usually they were displayed when a new DeviceContextSpec specific to that platform
   *  was created.
   *
   *  Windows: The GFX layer no longers supports default toolkit behavior for displaying the 
   *           native Print Dialog.
   *           If an embedder implemented service returns any error code (other than NS_ERROR_ABORT)
   *           printing will terminate.
   *
   *           Returning NS_OK assumes that the PrintSettings object was correctly filled in and
   *           if it does not have valid fields for printer name, etc. it may also terminate.
   *
   *           Defaults for platform service:           
   *             showPrintDialog       - displays a native dialog
   *             showPageSetup         - displays a XUL dialog
   *             showProgress          - displays a XUL dialog
   *             showPrinterProperties - n/a
   *
   *           Summary for Windows Embedders:
   *             Stated once again: There is no "fallback" native platform support in GFX for the
   *             displaying of the native print dialog. The current default implementation for Windows
   *             display a native print dialog but a XUL-based progress dialog.
   *             If you wish to have a native progress dialog on Windows you will have to create and 
   *             register your own service.
   *  
   *             Note: The Windows version Mozilla implements this service which is 
   *                   automatically built and registered for you. You can use it as an example.
   *                   It is located at "mozilla/embedding/components/printingui/src/win". That service
   *                   is capable of displaying a native print dialog and a XUL progress dialog.
   *
   *             To fly your own dialog you may:
   *
   *              1) Implement this service to display at least the Print Dialog and a Print Progress Dialog
   *                 or you may implement just one of the dialogs and pass back NS_ERROR_NOT_IMPLEMENTED
   *                 for any of the others.
   *
   *              2) For the Print Dialog:
   *                 You may stub out this service by having all the methods return NS_ERROR_NOT_IMPLEMENTED.
   *                 You can then fly you own dialog and then properly fill in the PrintSettings object
   *                 before calling nsIWebBrowserPrint's Print method. If you stub out this service  
   *                 you MUST set "printSilent" to true, if you do not, Printing will terminate and an 
   *                 error dialog will be displayed.
   *
   *  Mac: The GFX layer still supports default toolkit behavior for displaying the Print Dialog.
   *       If an embedder implemented service returns NS_ERROR_NOT_IMPLEMENTED for "showPrintDialog"
   *       The toolkit will display the native print dialog.
   *
   *       Defaults for platform service:           
   *       Mac OS9: showPrintDialog       - displays a native dialog
   *                showPageSetup         - displays a native dialog
   *                showProgress          - displays a XUL dialog
   *                showPrinterProperties - n/a
   *                
   *       Mac OSX: showPrintDialog       - displays a native dialog
   *                showPageSetup         - displays a native dialog
   *                showProgress          - not implemented (provided by OS)
   *                showPrinterProperties - n/a
   *                
   *  GTK: There are no native dialog for GTK.
   *
   *       Defaults for platform service:           
   *         showPrintDialog       - displays a XUL dialog
   *         showPageSetup         - displays a XUL dialog
   *         showProgress          - displays a XUL dialog
   *         showPrinterProperties - displays a XUL dialog
   *              
   *  OS2: 
   *
   *       Defaults for platform service:           
   *         showPrintDialog       - displays a XUL dialog
   *         showPageSetup         - displays a XUL dialog
   *         showProgress          - displays a XUL dialog
   *         showPrinterProperties - displays a native dialog
   *              
   *
   */
/**
   *  Show the Print Dialog 
   *
   *  @param webBrowserPrint - represents the document to be printed
   *  @param printSettings - PrintSettings for print "job"
   *
   */
  /* void showPrintDialog (in nsIWebBrowserPrint webBrowserPrint, in nsIPrintSettings printSettings); */
  void ShowPrintDialog(nsIWebBrowserPrintD webBrowserPrint, nsIPrintSettingsD printSettings){
    nsresult __result = inner.ShowPrintDialog(webBrowserPrint ? cast(nsIWebBrowserPrint)webBrowserPrint : null, printSettings ? cast(nsIPrintSettings)printSettings : null);
    CheckException(__result);
  }

  /**
   *  Shows the print progress dialog
   *
   *  @param webBrowserPrint - represents the document to be printed
   *  @param printSettings - PrintSettings for print "job"
   *  @param openDialogObserver - an observer that will be notifed when the dialog is opened
   *  @param isForPrinting - true - for printing, false for print preview
   *  @param webProgressListener - additional listener can be registered for progress notifications
   *  @param printProgressParams - parameter object for passing progress state
   *  @param notifyOnOpen - this indicates that the observer will be notified when the progress
   *                        dialog has been opened. If false is returned it means the observer
   *                        (usually the caller) shouldn't wait
   *                        For Print Preview Progress there is intermediate progress
   */
  /* void showProgress (in nsIWebBrowserPrint webBrowserPrint, in nsIPrintSettings printSettings, in nsIObserver openDialogObserver, in boolean isForPrinting, out nsIWebProgressListener webProgressListener, out nsIPrintProgressParams printProgressParams, out boolean notifyOnOpen); */
  void ShowProgress(nsIWebBrowserPrintD webBrowserPrint, nsIPrintSettingsD printSettings, nsIObserverD openDialogObserver, PRBool isForPrinting, out nsIWebProgressListenerD webProgressListener, out nsIPrintProgressParamsD printProgressParams, out PRBool notifyOnOpen){
    nsIWebProgressListener _webProgressListener;
    nsIPrintProgressParams _printProgressParams;
    nsresult __result = inner.ShowProgress(webBrowserPrint ? cast(nsIWebBrowserPrint)webBrowserPrint : null, printSettings ? cast(nsIPrintSettings)printSettings : null, openDialogObserver ? cast(nsIObserver)openDialogObserver : null, isForPrinting, &_webProgressListener, &_printProgressParams, &notifyOnOpen);
    CheckException(__result);
    webProgressListener = _webProgressListener ? new nsIWebProgressListenerD(_webProgressListener) : null;
    printProgressParams = _printProgressParams ? new nsIPrintProgressParamsD(_printProgressParams) : null;
  }

  /**
   *  Shows the print progress dialog
   *
   *  @param printSettings - PrintSettings for page setup (required)
   *  @param aObs - An observer to know if the contents of the Print Settings 
   *                object has changed while the dialog is being shown. 
   *                For example, some platforms may implement an "Apply" button (not required)
   */
  /* void showPageSetup (in nsIPrintSettings printSettings, in nsIObserver aObs); */
  void ShowPageSetup(nsIPrintSettingsD printSettings, nsIObserverD aObs){
    nsresult __result = inner.ShowPageSetup(printSettings ? cast(nsIPrintSettings)printSettings : null, aObs ? cast(nsIObserver)aObs : null);
    CheckException(__result);
  }

  /**
   *  Sometimes platforms need to bring up a special properties dialog for showing
   *  print specific properties. Although the PrintSettings has a place to set the 
   *  printer name, here is is an argument to be clear as to what printer is being
   *  asked to have the properties set for it. The Printer name in the PS is ignored.
   *
   *  @param printerName - name of printer (required)
   *  @param printSettings - PrintSettings for page setup (required)
   */
  /* void showPrinterProperties (in wstring printerName, in nsIPrintSettings printSettings); */
  void ShowPrinterProperties(PRUnichar*printerName, nsIPrintSettingsD printSettings){
    nsresult __result = inner.ShowPrinterProperties(printerName, printSettings ? cast(nsIPrintSettings)printSettings : null);
    CheckException(__result);
  }

private:
  nsIPrintingPrompt inner;

}

