/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULPopupElement.idl
 */

module mozilla.xpcom.nsIDOMXULPopupElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMElement;
public import mozilla.xpcom.nsIDOMXULElement;


/* starting interface:    nsIDOMXULPopupElement */
const char[] NS_IDOMXULPOPUPELEMENT_IID_STR = "c32390a8-2bd8-4d1b-bf9f-1b1d0a944d19";

const nsIID NS_IDOMXULPOPUPELEMENT_IID= 
  {0xc32390a8, 0x2bd8, 0x4d1b, 
    [ 0xbf, 0x9f, 0x1b, 0x1d, 0x0a, 0x94, 0x4d, 0x19 ]};

extern(Windows)
interface nsIDOMXULPopupElement : nsIDOMXULElement {
  static const char[] IID_STR = NS_IDOMXULPOPUPELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMXULPOPUPELEMENT_IID;

  enum { BEFORE_START = 1U };

  enum { BEFORE_END = 2U };

  enum { AFTER_START = 3U };

  enum { AFTER_END = 4U };

  enum { START_BEFORE = 5U };

  enum { START_AFTER = 6U };

  enum { END_BEFORE = 7U };

  enum { END_AFTER = 8U };

  enum { OVERLAP = 9U };

  enum { AT_POINTER = 10U };

  enum { AFTER_POINTER = 11U };

  /* attribute DOMString position; */
  nsresult GetPosition(nsAString * aPosition);
  nsresult SetPosition(nsAString * aPosition);

  /* void showPopup (in unsigned short alignment, in nsIDOMElement target, in nsIDOMElement anchor); */
  nsresult ShowPopup(PRUint16 alignment, nsIDOMElement target, nsIDOMElement anchor);

  /* void hidePopup (); */
  nsresult HidePopup();

}

