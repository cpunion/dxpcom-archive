/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessibleText.idl
 */

module mozilla.xpcom.nsIAccessibleText;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

alias PRInt32 nsAccessibleTextBoundary;

alias PRInt32 nsAccessibleCoordType;


/* starting interface:    nsIAccessibleText */
const char[] NS_IACCESSIBLETEXT_IID_STR = "e44d3fa6-9cb2-432a-8bdb-69d72b6ada00";

const nsIID NS_IACCESSIBLETEXT_IID= 
  {0xe44d3fa6, 0x9cb2, 0x432a, 
    [ 0x8b, 0xdb, 0x69, 0xd7, 0x2b, 0x6a, 0xda, 0x00 ]};

extern(Windows)
interface nsIAccessibleText : nsISupports {
  static const char[] IID_STR = NS_IACCESSIBLETEXT_IID_STR;
  static const nsIID IID = NS_IACCESSIBLETEXT_IID;

  enum { BOUNDARY_CHAR = 0 };

  enum { BOUNDARY_WORD_START = 1 };

  enum { BOUNDARY_WORD_END = 2 };

  enum { BOUNDARY_SENTENCE_START = 3 };

  enum { BOUNDARY_SENTENCE_END = 4 };

  enum { BOUNDARY_LINE_START = 5 };

  enum { BOUNDARY_LINE_END = 6 };

  enum { BOUNDARY_ATTRIBUTE_RANGE = 7 };

  enum { COORD_TYPE_SCREEN = 0 };

  enum { COORD_TYPE_WINDOW = 1 };

  /* attribute long caretOffset; */
  nsresult GetCaretOffset(PRInt32 *aCaretOffset);
  nsresult SetCaretOffset(PRInt32 aCaretOffset);

  /* readonly attribute long characterCount; */
  nsresult GetCharacterCount(PRInt32 *aCharacterCount);

  /* readonly attribute long selectionCount; */
  nsresult GetSelectionCount(PRInt32 *aSelectionCount);

  /**
      * String methods may need to return multibyte-encoded strings,
      * since some locales can't be encoded using 16-bit chars.
      * So the methods below might return UTF-16 strings, or they could
      * return "string" values which are UTF-8.
      */
  /* AString getText (in long startOffset, in long endOffset); */
  nsresult GetText(PRInt32 startOffset, PRInt32 endOffset, nsAString * _retval);

  /* AString getTextAfterOffset (in long offset, in nsAccessibleTextBoundary boundaryType, out long startOffset, out long endOffset); */
  nsresult GetTextAfterOffset(PRInt32 offset, nsAccessibleTextBoundary boundaryType, PRInt32 *startOffset, PRInt32 *endOffset, nsAString * _retval);

  /* AString getTextAtOffset (in long offset, in nsAccessibleTextBoundary boundaryType, out long startOffset, out long endOffset); */
  nsresult GetTextAtOffset(PRInt32 offset, nsAccessibleTextBoundary boundaryType, PRInt32 *startOffset, PRInt32 *endOffset, nsAString * _retval);

  /* AString getTextBeforeOffset (in long offset, in nsAccessibleTextBoundary boundaryType, out long startOffset, out long endOffset); */
  nsresult GetTextBeforeOffset(PRInt32 offset, nsAccessibleTextBoundary boundaryType, PRInt32 *startOffset, PRInt32 *endOffset, nsAString * _retval);

  /**
      * It would be better to return an unsigned long here,
      * to allow unicode chars > 16 bits
      */
  /* wchar getCharacterAtOffset (in long offset); */
  nsresult GetCharacterAtOffset(PRInt32 offset, PRUnichar *_retval);

  /* nsISupports getAttributeRange (in long offset, out long rangeStartOffset, out long rangeEndOffset); */
  nsresult GetAttributeRange(PRInt32 offset, PRInt32 *rangeStartOffset, PRInt32 *rangeEndOffset, nsISupports *_retval);

  /* void getCharacterExtents (in long offset, out long x, out long y, out long width, out long height, in nsAccessibleCoordType coordType); */
  nsresult GetCharacterExtents(PRInt32 offset, PRInt32 *x, PRInt32 *y, PRInt32 *width, PRInt32 *height, nsAccessibleCoordType coordType);

  /* long getOffsetAtPoint (in long x, in long y, in nsAccessibleCoordType coordType); */
  nsresult GetOffsetAtPoint(PRInt32 x, PRInt32 y, nsAccessibleCoordType coordType, PRInt32 *_retval);

  /* void getSelectionBounds (in long selectionNum, out long startOffset, out long endOffset); */
  nsresult GetSelectionBounds(PRInt32 selectionNum, PRInt32 *startOffset, PRInt32 *endOffset);

  /* void setSelectionBounds (in long selectionNum, in long startOffset, in long endOffset); */
  nsresult SetSelectionBounds(PRInt32 selectionNum, PRInt32 startOffset, PRInt32 endOffset);

  /* void addSelection (in long startOffset, in long endOffset); */
  nsresult AddSelection(PRInt32 startOffset, PRInt32 endOffset);

  /* void removeSelection (in long selectionNum); */
  nsresult RemoveSelection(PRInt32 selectionNum);

}

