/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBidiKeyboard.idl
 */

module mozilla.xpcom.nsIBidiKeyboard;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIBidiKeyboard */
const char[] NS_IBIDIKEYBOARD_IID_STR = "bb961ae1-7432-11d4-b77a-00104b4119f8";

const nsIID NS_IBIDIKEYBOARD_IID= 
  {0xbb961ae1, 0x7432, 0x11d4, 
    [ 0xb7, 0x7a, 0x00, 0x10, 0x4b, 0x41, 0x19, 0xf8 ]};

extern(Windows)
interface nsIBidiKeyboard : nsISupports {
  static const char[] IID_STR = NS_IBIDIKEYBOARD_IID_STR;
  static const nsIID IID = NS_IBIDIKEYBOARD_IID;

  /**
   * Determines if the current keyboard language is right-to-left
   */
  /* void isLangRTL (out PRBool aIsRTL); */
  nsresult IsLangRTL(PRBool *aIsRTL);

  /**
   * Sets the keyboard language to left-to-right or right-to-left
   * @param aLevel - if odd set the keyboard to RTL, if even set LTR 
   */
  /* void setLangFromBidiLevel (in PRUint8 aLevel); */
  nsresult SetLangFromBidiLevel(PRUint8 aLevel);

}

