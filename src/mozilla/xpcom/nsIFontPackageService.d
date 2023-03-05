/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFontPackageService.idl
 */

module mozilla.xpcom.nsIFontPackageService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIFontPackageHandler; /* forward declaration */


/* starting interface:    nsIFontPackageService */
const char[] NS_IFONTPACKAGESERVICE_IID_STR = "6712fdd2-f978-11d4-a144-005004832142";

const nsIID NS_IFONTPACKAGESERVICE_IID= 
  {0x6712fdd2, 0xf978, 0x11d4, 
    [ 0xa1, 0x44, 0x00, 0x50, 0x04, 0x83, 0x21, 0x42 ]};

extern(Windows)
interface nsIFontPackageService : nsISupports {
  static const char[] IID_STR = NS_IFONTPACKAGESERVICE_IID_STR;
  static const nsIID IID = NS_IFONTPACKAGESERVICE_IID;

  /* void SetHandler (in nsIFontPackageHandler aHandler); */
  nsresult SetHandler(nsIFontPackageHandler aHandler);

  /* void FontPackageHandled (in boolean aSuccess, in boolean aRedrawPages, in string aFontPackID); */
  nsresult FontPackageHandled(PRBool aSuccess, PRBool aRedrawPages, char *aFontPackID);

}

