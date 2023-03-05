/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPlaintextEditor.idl
 */

module mozilla.xpcom.nsIPlaintextEditor;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMKeyEvent;

/* starting interface:    nsIPlaintextEditor */
const char[] NS_IPLAINTEXTEDITOR_IID_STR = "b5f39ed4-1dd1-11b2-9d00-fd54d6f54962";

const nsIID NS_IPLAINTEXTEDITOR_IID= 
  {0xb5f39ed4, 0x1dd1, 0x11b2, 
    [ 0x9d, 0x00, 0xfd, 0x54, 0xd6, 0xf5, 0x49, 0x62 ]};

extern(Windows)
interface nsIPlaintextEditor : nsISupports {
  static const char[] IID_STR = NS_IPLAINTEXTEDITOR_IID_STR;
  static const nsIID IID = NS_IPLAINTEXTEDITOR_IID;

  enum { eEditorPlaintextBit = 0 };

  enum { eEditorSingleLineBit = 1 };

  enum { eEditorPasswordBit = 2 };

  enum { eEditorReadonlyBit = 3 };

  enum { eEditorDisabledBit = 4 };

  enum { eEditorFilterInputBit = 5 };

  enum { eEditorMailBit = 6 };

  enum { eEditorUseAsyncUpdatesBit = 7 };

  enum { eEditorEnableWrapHackBit = 8 };

  enum { eEditorWidgetBit = 9 };

  enum { eEditorNoCSSBit = 10 };

  enum { eEditorPlaintextMask = 1 };

  enum { eEditorSingleLineMask = 2 };

  enum { eEditorPasswordMask = 4 };

  enum { eEditorReadonlyMask = 8 };

  enum { eEditorDisabledMask = 16 };

  enum { eEditorFilterInputMask = 32 };

  enum { eEditorMailMask = 64 };

  enum { eEditorUseAsyncUpdatesMask = 128 };

  enum { eEditorEnableWrapHackMask = 256 };

  enum { eEditorWidgetMask = 512 };

  enum { eEditorNoCSSMask = 1024 };

  /**
    * The length of the contents in characters.
    * XXX change this type to 'unsigned long'
    */
  /* readonly attribute long textLength; */
  nsresult GetTextLength(PRInt32 *aTextLength);

  /**
    * The maximum number of characters allowed.
    *   default: -1 (unlimited).
    */
  /* attribute long maxTextLength; */
  nsresult GetMaxTextLength(PRInt32 *aMaxTextLength);
  nsresult SetMaxTextLength(PRInt32 aMaxTextLength);

  /** Get and set the body wrap width.
    * 
    * Special values:
    *    0 = wrap to window width
    *   -1 = no wrap at all
    */
  /* attribute long wrapWidth; */
  nsresult GetWrapWidth(PRInt32 *aWrapWidth);
  nsresult SetWrapWidth(PRInt32 aWrapWidth);

  /** 
   * EditorKeyPress consumes a keyevent.
   * @param aKeyEvent    key event to consume
   */
  /* [noscript] void handleKeyPress (in nsIDOMKeyEvent aKeyEvent); */
  nsresult HandleKeyPress(nsIDOMKeyEvent * aKeyEvent);

  /**
   * Inserts a string at the current location,
   * given by the selection.
   * If the selection is not collapsed, the selection is deleted
   * and the insertion takes place at the resulting collapsed selection.
   *
   * @param aString   the string to be inserted
   */
  /* void insertText (in DOMString aStringToInsert); */
  nsresult InsertText(nsAString * aStringToInsert);

  /**
   * Insert a line break into the content model.
   * The interpretation of a break is up to the implementation:
   * it may enter a character, split a node in the tree, etc.
   * This may be more efficient than calling InsertText with a newline.
   */
  /* void insertLineBreak (); */
  nsresult InsertLineBreak();

}

