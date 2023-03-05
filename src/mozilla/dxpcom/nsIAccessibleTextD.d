/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessibleText.idl
 */

module mozilla.dxpcom.nsIAccessibleTextD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAccessibleText;


public import mozilla.dxpcom.nsIAccessibleTextD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIAccessibleText */
class nsIAccessibleTextD : public nsISupportsD {

  static const nsIID IID = NS_IACCESSIBLETEXT_IID;


  alias nsIAccessibleText InnerType;

  this(nsIAccessibleText intr){
    super(intr);
    this.inner = intr;
  }

  nsIAccessibleText opCast() {
    return inner;
  }

  void opAssign(nsIAccessibleText value) {
    inner = value;
  }

  enum { BOUNDARY_CHAR = 0 }

  enum { BOUNDARY_WORD_START = 1 }

  enum { BOUNDARY_WORD_END = 2 }

  enum { BOUNDARY_SENTENCE_START = 3 }

  enum { BOUNDARY_SENTENCE_END = 4 }

  enum { BOUNDARY_LINE_START = 5 }

  enum { BOUNDARY_LINE_END = 6 }

  enum { BOUNDARY_ATTRIBUTE_RANGE = 7 }

  enum { COORD_TYPE_SCREEN = 0 }

  enum { COORD_TYPE_WINDOW = 1 }

  /* attribute long caretOffset; */
  PRInt32 CaretOffset(){
    PRInt32 value;
    nsresult __result = inner.GetCaretOffset(&value);
    CheckException(__result);
    return value;
  }
  void CaretOffset(PRInt32 aCaretOffset){
    nsresult __result = inner.SetCaretOffset(aCaretOffset);
    CheckException(__result);
  }

  /* readonly attribute long characterCount; */
  PRInt32 CharacterCount(){
    PRInt32 value;
    nsresult __result = inner.GetCharacterCount(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long selectionCount; */
  PRInt32 SelectionCount(){
    PRInt32 value;
    nsresult __result = inner.GetSelectionCount(&value);
    CheckException(__result);
    return value;
  }

  /**
      * String methods may need to return multibyte-encoded strings,
      * since some locales can't be encoded using 16-bit chars.
      * So the methods below might return UTF-16 strings, or they could
      * return "string" values which are UTF-8.
      */
  /* AString getText (in long startOffset, in long endOffset); */
  wchar[] GetText(PRInt32 startOffset, PRInt32 endOffset){
    scope auto _retval = new AString;
    nsresult __result = inner.GetText(startOffset, endOffset, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* AString getTextAfterOffset (in long offset, in nsAccessibleTextBoundary boundaryType, out long startOffset, out long endOffset); */
  wchar[] GetTextAfterOffset(PRInt32 offset, nsAccessibleTextBoundary boundaryType, out PRInt32 startOffset, out PRInt32 endOffset){
    scope auto _retval = new AString;
    nsresult __result = inner.GetTextAfterOffset(offset, boundaryType, &startOffset, &endOffset, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* AString getTextAtOffset (in long offset, in nsAccessibleTextBoundary boundaryType, out long startOffset, out long endOffset); */
  wchar[] GetTextAtOffset(PRInt32 offset, nsAccessibleTextBoundary boundaryType, out PRInt32 startOffset, out PRInt32 endOffset){
    scope auto _retval = new AString;
    nsresult __result = inner.GetTextAtOffset(offset, boundaryType, &startOffset, &endOffset, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* AString getTextBeforeOffset (in long offset, in nsAccessibleTextBoundary boundaryType, out long startOffset, out long endOffset); */
  wchar[] GetTextBeforeOffset(PRInt32 offset, nsAccessibleTextBoundary boundaryType, out PRInt32 startOffset, out PRInt32 endOffset){
    scope auto _retval = new AString;
    nsresult __result = inner.GetTextBeforeOffset(offset, boundaryType, &startOffset, &endOffset, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
      * It would be better to return an unsigned long here,
      * to allow unicode chars > 16 bits
      */
  /* wchar getCharacterAtOffset (in long offset); */
  PRUnichar GetCharacterAtOffset(PRInt32 offset){
    PRUnichar _retval;
    nsresult __result = inner.GetCharacterAtOffset(offset, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsISupports getAttributeRange (in long offset, out long rangeStartOffset, out long rangeEndOffset); */
  nsISupportsD  GetAttributeRange(PRInt32 offset, out PRInt32 rangeStartOffset, out PRInt32 rangeEndOffset){
    nsISupports _retval;
    nsresult __result = inner.GetAttributeRange(offset, &rangeStartOffset, &rangeEndOffset, &_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

  /* void getCharacterExtents (in long offset, out long x, out long y, out long width, out long height, in nsAccessibleCoordType coordType); */
  void GetCharacterExtents(PRInt32 offset, out PRInt32 x, out PRInt32 y, out PRInt32 width, out PRInt32 height, nsAccessibleCoordType coordType){
    nsresult __result = inner.GetCharacterExtents(offset, &x, &y, &width, &height, coordType);
    CheckException(__result);
  }

  /* long getOffsetAtPoint (in long x, in long y, in nsAccessibleCoordType coordType); */
  PRInt32 GetOffsetAtPoint(PRInt32 x, PRInt32 y, nsAccessibleCoordType coordType){
    PRInt32 _retval;
    nsresult __result = inner.GetOffsetAtPoint(x, y, coordType, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void getSelectionBounds (in long selectionNum, out long startOffset, out long endOffset); */
  void GetSelectionBounds(PRInt32 selectionNum, out PRInt32 startOffset, out PRInt32 endOffset){
    nsresult __result = inner.GetSelectionBounds(selectionNum, &startOffset, &endOffset);
    CheckException(__result);
  }

  /* void setSelectionBounds (in long selectionNum, in long startOffset, in long endOffset); */
  void SetSelectionBounds(PRInt32 selectionNum, PRInt32 startOffset, PRInt32 endOffset){
    nsresult __result = inner.SetSelectionBounds(selectionNum, startOffset, endOffset);
    CheckException(__result);
  }

  /* void addSelection (in long startOffset, in long endOffset); */
  void AddSelection(PRInt32 startOffset, PRInt32 endOffset){
    nsresult __result = inner.AddSelection(startOffset, endOffset);
    CheckException(__result);
  }

  /* void removeSelection (in long selectionNum); */
  void RemoveSelection(PRInt32 selectionNum){
    nsresult __result = inner.RemoveSelection(selectionNum);
    CheckException(__result);
  }

private:
  nsIAccessibleText inner;

}

