/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPopupBoxObject.idl
 */

module mozilla.xpcom.nsIPopupBoxObject;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIBoxObject;

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */


/* starting interface:    nsIPopupBoxObject */
const char[] NS_IPOPUPBOXOBJECT_IID_STR = "33c60e14-5150-4876-9a96-2732557e6895";

const nsIID NS_IPOPUPBOXOBJECT_IID= 
  {0x33c60e14, 0x5150, 0x4876, 
    [ 0x9a, 0x96, 0x27, 0x32, 0x55, 0x7e, 0x68, 0x95 ]};

extern(Windows)
interface nsIPopupBoxObject : nsISupports {
  static const char[] IID_STR = NS_IPOPUPBOXOBJECT_IID_STR;
  static const nsIID IID = NS_IPOPUPBOXOBJECT_IID;

  /* void showPopup (in nsIDOMElement srcContent, in nsIDOMElement popupContent, in long xpos, in long ypos, in wstring popupType, in wstring anchorAlignment, in wstring popupAlignment); */
  nsresult ShowPopup(nsIDOMElement srcContent, nsIDOMElement popupContent, PRInt32 xpos, PRInt32 ypos, PRUnichar *popupType, PRUnichar *anchorAlignment, PRUnichar *popupAlignment);

  /* void hidePopup (); */
  nsresult HidePopup();

  /** 
   * Allow the popup to automatically position itself.
   */
  /* attribute boolean autoPosition; */
  nsresult GetAutoPosition(PRBool *aAutoPosition);
  nsresult SetAutoPosition(PRBool aAutoPosition);

  /**
   * Allow the popup to eat all key events
   */
  /* void enableKeyboardNavigator (in boolean enableKeyboardNavigator); */
  nsresult EnableKeyboardNavigator(PRBool enableKeyboardNavigator);

  /** 
   * Enable automatic popup dismissal
   */
  /* void enableRollup (in boolean enableRollup); */
  nsresult EnableRollup(PRBool enableRollup);

  /** 
   * Size the popup to the given dimensions
   */
  /* void sizeTo (in long width, in long height); */
  nsresult SizeTo(PRInt32 width, PRInt32 height);

  /**
   * Move the popup to a point on screen
   */
  /* void moveTo (in long left, in long top); */
  nsresult MoveTo(PRInt32 left, PRInt32 top);

}

