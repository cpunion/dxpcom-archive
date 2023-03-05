/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIHelperAppLauncherDialog.idl
 */

module mozilla.dxpcom.nsIHelperAppLauncherDialogD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIHelperAppLauncherDialog;


public import mozilla.dxpcom.nsIHelperAppLauncherDialogD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIExternalHelperAppService;

import mozilla.dxpcom.nsIExternalHelperAppServiceD;

public import mozilla.xpcom.nsILocalFile;

public import mozilla.dxpcom.nsILocalFileD;


/* starting wrapper class:    nsIHelperAppLauncherDialog */
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
class nsIHelperAppLauncherDialogD : public nsISupportsD {

  static const nsIID IID = NS_IHELPERAPPLAUNCHERDIALOG_IID;


  alias nsIHelperAppLauncherDialog InnerType;

  this(nsIHelperAppLauncherDialog intr){
    super(intr);
    this.inner = intr;
  }

  nsIHelperAppLauncherDialog opCast() {
    return inner;
  }

  void opAssign(nsIHelperAppLauncherDialog value) {
    inner = value;
  }

  /**
   * This request is passed to the helper app dialog because Gecko can not
   * handle content of this type.
   */
  enum { REASON_CANTHANDLE = 0U }

  /**
   * The server requested external handling.
   */
  enum { REASON_SERVERREQUEST = 1U }

  /**
   * Gecko detected that the type sent by the server (e.g. text/plain) does
   * not match the actual type.
   */
  enum { REASON_TYPESNIFFED = 2U }

  /* void show (in nsIHelperAppLauncher aLauncher, in nsISupports aContext, in unsigned long aReason); */
  void Show(nsIHelperAppLauncherD aLauncher, nsISupportsD aContext, PRUint32 aReason){
    nsresult __result = inner.Show(aLauncher ? cast(nsIHelperAppLauncher)aLauncher : null, aContext ? cast(nsISupports)aContext : null, aReason);
    CheckException(__result);
  }

  /* nsILocalFile promptForSaveToFile (in nsIHelperAppLauncher aLauncher, in nsISupports aWindowContext, in wstring aDefaultFile, in wstring aSuggestedFileExtension); */
  nsILocalFileD  PromptForSaveToFile(nsIHelperAppLauncherD aLauncher, nsISupportsD aWindowContext, PRUnichar*aDefaultFile, PRUnichar*aSuggestedFileExtension){
    nsILocalFile _retval;
    nsresult __result = inner.PromptForSaveToFile(aLauncher ? cast(nsIHelperAppLauncher)aLauncher : null, aWindowContext ? cast(nsISupports)aWindowContext : null, aDefaultFile, aSuggestedFileExtension, &_retval);
    CheckException(__result);
    return new nsILocalFileD(_retval);
  }

private:
  nsIHelperAppLauncherDialog inner;

}

