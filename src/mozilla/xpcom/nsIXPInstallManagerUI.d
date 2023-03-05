/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXPInstallManagerUI.idl
 */

module mozilla.xpcom.nsIXPInstallManagerUI;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIXPIProgressDialog; /* forward declaration */

public import mozilla.xpcom.nsIDownload; /* forward declaration */


/* starting interface:    nsIXPInstallManagerUI */
const char[] NS_IXPINSTALLMANAGERUI_IID_STR = "087f52a4-8fd8-40ab-ae52-c3e161810141";

const nsIID NS_IXPINSTALLMANAGERUI_IID= 
  {0x087f52a4, 0x8fd8, 0x40ab, 
    [ 0xae, 0x52, 0xc3, 0xe1, 0x61, 0x81, 0x01, 0x41 ]};

extern(Windows)
interface nsIXPInstallManagerUI : nsISupports {
  static const char[] IID_STR = NS_IXPINSTALLMANAGERUI_IID_STR;
  static const nsIID IID = NS_IXPINSTALLMANAGERUI_IID;

  enum { INSTALL_DOWNLOADING = 5 };

  enum { INSTALL_INSTALLING = 6 };

  enum { INSTALL_FINISHED = 7 };

  enum { DOWNLOAD_TYPE_INSTALL = 1 };

  /* readonly attribute nsIXPIProgressDialog xpiProgress; */
  nsresult GetXpiProgress(nsIXPIProgressDialog  *aXpiProgress);

  /* readonly attribute boolean hasActiveXPIOperations; */
  nsresult GetHasActiveXPIOperations(PRBool *aHasActiveXPIOperations);

}

