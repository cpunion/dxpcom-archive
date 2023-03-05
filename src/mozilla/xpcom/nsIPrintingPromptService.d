/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrintingPromptService.idl
 */

module mozilla.xpcom.nsIPrintingPromptService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIWebBrowserPrint;
public import mozilla.xpcom.nsIWebProgressListener;
public import mozilla.xpcom.nsIPrintProgressParams;
public import mozilla.xpcom.nsIPrintSettings;
public import mozilla.xpcom.nsIObserver;

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */


/* starting interface:    nsIPrintingPromptService */
const char[] NS_IPRINTINGPROMPTSERVICE_IID_STR = "75d1553d-63bf-4b5d-a8f7-e4e4cac21ba4";

const nsIID NS_IPRINTINGPROMPTSERVICE_IID= 
  {0x75d1553d, 0x63bf, 0x4b5d, 
    [ 0xa8, 0xf7, 0xe4, 0xe4, 0xca, 0xc2, 0x1b, 0xa4 ]};

extern(Windows)
interface nsIPrintingPromptService : nsISupports {
  static const char[] IID_STR = NS_IPRINTINGPROMPTSERVICE_IID_STR;
  static const nsIID IID = NS_IPRINTINGPROMPTSERVICE_IID;

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
   *  @param parent - a DOM windows the dialog will be parented to (required)
   *  @param webBrowserPrint - represents the document to be printed (required)
   *  @param printSettings - PrintSettings for print "job" (required)
   *
   */
  /* void showPrintDialog (in nsIDOMWindow parent, in nsIWebBrowserPrint webBrowserPrint, in nsIPrintSettings printSettings); */
  nsresult ShowPrintDialog(nsIDOMWindow parent, nsIWebBrowserPrint webBrowserPrint, nsIPrintSettings printSettings);

  /**
   *  Shows the print progress dialog
   *
   *  @param parent - a DOM windows the dialog will be parented to
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
  /* void showProgress (in nsIDOMWindow parent, in nsIWebBrowserPrint webBrowserPrint, in nsIPrintSettings printSettings, in nsIObserver openDialogObserver, in boolean isForPrinting, out nsIWebProgressListener webProgressListener, out nsIPrintProgressParams printProgressParams, out boolean notifyOnOpen); */
  nsresult ShowProgress(nsIDOMWindow parent, nsIWebBrowserPrint webBrowserPrint, nsIPrintSettings printSettings, nsIObserver openDialogObserver, PRBool isForPrinting, nsIWebProgressListener *webProgressListener, nsIPrintProgressParams *printProgressParams, PRBool *notifyOnOpen);

  /**
   *  Shows the print progress dialog
   *
   *  @param parent - a DOM windows the dialog will be parented to (required)
   *  @param printSettings - PrintSettings for page setup (required)
   *  @param aObs - An observer to know if the contents of the Print Settings 
   *                object has changed while the dialog is being shown. 
   *                For example, some platforms may implement an "Apply" button (not required)
   */
  /* void showPageSetup (in nsIDOMWindow parent, in nsIPrintSettings printSettings, in nsIObserver aObs); */
  nsresult ShowPageSetup(nsIDOMWindow parent, nsIPrintSettings printSettings, nsIObserver aObs);

  /**
   *  Sometimes platforms need to bring up a special properties dialog for showing
   *  print specific properties. Although the PrintSettings has a place to set the 
   *  printer name, here is is an argument to be clear as to what printer is being
   *  asked to have the properties set for it. The Printer name in the PS is ignored.
   *
   *  @param parent - a DOM windows the dialog will be parented to (required)
   *  @param printerName - name of printer (required)
   *  @param printSettings - PrintSettings for page setup (required)
   */
  /* void showPrinterProperties (in nsIDOMWindow parent, in wstring printerName, in nsIPrintSettings printSettings); */
  nsresult ShowPrinterProperties(nsIDOMWindow parent, PRUnichar *printerName, nsIPrintSettings printSettings);

}

