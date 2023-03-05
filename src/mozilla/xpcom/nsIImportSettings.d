/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImportSettings.idl
 */

module mozilla.xpcom.nsIImportSettings;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIMsgAccount; /* forward declaration */

public import mozilla.xpcom.nsIFileSpec; /* forward declaration */


/* starting interface:    nsIImportSettings */
const char[] NS_IIMPORTSETTINGS_IID_STR = "a9411860-66ac-11d3-a206-00a0cc26da63";

const nsIID NS_IIMPORTSETTINGS_IID= 
  {0xa9411860, 0x66ac, 0x11d3, 
    [ 0xa2, 0x06, 0x00, 0xa0, 0xcc, 0x26, 0xda, 0x63 ]};

extern(Windows)
interface nsIImportSettings : nsISupports {
  static const char[] IID_STR = NS_IIMPORTSETTINGS_IID_STR;
  static const nsIID IID = NS_IIMPORTSETTINGS_IID;

  /* boolean AutoLocate (out wstring description, out nsIFileSpec location); */
  nsresult AutoLocate(PRUnichar **description, nsIFileSpec *location, PRBool *_retval);

  /* void SetLocation (in nsIFileSpec location); */
  nsresult SetLocation(nsIFileSpec location);

  /* boolean Import (out nsIMsgAccount localMailAccount); */
  nsresult Import(nsIMsgAccount *localMailAccount, PRBool *_retval);

}

