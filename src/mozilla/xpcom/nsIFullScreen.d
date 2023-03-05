/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFullScreen.idl
 */

module mozilla.xpcom.nsIFullScreen;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */


/* starting interface:    nsIFullScreen */
const char[] NS_IFULLSCREEN_IID_STR = "9854976e-1dd1-11b2-8350-e6d35099fbce";

const nsIID NS_IFULLSCREEN_IID= 
  {0x9854976e, 0x1dd1, 0x11b2, 
    [ 0x83, 0x50, 0xe6, 0xd3, 0x50, 0x99, 0xfb, 0xce ]};

extern(Windows)
interface nsIFullScreen : nsISupports {
  static const char[] IID_STR = NS_IFULLSCREEN_IID_STR;
  static const nsIID IID = NS_IFULLSCREEN_IID;

  /**
   * Hide all registered OS chrome components
   */
  /* void hideAllOSChrome (); */
  nsresult HideAllOSChrome();

  /**
   * Show all registered OS chrome components
   */
  /* void showAllOSChrome (); */
  nsresult ShowAllOSChrome();

  /**
   * Return an enumerator of all registered OS chrome components
   */
  /* nsISimpleEnumerator getChromeItems (); */
  nsresult GetChromeItems(nsISimpleEnumerator *_retval);

}


/* starting interface:    nsIOSChromeItem */
const char[] NS_IOSCHROMEITEM_IID_STR = "ddd6790a-1dd1-11b2-a804-b522643903b9";

const nsIID NS_IOSCHROMEITEM_IID= 
  {0xddd6790a, 0x1dd1, 0x11b2, 
    [ 0xa8, 0x04, 0xb5, 0x22, 0x64, 0x39, 0x03, 0xb9 ]};

extern(Windows)
interface nsIOSChromeItem : nsISupports {
  static const char[] IID_STR = NS_IOSCHROMEITEM_IID_STR;
  static const nsIID IID = NS_IOSCHROMEITEM_IID;

  /* readonly attribute string name; */
  nsresult GetName(char * *aName);

  /* attribute boolean hidden; */
  nsresult GetHidden(PRBool *aHidden);
  nsresult SetHidden(PRBool aHidden);

  /* readonly attribute long x; */
  nsresult GetX(PRInt32 *aX);

  /* readonly attribute long y; */
  nsresult GetY(PRInt32 *aY);

  /* readonly attribute long width; */
  nsresult GetWidth(PRInt32 *aWidth);

  /* readonly attribute long height; */
  nsresult GetHeight(PRInt32 *aHeight);

}

