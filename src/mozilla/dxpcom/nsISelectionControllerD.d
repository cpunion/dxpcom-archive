/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISelectionController.idl
 */

module mozilla.dxpcom.nsISelectionControllerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISelectionController;


public import mozilla.dxpcom.nsISelectionControllerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISelection;
public import mozilla.dxpcom.nsISelectionD;
public import mozilla.xpcom.nsISelectionDisplay;
public import mozilla.dxpcom.nsISelectionDisplayD;

public import mozilla.xpcom.nsIDOMNode;

public import mozilla.dxpcom.nsIDOMNodeD;

public import mozilla.xpcom.nsISelection;

public import mozilla.dxpcom.nsISelectionD;

public import mozilla.xpcom.nsISelectionDisplay;

public import mozilla.dxpcom.nsISelectionDisplayD;


/* starting wrapper class:    nsISelectionController */
class nsISelectionControllerD : public nsISelectionDisplayD {

  static const nsIID IID = NS_ISELECTIONCONTROLLER_IID;


  alias nsISelectionController InnerType;

  this(nsISelectionController intr){
    super(intr);
    this.inner = intr;
  }

  nsISelectionController opCast() {
    return inner;
  }

  void opAssign(nsISelectionController value) {
    inner = value;
  }

  enum { SELECTION_NONE = 0 }

  enum { SELECTION_NORMAL = 1 }

  enum { SELECTION_SPELLCHECK = 2 }

  enum { SELECTION_IME_RAWINPUT = 4 }

  enum { SELECTION_IME_SELECTEDRAWTEXT = 8 }

  enum { SELECTION_IME_CONVERTEDTEXT = 16 }

  enum { SELECTION_IME_SELECTEDCONVERTEDTEXT = 32 }

  enum { SELECTION_ACCESSIBILITY = 64 }

  enum { NUM_SELECTIONTYPES = 8 }

  enum { SELECTION_ANCHOR_REGION = 0 }

  enum { SELECTION_FOCUS_REGION = 1 }

  enum { NUM_SELECTION_REGIONS = 2 }

  enum { SELECTION_OFF = 0 }

  enum { SELECTION_HIDDEN = 1 }

  enum { SELECTION_ON = 2 }

  enum { SELECTION_DISABLED = 3 }

  enum { SELECTION_ATTENTION = 4 }

  /**
   * SetDisplaySelection will set the display mode for the selection. OFF,ON,DISABLED
   */
  /* void setDisplaySelection (in short toggle); */
  void SetDisplaySelection(PRInt16 toggle){
    nsresult __result = inner.SetDisplaySelection(toggle);
    CheckException(__result);
  }

