/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPlaintextEditor.idl
 */

module mozilla.dxpcom.nsIPlaintextEditorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPlaintextEditor;


public import mozilla.dxpcom.nsIPlaintextEditorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIPlaintextEditor */
class nsIPlaintextEditorD : public nsISupportsD {

  static const nsIID IID = NS_IPLAINTEXTEDITOR_IID;


  alias nsIPlaintextEditor InnerType;

  this(nsIPlaintextEditor intr){
    super(intr);
    this.inner = intr;
  }

  nsIPlaintextEditor opCast() {
    return inner;
  }

  void opAssign(nsIPlaintextEditor value) {
    inner = value;
  }

  enum { eEditorPlaintextBit = 0 }

  enum { eEditorSingleLineBit = 1 }

  enum { eEditorPasswordBit = 2 }

  enum { eEditorReadonlyBit = 3 }

  enum { eEditorDisabledBit = 4 }

  enum { eEditorFilterInputBit = 5 }

  enum { eEditorMailBit = 6 }

  enum { eEditorUseAsyncUpdatesBit = 7 }

  enum { eEditorEnableWrapHackBit = 8 }

  enum { eEditorWidgetBit = 9 }

  enum { eEditorNoCSSBit = 10 }

  enum { eEditorPlaintextMask = 1 }

  enum { eEditorSingleLineMask = 2 }

  enum { eEditorPasswordMask = 4 }

  enum { eEditorReadonlyMask = 8 }

  enum { eEditorDisabledMask = 16 }

  enum { eEditorFilterInputMask = 32 }

  enum { eEditorMailMask = 64 }

  enum { eEditorUseAsyncUpdatesMask = 128 }

  enum { eEditorEnableWrapHackMask = 256 }

  enum { eEditorWidgetMask = 512 }

  enum { eEditorNoCSSMask = 1024 }

  /**
    * The length of the contents in characters.
    * XXX change this type to 'unsigned long'
    */
  /* readonly attribute long textLength; */
  PRInt32 TextLength(){
    PRInt32 value;
    nsresult __result = inner.GetTextLength(&value);
    CheckException(__result);
    return value;
  }

  /**
    * The maximum number of characters allowed.
    *   default: -1 (unlimited).
    */
  /* attribute long maxTextLength; */
  PRInt32 MaxTextLength(){
    PRInt32 value;
    nsresult __result = inner.GetMaxTextLength(&value);
    CheckException(__result);
    return value;
  }
  void MaxTextLength(PRInt32 aMaxTextLength){
    nsresult __result = inner.SetMaxTextLength(aMaxTextLength);
    CheckException(__result);
  }

  /** Get and set the body wrap width.
    * 
    * Special values:
    *    0 = wrap to window width
    *   -1 = no wrap at all
    */
  /* attribute long wrapWidth; */
  PRInt32 WrapWidth(){
    PRInt32 value;
    nsresult __result = inner.GetWrapWidth(&value);
    CheckException(__result);
    return value;
  }
  void WrapWidth(PRInt32 aWrapWidth){
    nsresult __result = inner.SetWrapWidth(aWrapWidth);
    CheckException(__result);
  }

  /** 
   * EditorKeyPress consumes a keyevent.
   * @param aKeyEvent    key event to consume
   */
  /* [noscript] void handleKeyPress (in nsIDOMKeyEvent aKeyEvent); */
  void HandleKeyPress(nsIDOMKeyEvent * aKeyEvent){
    nsresult __result = inner.HandleKeyPress(aKeyEvent);
    CheckException(__result);
  }

  /**
   * Inserts a string at the current location,
   * given by the selection.
   * If the selection is not collapsed, the selection is deleted
   * and the insertion takes place at the resulting collapsed selection.
   *
   * @param aString   the string to be inserted
   */
  /* void insertText (in DOMString aStringToInsert); */
  void InsertText(wchar[] aStringToInsert){
    scope auto _aStringToInsert = new AString(aStringToInsert);
    nsresult __result = inner.InsertText(cast(nsAString*)_aStringToInsert);
    CheckException(__result);
  }

  /**
   * Insert a line break into the content model.
   * The interpretation of a break is up to the implementation:
   * it may enter a character, split a node in the tree, etc.
   * This may be more efficient than calling InsertText with a newline.
   */
  /* void insertLineBreak (); */
  void InsertLineBreak(){
    nsresult __result = inner.InsertLineBreak();
    CheckException(__result);
  }

private:
  nsIPlaintextEditor inner;

}

