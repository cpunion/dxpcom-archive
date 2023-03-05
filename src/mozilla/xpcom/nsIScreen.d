/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScreen.idl
 */

module mozilla.xpcom.nsIScreen;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIScreen */
const char[] NS_ISCREEN_IID_STR = "f728830e-1dd1-11b2-9598-fb9f414f2465";

const nsIID NS_ISCREEN_IID= 
  {0xf728830e, 0x1dd1, 0x11b2, 
    [ 0x95, 0x98, 0xfb, 0x9f, 0x41, 0x4f, 0x24, 0x65 ]};

extern(Windows)
interface nsIScreen : nsISupports {
  static const char[] IID_STR = NS_ISCREEN_IID_STR;
  static const nsIID IID = NS_ISCREEN_IID;

  /* void GetRect (out long left, out long top, out long width, out long height); */
  nsresult GetRect(PRInt32 *left, PRInt32 *top, PRInt32 *width, PRInt32 *height);

  /* void GetAvailRect (out long left, out long top, out long width, out long height); */
  nsresult GetAvailRect(PRInt32 *left, PRInt32 *top, PRInt32 *width, PRInt32 *height);

  /* readonly attribute long pixelDepth; */
  nsresult GetPixelDepth(PRInt32 *aPixelDepth);

  /* readonly attribute long colorDepth; */
  nsresult GetColorDepth(PRInt32 *aColorDepth);

}

