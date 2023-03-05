/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIClipboardHelper.idl
 */

module mozilla.xpcom.nsIClipboardHelper;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIClipboard;


/* starting interface:    nsIClipboardHelper */
const char[] NS_ICLIPBOARDHELPER_IID_STR = "44073a98-1dd2-11b2-8600-d0ae854dbe93";

const nsIID NS_ICLIPBOARDHELPER_IID= 
  {0x44073a98, 0x1dd2, 0x11b2, 
    [ 0x86, 0x00, 0xd0, 0xae, 0x85, 0x4d, 0xbe, 0x93 ]};

/**
 * helper service for common uses of nsIClipboard.
 */
extern(Windows)
interface nsIClipboardHelper : nsISupports {
  static const char[] IID_STR = NS_ICLIPBOARDHELPER_IID_STR;
  static const nsIID IID = NS_ICLIPBOARDHELPER_IID;

  /**
   * copy string to given clipboard
   *
   * @param aString, the string to copy to the clipboard
   * @param aClipboardID, the ID of the clipboard to copy to
   *        (eg. kSelectionClipboard -- see nsIClipboard.idl)
   */
  /* void copyStringToClipboard (in AString aString, in long aClipboardID); */
  nsresult CopyStringToClipboard(nsAString * aString, PRInt32 aClipboardID);

  /**
   * copy string to (default) clipboard
   *
   * @param aString, the string to copy to the clipboard
   */
  /* void copyString (in AString aString); */
  nsresult CopyString(nsAString * aString);

}