  /**
   * GetDisplaySelection will get the display mode for the selection. OFF,ON,DISABLED
   */
  /* short getDisplaySelection (); */
  PRInt16 GetDisplaySelection(){
    PRInt16 _retval;
    nsresult __result = inner.GetDisplaySelection(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * GetSelection will return the selection that the presentation
   *  shell may implement.
   *
   * @param aType will hold the type of selection //SelectionType
   * @param _return will hold the return value
   */
  /* nsISelection getSelection (in short type); */
  nsISelectionD  GetSelection(PRInt16 type){
    nsISelection _retval;
    nsresult __result = inner.GetSelection(type, &_retval);
    CheckException(__result);
    return new nsISelectionD(_retval);
  }

  /**
   * ScrollSelectionIntoView scrolls a region of the selection,
   * so that it is visible in the scrolled view.
   *
   * @param aType the selection to scroll into view. //SelectionType
   * @param aRegion the region inside the selection to scroll into view. //SelectionRegion
   * @param aIsSynchronous when true, scrolls the selection into view
   * before returning. If false, posts a request which is processed
   * at some point after the method returns.
   */
  /* void scrollSelectionIntoView (in short type, in short region, in boolean isSynchronous); */
  void ScrollSelectionIntoView(PRInt16 type, PRInt16 region, PRBool isSynchronous){
    nsresult __result = inner.ScrollSelectionIntoView(type, region, isSynchronous);
    CheckException(__result);
  }

  /**
   * RepaintSelection repaints the selection specified by aType.
   *
   * @param aType specifies the selection to repaint.
   */
  /* void repaintSelection (in short type); */
  void RepaintSelection(PRInt16 type){
    nsresult __result = inner.RepaintSelection(type);
    CheckException(__result);
  }

  /**
   * Set the caret as enabled or disabled. An enabled caret will
   * draw or blink when made visible. A disabled caret will never show up.
   * Can be called any time.
   * @param aEnable PR_TRUE to enable caret.  PR_FALSE to disable.
   * @return always NS_OK
   */
  /* void setCaretEnabled (in boolean enabled); */
  void SetCaretEnabled(PRBool enabled){
    nsresult __result = inner.SetCaretEnabled(enabled);
    CheckException(__result);
  }

  /**
   * Set the caret readonly or not. An readonly caret will
   * draw but not blink when made visible. 
   * @param aReadOnly PR_TRUE to enable caret.  PR_FALSE to disable.
   * @return always NS_OK
   */
  /* void setCaretReadOnly (in boolean readOnly); */
  void SetCaretReadOnly(PRBool readOnly){
    nsresult __result = inner.SetCaretReadOnly(readOnly);
    CheckException(__result);
  }

  /**
   * Gets the current state of the caret.
   * @param aEnabled  [OUT] set to the current caret state, as set by SetCaretEnabled
   * @return   if aOutEnabled==null, returns NS_ERROR_INVALID_ARG
   *           else NS_OK
   */
  /* boolean getCaretEnabled (); */
  PRBool GetCaretEnabled(){
    PRBool _retval;
    nsresult __result = inner.GetCaretEnabled(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Show the caret even in selections. By default the caret is hidden unless the
   * selection is collapsed. Use this function to show the caret even in selections.
   * @param aVisibility PR_TRUE to show the caret in selections.  PR_FALSE to hide.
   * @return always NS_OK
   */
  /* void setCaretVisibilityDuringSelection (in boolean visibility); */
  void SetCaretVisibilityDuringSelection(PRBool visibility){
    nsresult __result = inner.SetCaretVisibilityDuringSelection(visibility);
    CheckException(__result);
  }

  /** CharacterMove will move the selection one character forward/backward in the document.
   *  this will also have the effect of collapsing the selection if the aExtend = PR_FALSE
   *  the "point" of selection that is extended is considered the "focus" point. 
   *  or the last point adjusted by the selection.
   *  @param aForward forward or backward if PR_FALSE
   *  @param aExtend  should it collapse the selection of extend it?
   */
  /* void characterMove (in boolean forward, in boolean extend); */
  void CharacterMove(PRBool forward, PRBool extend){
    nsresult __result = inner.CharacterMove(forward, extend);
    CheckException(__result);
  }

  /** WordMove will move the selection one word forward/backward in the document.
   *  this will also have the effect of collapsing the selection if the aExtend = PR_FALSE
   *  the "point" of selection that is extended is considered the "focus" point. 
   *  or the last point adjusted by the selection.
   *  @param aForward forward or backward if PR_FALSE
   *  @param aExtend  should it collapse the selection of extend it?
   */
  /* void wordMove (in boolean forward, in boolean extend); */
  void WordMove(PRBool forward, PRBool extend){
    nsresult __result = inner.WordMove(forward, extend);
    CheckException(__result);
  }

  /** LineMove will move the selection one line forward/backward in the document.
   *  this will also have the effect of collapsing the selection if the aExtend = PR_FALSE
   *  the "point" of selection that is extended is considered the "focus" point. 
   *  or the last point adjusted by the selection.
   *  @param aForward forward or backward if PR_FALSE
   *  @param aExtend  should it collapse the selection of extend it?
   */
  /* void lineMove (in boolean forward, in boolean extend); */
  void LineMove(PRBool forward, PRBool extend){
    nsresult __result = inner.LineMove(forward, extend);
    CheckException(__result);
  }

  /** IntraLineMove will move the selection to the front of the line or end of the line
   *  in the document.
   *  this will also have the effect of collapsing the selection if the aExtend = PR_FALSE
   *  the "point" of selection that is extended is considered the "focus" point. 
   *  or the last point adjusted by the selection.
   *  @param aForward forward or backward if PR_FALSE
   *  @param aExtend  should it collapse the selection of extend it?
   */
  /* void intraLineMove (in boolean forward, in boolean extend); */
  void IntraLineMove(PRBool forward, PRBool extend){
    nsresult __result = inner.IntraLineMove(forward, extend);
    CheckException(__result);
  }

  /** PageMove will move the selection one page forward/backward in the document.
   *  this will also have the effect of collapsing the selection if the aExtend = PR_FALSE
   *  the "point" of selection that is extended is considered the "focus" point. 
   *  or the last point adjusted by the selection.
   *  @param aForward forward or backward if PR_FALSE
   *  @param aExtend  should it collapse the selection of extend it?
   */
  /* void pageMove (in boolean forward, in boolean extend); */
  void PageMove(PRBool forward, PRBool extend){
    nsresult __result = inner.PageMove(forward, extend);
    CheckException(__result);
  }

  /** CompleteScroll will move page view to the top or bottom of the document
   *  @param aForward forward or backward if PR_FALSE
   */
  /* void completeScroll (in boolean forward); */
  void CompleteScroll(PRBool forward){
    nsresult __result = inner.CompleteScroll(forward);
    CheckException(__result);
  }

  /** CompleteMove will move page view to the top or bottom of the document
   *  this will also have the effect of collapsing the selection if the aExtend = PR_FALSE
   *  the "point" of selection that is extended is considered the "focus" point. 
   *  or the last point adjusted by the selection.
   *  @param aForward forward or backward if PR_FALSE
   *  @param aExtend  should it collapse the selection of extend it?
   */
  /* void completeMove (in boolean forward, in boolean extend); */
  void CompleteMove(PRBool forward, PRBool extend){
    nsresult __result = inner.CompleteMove(forward, extend);
    CheckException(__result);
  }

  /** ScrollPage will scroll the page without affecting the selection.
   *  @param aForward scroll forward or backwards in selection
   */
  /* void scrollPage (in boolean forward); */
  void ScrollPage(PRBool forward){
    nsresult __result = inner.ScrollPage(forward);
    CheckException(__result);
  }

  /** ScrolLine will scroll line up or down dependent on the boolean
   *  @param aForward scroll forward or backwards in selection
   */
  /* void scrollLine (in boolean forward); */
  void ScrollLine(PRBool forward){
    nsresult __result = inner.ScrollLine(forward);
    CheckException(__result);
  }

  /** ScrolHorizontal will scroll left or right dependent on the boolean
   *  @param aLeft if true will scroll left. if not will scroll right.
   */
  /* void scrollHorizontal (in boolean left); */
  void ScrollHorizontal(PRBool left){
    nsresult __result = inner.ScrollHorizontal(left);
    CheckException(__result);
  }

  /** SelectAll will select the whole page
   */
  /* void selectAll (); */
  void SelectAll(){
    nsresult __result = inner.SelectAll();
    CheckException(__result);
  }

  /** CheckVisibility will return true if textnode and offsets are actually rendered 
   *  in the current precontext.
   *  @param aNode textNode to test
   *  @param aStartOffset  offset in dom to first char of textnode to test
   *  @param aEndOffset    offset in dom to last char of textnode to test
   *  @param aReturnBool   boolean returned TRUE if visible FALSE if not
   */
  /* boolean checkVisibility (in nsIDOMNode node, in short startOffset, in short endOffset); */
  PRBool CheckVisibility(nsIDOMNodeD node, PRInt16 startOffset, PRInt16 endOffset){
    PRBool _retval;
    nsresult __result = inner.CheckVisibility(node ? cast(nsIDOMNode)node : null, startOffset, endOffset, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISelectionController inner;

}

