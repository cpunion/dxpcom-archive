/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXPIDialogService.idl
 */

module mozilla.dxpcom.nsIXPIDialogServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXPIDialogService;


public import mozilla.dxpcom.nsIXPIDialogServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.dxpcom.nsIDOMWindowD;

public import mozilla.xpcom.nsIXPIProgressDialog;

public import mozilla.dxpcom.nsIXPIProgressDialogD;

public import mozilla.xpcom.nsIObserver;

public import mozilla.dxpcom.nsIObserverD;


/* starting wrapper class:    nsIXPIDialogService */
/**
 * A service provided by embedding applications to override
 * the default XUL implmementation of XPInstall dialogs.
 *
 * Embedding applications which wish to override the default
 * XUL dialogs need to create a component which implements
 * this interface and registers with the Contract ID
 * "@mozilla.org/embedui/xpinstall-dialog-service;1"
 *
 * @status UNDER_REVIEW
 */
class nsIXPIDialogServiceD : public nsISupportsD {

  static const nsIID IID = NS_IXPIDIALOGSERVICE_IID;


  alias nsIXPIDialogService InnerType;

  this(nsIXPIDialogService intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPIDialogService opCast() {
    return inner;
  }

  void opAssign(nsIXPIDialogService value) {
    inner = value;
  }

  /**
     * @brief  Ask the user if it's OK to install
     *
     * When called the XPIDialogService implementation should pose an
     * install confirmation dialog and return the user's response
     *
     * @param parent        a window that can be used to parent the modal dialog
     *
     * @param packageList   For each install package there will be three strings,
     *                      a display name, a source URL, and a the name of the
     *                      organization that signed this install.  Note that the
     *                      name of the signer is not verified.  Verification
     *                      happens when the the install has completely downloaded.
     *                      Your user interface should only suggest that the 
     *                      install may be signed by this organization name.
     *                      Note that an unsigned archive is indicated by an 
     *                      empty string.   
     *
     * @param count         The number of strings in the packageList. This
     *                      will always be three times the number of 
     *                      packages.
     *
     * @return true to install, false to cancel
     */
  /* boolean confirmInstall (in nsIDOMWindow parent, [array, size_is (count)] in wstring packageList, in unsigned long count); */
  PRBool ConfirmInstall(nsIDOMWindowD parent, PRUnichar**packageList, PRUint32 count){
    PRBool _retval;
    nsresult __result = inner.ConfirmInstall(parent ? cast(nsIDOMWindow)parent : null, packageList, count, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * @brief Create and open a download-and-install progress dialog
     *
     * When called the XPIDialogService implementation creates and opens
     * a dialog to display the status of the install. When the dialog
     * is ready to be used then the observer must be called: the subject
     * is an nsIXPIProgressDialog that nsXPInstallManager can use to control
     * the dialog, the topic is "xpinstall-progress"  and the data is "open".
     *
     * If the user wishes to cancel the download, the dialog can call the
     * observe method with the same subject and topic and the data "cancel".
     *
     * @note Unless this routine throws an exception the observer <b>must</b>
     * be called or nsXPInstallManager will wait forever and never clean
     * itself up.
     *
     * @param packageList   three strings per package as in confirmInstall()
     * @param count         the number of strings in the list
     * @param observer      nsIObserver to receive messages from the dialog
     */
  /* void openProgressDialog ([array, size_is (count)] in wstring packageList, in unsigned long count, in nsIObserver observer); */
  void OpenProgressDialog(PRUnichar**packageList, PRUint32 count, nsIObserverD observer){
    nsresult __result = inner.OpenProgressDialog(packageList, count, observer ? cast(nsIObserver)observer : null);
    CheckException(__result);
  }

private:
  nsIXPIDialogService inner;

}

