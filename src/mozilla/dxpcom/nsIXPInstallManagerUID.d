/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXPInstallManagerUI.idl
 */

module mozilla.dxpcom.nsIXPInstallManagerUID;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXPInstallManagerUI;


public import mozilla.dxpcom.nsIXPInstallManagerUID;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIXPIProgressDialog;

public import mozilla.dxpcom.nsIXPIProgressDialogD;

public import mozilla.xpcom.nsIDownload;

public import mozilla.dxpcom.nsIDownloadD;


/* starting wrapper class:    nsIXPInstallManagerUI */
class nsIXPInstallManagerUID : public nsISupportsD {

  static const nsIID IID = NS_IXPINSTALLMANAGERUI_IID;


  alias nsIXPInstallManagerUI InnerType;

  this(nsIXPInstallManagerUI intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPInstallManagerUI opCast() {
    return inner;
  }

  void opAssign(nsIXPInstallManagerUI value) {
    inner = value;
  }

  enum { INSTALL_DOWNLOADING = 5 }

  enum { INSTALL_INSTALLING = 6 }

  enum { INSTALL_FINISHED = 7 }

  enum { DOWNLOAD_TYPE_INSTALL = 1 }

  /* readonly attribute nsIXPIProgressDialog xpiProgress; */
  nsIXPIProgressDialogD  XpiProgress(){
    nsIXPIProgressDialog value;
    nsresult __result = inner.GetXpiProgress(&value);
    CheckException(__result);
    return new nsIXPIProgressDialogD(value);
  }

  /* readonly attribute boolean hasActiveXPIOperations; */
  PRBool HasActiveXPIOperations(){
    PRBool value;
    nsresult __result = inner.GetHasActiveXPIOperations(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIXPInstallManagerUI inner;

}

