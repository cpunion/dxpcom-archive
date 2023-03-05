/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIHelperAppLauncherDialog.idl
 */

module mozilla.xpcom.nsIHelperAppLauncherDialog;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIExternalHelperAppService;

public import mozilla.xpcom.nsILocalFile; /* forward declaration */


/* starting interface:    nsIHelperAppLauncherDialog */
const char[] NS_IHELPERAPPLAUNCHERDIALOG_IID_STR = "64355793-988d-40a5-ba8e-fcde78cac631";

const nsIID NS_IHELPERAPPLAUNCHERDIALOG_IID= 
  {0x64355793, 0x988d, 0x40a5, 
    [ 0xba, 0x8e, 0xfc, 0xde, 0x78, 0xca, 0xc6, 0x31 ]};

/**
 * This interface is used to display a confirmatino dialog before
 * launching a "helper app" to handle content not handled by
 * Mozilla.
 *
 * Usage:  Clients (of which there is one: the nsIExternalHelperAppService
 * implementation in mozilla/uriloader/exthandler) create an instance of
 * this interface (using the contract ID) and then call the show() method.
 *
 * The dialog is shown non-modally.  The implementation of the dialog
 * will access methods of the nsIHelperAppLauncher passed in to show()
 * in order to cause a "save to disk" or "open using" action.
 */
extern(Windows)
interface nsIHelperAppLauncherDialog : nsISupports {
  static const char[] IID_STR = NS_IHELPERAPPLAUNCHERDIALOG_IID_STR;
  static const nsIID IID = NS_IHELPERAPPLAUNCHERDIALOG_IID;

  /**
   * This request is passed to the helper app dialog because Gecko can not
   * handle content of this type.
   */
  enum { REASON_CANTHANDLE = 0U };

  /**
   * The server requested external handling.
   */
  enum { REASON_SERVERREQUEST = 1U };

  /**
   * Gecko detected that the type sent by the server (e.g. text/plain) does
   * not match the actual type.
   */
  enum { REASON_TYPESNIFFED = 2U };

  /* void show (in nsIHelperAppLauncher aLauncher, in nsISupports aContext, in unsigned long aReason); */
  nsresult Show(nsIHelperAppLauncher aLauncher, nsISupports aContext, PRUint32 aReason);

  /* nsILocalFile promptForSaveToFile (in nsIHelperAppLauncher aLauncher, in nsISupports aWindowContext, in wstring aDefaultFile, in wstring aSuggestedFileExtension); */
  nsresult PromptForSaveToFile(nsIHelperAppLauncher aLauncher, nsISupports aWindowContext, PRUnichar *aDefaultFile, PRUnichar *aSuggestedFileExtension, nsILocalFile *_retval);

}

