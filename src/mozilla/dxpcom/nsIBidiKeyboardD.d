/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBidiKeyboard.idl
 */

module mozilla.dxpcom.nsIBidiKeyboardD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIBidiKeyboard;


public import mozilla.dxpcom.nsIBidiKeyboardD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIBidiKeyboard */
class nsIBidiKeyboardD : public nsISupportsD {

  static const nsIID IID = NS_IBIDIKEYBOARD_IID;


  alias nsIBidiKeyboard InnerType;

  this(nsIBidiKeyboard intr){
    super(intr);
    this.inner = intr;
  }

  nsIBidiKeyboard opCast() {
    return inner;
  }

  void opAssign(nsIBidiKeyboard value) {
    inner = value;
  }

  /**
   * Determines if the current keyboard language is right-to-left
   */
  /* void isLangRTL (out PRBool aIsRTL); */
  void IsLangRTL(out PRBool aIsRTL){
    nsresult __result = inner.IsLangRTL(&aIsRTL);
    CheckException(__result);
  }

  /**
   * Sets the keyboard language to left-to-right or right-to-left
   * @param aLevel - if odd set the keyboard to RTL, if even set LTR 
   */
  /* void setLangFromBidiLevel (in PRUint8 aLevel); */
  void SetLangFromBidiLevel(PRUint8 aLevel){
    nsresult __result = inner.SetLangFromBidiLevel(aLevel);
    CheckException(__result);
  }

private:
  nsIBidiKeyboard inner;

}

