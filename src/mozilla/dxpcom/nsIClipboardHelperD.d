/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIClipboardHelper.idl
 */

module mozilla.dxpcom.nsIClipboardHelperD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIClipboardHelper;


public import mozilla.dxpcom.nsIClipboardHelperD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIClipboard;
public import mozilla.dxpcom.nsIClipboardD;


/* starting wrapper class:    nsIClipboardHelper */
/**
 * helper service for common uses of nsIClipboard.
 */
class nsIClipboardHelperD : public nsISupportsD {

  static const nsIID IID = NS_ICLIPBOARDHELPER_IID;


  alias nsIClipboardHelper InnerType;

  this(nsIClipboardHelper intr){
    super(intr);
    this.inner = intr;
  }

  nsIClipboardHelper opCast() {
    return inner;
  }

  void opAssign(nsIClipboardHelper value) {
    inner = value;
  }

  /**
   * copy string to given clipboard
   *
   * @param aString, the string to copy to the clipboard
   * @param aClipboardID, the ID of the clipboard to copy to
   *        (eg. kSelectionClipboard -- see nsIClipboard.idl)
   */
  /* void copyStringToClipboard (in AString aString, in long aClipboardID); */
  void CopyStringToClipboard(wchar[] aString, PRInt32 aClipboardID){
    scope auto _aString = new AString(aString);
    nsresult __result = inner.CopyStringToClipboard(cast(nsAString*)_aString, aClipboardID);
    CheckException(__result);
  }

  /**
   * copy string to (default) clipboard
   *
   * @param aString, the string to copy to the clipboard
   */
  /* void copyString (in AString aString); */
  void CopyString(wchar[] aString){
    scope auto _aString = new AString(aString);
    nsresult __result = inner.CopyString(cast(nsAString*)_aString);
    CheckException(__result);
  }

private:
  nsIClipboardHelper inner;

}

