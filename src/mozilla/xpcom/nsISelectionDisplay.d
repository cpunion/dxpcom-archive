/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISelectionDisplay.idl
 */

module mozilla.xpcom.nsISelectionDisplay;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsISelectionDisplay */
const char[] NS_ISELECTIONDISPLAY_IID_STR = "0ddf9e1c-1dd2-11b2-a183-908a08aa75ae";

const nsIID NS_ISELECTIONDISPLAY_IID= 
  {0x0ddf9e1c, 0x1dd2, 0x11b2, 
    [ 0xa1, 0x83, 0x90, 0x8a, 0x08, 0xaa, 0x75, 0xae ]};

extern(Windows)
interface nsISelectionDisplay : nsISupports {
  static const char[] IID_STR = NS_ISELECTIONDISPLAY_IID_STR;
  static const nsIID IID = NS_ISELECTIONDISPLAY_IID;

  enum { DISPLAY_TEXT = 1 };

  enum { DISPLAY_IMAGES = 2 };

  enum { DISPLAY_FRAMES = 4 };

  enum { DISPLAY_ALL = 7 };

  /* void setSelectionFlags (in short toggle); */
  nsresult SetSelectionFlags(PRInt16 toggle);

  /* short getSelectionFlags (); */
  nsresult GetSelectionFlags(PRInt16 *_retval);

}

