/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAutoCompletePopup.idl
 */

module mozilla.xpcom.nsIAutoCompletePopup;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIAutoCompleteInput; /* forward declaration */


/* starting interface:    nsIAutoCompletePopup */
const char[] NS_IAUTOCOMPLETEPOPUP_IID_STR = "65f6cd46-22ec-4329-bb3b-bcd1103f2204";

const nsIID NS_IAUTOCOMPLETEPOPUP_IID= 
  {0x65f6cd46, 0x22ec, 0x4329, 
    [ 0xbb, 0x3b, 0xbc, 0xd1, 0x10, 0x3f, 0x22, 0x04 ]};

extern(Windows)
interface nsIAutoCompletePopup : nsISupports {
  static const char[] IID_STR = NS_IAUTOCOMPLETEPOPUP_IID_STR;
  static const nsIID IID = NS_IAUTOCOMPLETEPOPUP_IID;

  /* readonly attribute nsIAutoCompleteInput input; */
  nsresult GetInput(nsIAutoCompleteInput  *aInput);

  /* readonly attribute AString overrideValue; */
  nsresult GetOverrideValue(nsAString * aOverrideValue);

  /* attribute long selectedIndex; */
  nsresult GetSelectedIndex(PRInt32 *aSelectedIndex);
  nsresult SetSelectedIndex(PRInt32 aSelectedIndex);

  /* readonly attribute boolean popupOpen; */
  nsresult GetPopupOpen(PRBool *aPopupOpen);

  /* void openPopup (in nsIAutoCompleteInput input, in long x, in long y, in long width); */
  nsresult OpenPopup(nsIAutoCompleteInput input, PRInt32 x, PRInt32 y, PRInt32 width);

  /* void closePopup (); */
  nsresult ClosePopup();

  /* void invalidate (); */
  nsresult Invalidate();

  /* void selectBy (in boolean reverse, in boolean page); */
  nsresult SelectBy(PRBool reverse, PRBool page);

}

