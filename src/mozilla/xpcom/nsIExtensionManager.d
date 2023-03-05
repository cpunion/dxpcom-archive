/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIExtensionManager.idl
 */

module mozilla.xpcom.nsIExtensionManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIFile; /* forward declaration */


/* starting interface:    nsIExtensionManager */
const char[] NS_IEXTENSIONMANAGER_IID_STR = "c3515b0f-99f4-453b-805e-1fdf5724d6d9";

const nsIID NS_IEXTENSIONMANAGER_IID= 
  {0xc3515b0f, 0x99f4, 0x453b, 
    [ 0x80, 0x5e, 0x1f, 0xdf, 0x57, 0x24, 0xd6, 0xd9 ]};

extern(Windows)
interface nsIExtensionManager : nsISupports {
  static const char[] IID_STR = NS_IEXTENSIONMANAGER_IID_STR;
  static const nsIID IID = NS_IEXTENSIONMANAGER_IID;

  enum { FLAG_INSTALL_PROFILE = 1U };

  /* void installExtension (in nsIFile aXPIFile, in unsigned long aFlags); */
  nsresult InstallExtension(nsIFile aXPIFile, PRUint32 aFlags);

  /* void installTheme (in nsIFile aJARFile, in unsigned long aFlags); */
  nsresult InstallTheme(nsIFile aJARFile, PRUint32 aFlags);

}

