/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessibleEditableText.idl
 */

module mozilla.xpcom.nsIAccessibleEditableText;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIAccessibleEditableText */
const char[] NS_IACCESSIBLEEDITABLETEXT_IID_STR = "91f0a56c-11be-47c7-8d02-7c15e00c05f5";

const nsIID NS_IACCESSIBLEEDITABLETEXT_IID= 
  {0x91f0a56c, 0x11be, 0x47c7, 
    [ 0x8d, 0x02, 0x7c, 0x15, 0xe0, 0x0c, 0x05, 0xf5 ]};

extern(Windows)
interface nsIAccessibleEditableText : nsISupports {
  static const char[] IID_STR = NS_IACCESSIBLEEDITABLETEXT_IID_STR;
  static const nsIID IID = NS_IACCESSIBLEEDITABLETEXT_IID;

  /**
      * Set font styles, such as italic, bold...
      */
  /* void setAttributes (in long startPos, in long endPos, in nsISupports attributes); */
  nsresult SetAttributes(PRInt32 startPos, PRInt32 endPos, nsISupports attributes);

  /* void setTextContents (in AString text); */
  nsresult SetTextContents(nsAString * text);

  /* void insertText (in AString text, in long position); */
  nsresult InsertText(nsAString * text, PRInt32 position);

  /* void copyText (in long startPos, in long endPos); */
  nsresult CopyText(PRInt32 startPos, PRInt32 endPos);

  /* void cutText (in long startPos, in long endPos); */
  nsresult CutText(PRInt32 startPos, PRInt32 endPos);

  /* void deleteText (in long startPos, in long endPos); */
  nsresult DeleteText(PRInt32 startPos, PRInt32 endPos);

  /* void pasteText (in long position); */
  nsresult PasteText(PRInt32 position);

}

