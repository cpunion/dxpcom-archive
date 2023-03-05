/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrefMigration.idl
 */

module mozilla.xpcom.nsIPrefMigration;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIPrefMigration */
const char[] NS_IPREFMIGRATION_IID_STR = "85c86e4c-6a6c-11d3-9a55-004005263078";

const nsIID NS_IPREFMIGRATION_IID= 
  {0x85c86e4c, 0x6a6c, 0x11d3, 
    [ 0x9a, 0x55, 0x00, 0x40, 0x05, 0x26, 0x30, 0x78 ]};

extern(Windows)
interface nsIPrefMigration : nsISupports {
  static const char[] IID_STR = NS_IPREFMIGRATION_IID_STR;
  static const nsIID IID = NS_IPREFMIGRATION_IID;

  /* void AddProfilePaths (in string oldProfilePathStr, in string newProfilePathStr); */
  nsresult AddProfilePaths(char *oldProfilePathStr, char *newProfilePathStr);

  /* void ProcessPrefs (in boolean showProgressAsModalWindow); */
  nsresult ProcessPrefs(PRBool showProgressAsModalWindow);

  /* void ProcessPrefsFromJS (); */
  nsresult ProcessPrefsFromJS();

  /* void GetError (); */
  nsresult GetError();

  /**
   * this should be in a separate interface
   **/
  /* void WindowCloseCallback (); */
  nsresult WindowCloseCallback();

  /* void ShowSpaceDialog (out PRInt32 choice); */
  nsresult ShowSpaceDialog(PRInt32 *choice);

}


/* starting interface:    nsIPrefConverter */
const char[] NS_IPREFCONVERTER_IID_STR = "88fabfa4-1dd2-11b2-94a1-902f0abd94b1";

const nsIID NS_IPREFCONVERTER_IID= 
  {0x88fabfa4, 0x1dd2, 0x11b2, 
    [ 0x94, 0xa1, 0x90, 0x2f, 0x0a, 0xbd, 0x94, 0xb1 ]};

extern(Windows)
interface nsIPrefConverter : nsISupports {
  static const char[] IID_STR = NS_IPREFCONVERTER_IID_STR;
  static const nsIID IID = NS_IPREFCONVERTER_IID;

  /* void ConvertPrefsToUTF8 (); */
  nsresult ConvertPrefsToUTF8();

}

