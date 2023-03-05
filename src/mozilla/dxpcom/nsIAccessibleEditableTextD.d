/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessibleEditableText.idl
 */

module mozilla.dxpcom.nsIAccessibleEditableTextD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAccessibleEditableText;


public import mozilla.dxpcom.nsIAccessibleEditableTextD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIAccessibleEditableText */
class nsIAccessibleEditableTextD : public nsISupportsD {

  static const nsIID IID = NS_IACCESSIBLEEDITABLETEXT_IID;


  alias nsIAccessibleEditableText InnerType;

  this(nsIAccessibleEditableText intr){
    super(intr);
    this.inner = intr;
  }

  nsIAccessibleEditableText opCast() {
    return inner;
  }

  void opAssign(nsIAccessibleEditableText value) {
    inner = value;
  }

  /**
      * Set font styles, such as italic, bold...
      */
  /* void setAttributes (in long startPos, in long endPos, in nsISupports attributes); */
  void SetAttributes(PRInt32 startPos, PRInt32 endPos, nsISupportsD attributes){
    nsresult __result = inner.SetAttributes(startPos, endPos, attributes ? cast(nsISupports)attributes : null);
    CheckException(__result);
  }

  /* void setTextContents (in AString text); */
  void SetTextContents(wchar[] text){
    scope auto _text = new AString(text);
    nsresult __result = inner.SetTextContents(cast(nsAString*)_text);
    CheckException(__result);
  }

  /* void insertText (in AString text, in long position); */
  void InsertText(wchar[] text, PRInt32 position){
    scope auto _text = new AString(text);
    nsresult __result = inner.InsertText(cast(nsAString*)_text, position);
    CheckException(__result);
  }

  /* void copyText (in long startPos, in long endPos); */
  void CopyText(PRInt32 startPos, PRInt32 endPos){
    nsresult __result = inner.CopyText(startPos, endPos);
    CheckException(__result);
  }

  /* void cutText (in long startPos, in long endPos); */
  void CutText(PRInt32 startPos, PRInt32 endPos){
    nsresult __result = inner.CutText(startPos, endPos);
    CheckException(__result);
  }

  /* void deleteText (in long startPos, in long endPos); */
  void DeleteText(PRInt32 startPos, PRInt32 endPos){
    nsresult __result = inner.DeleteText(startPos, endPos);
    CheckException(__result);
  }

  /* void pasteText (in long position); */
  void PasteText(PRInt32 position){
    nsresult __result = inner.PasteText(position);
    CheckException(__result);
  }

private:
  nsIAccessibleEditableText inner;

}

