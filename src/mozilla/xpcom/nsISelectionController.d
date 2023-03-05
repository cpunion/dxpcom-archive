/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISelectionController.idl
 */

module mozilla.xpcom.nsISelectionController;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISelection;
public import mozilla.xpcom.nsISelectionDisplay;

public import mozilla.xpcom.nsIDOMNode; /* forward declaration */

public import mozilla.xpcom.nsISelection; /* forward declaration */

public import mozilla.xpcom.nsISelectionDisplay; /* forward declaration */


/* starting interface:    nsISelectionController */
const char[] NS_ISELECTIONCONTROLLER_IID_STR = "93aaa4a9-b78e-42eb-9d67-5de77ee2f54b";

const nsIID NS_ISELECTIONCONTROLLER_IID= 
  {0x93aaa4a9, 0xb78e, 0x42eb, 
    [ 0x9d, 0x67, 0x5d, 0xe7, 0x7e, 0xe2, 0xf5, 0x4b ]};

extern(Windows)
interface nsISelectionController : nsISelectionDisplay {
  static const char[] IID_STR = NS_ISELECTIONCONTROLLER_IID_STR;
  static const nsIID IID = NS_ISELECTIONCONTROLLER_IID;

  enum { SELECTION_NONE = 0 };

  enum { SELECTION_NORMAL = 1 };

  enum { SELECTION_SPELLCHECK = 2 };

  enum { SELECTION_IME_RAWINPUT = 4 };

  enum { SELECTION_IME_SELECTEDRAWTEXT = 8 };

  enum { SELECTION_IME_CONVERTEDTEXT = 16 };

  enum { SELECTION_IME_SELECTEDCONVERTEDTEXT = 32 };

  enum { SELECTION_ACCESSIBILITY = 64 };

  enum { NUM_SELECTIONTYPES = 8 };

  enum { SELECTION_ANCHOR_REGION = 0 };

  enum { SELECTION_FOCUS_REGION = 1 };

  enum { NUM_SELECTION_REGIONS = 2 };

  enum { SELECTION_OFF = 0 };

  enum { SELECTION_HIDDEN = 1 };

  enum { SELECTION_ON = 2 };

  enum { SELECTION_DISABLED = 3 };

  enum { SELECTION_ATTENTION = 4 };

  /**
   * SetDisplaySelection will set the display mode for the selection. OFF,ON,DISABLED
   */
  /* void setDisplaySelection (in short toggle); */
  nsresult SetDisplaySelection(PRInt16 toggle);

  /**
   * GetDisplaySelection will get the display mode for the selection. OFF,ON,DISABLED
   */
  /* short getDisplaySelection (); */
  nsresult GetDisplaySelection(PRInt16 *_retval);

  /**
   * GetSelection will return the selection that the presentation
   *  shell may implement.
   *
   * @param aType will hold the type of selection //SelectionType
   * @param _return will hold the return value
   */
  /* nsISelection getSelection (in short type); */
  nsresult GetSelection(PRInt16 type, nsISelection *_retval);

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
  nsresult ScrollSelectionIntoView(PRInt16 type, PRInt16 region, PRBool isSynchronous);

  /**
   * RepaintSelection repaints the selection specified by aType.
   *
   * @param aType specifies the selection to repaint.
   */
  /* void repaintSelection (in short type); */
  nsresult RepaintSelection(PRInt16 type);

  /**
   * Set the caret as enabled or disabled. An enabled caret will
   * draw or blink when made visible. A disabled caret will never show up.
   * Can be called any time.
   * @param aEnable PR_TRUE to enable caret.  PR_FALSE to disable.
   * @return always NS_OK
   */
  /* void setCaretEnabled (in boolean enabled); */
  nsresult SetCaretEnabled(PRBool enabled);

  /**
   * Set the caret readonly or not. An readonly caret will
   * draw but not blink when made visible. 
   * @param aReadOnly PR_TRUE to enable caret.  PR_FALSE to disable.
   * @return always NS_OK
   */
  /* void setCaretReadOnly (in boolean readOnly); */
  nsresult SetCaretReadOnly(PRBool readOnly);

  /**
   * Gets the current state of the caret.
   * @param aEnabled  [OUT] set to the current caret state, as set by SetCaretEnabled
   * @return   if aOutEnabled==null, returns NS_ERROR_INVALID_ARG
   *           else NS_OK
   */
  /* boolean getCaretEnabled (); */
  nsresult GetCaretEnabled(PRBool *_retval);

  /**
   * Show the caret even in selections. By default the caret is hidden unless the
   * selection is collapsed. Use this function to show the caret even in selections.
   * @param aVisibility PR_TRUE to show the caret in selections.  PR_FALSE to hide.
   * @return always NS_OK
   */
  /* void setCaretVisibilityDuringSelection (in boolean visibility); */
  nsresult SetCaretVisibilityDuringSelection(PRBool visibility);

  /** CharacterMove will move the selection one character forward/backward in the document.
   *  this will also have the effect of collapsing the selection if the aExtend = PR_FALSE
   *  the "point" of selection that is extended is considered the "focus" point. 
   *  or the last point adjusted by the selection.
   *  @param aForward forward or backward if PR_FALSE
   *  @param aExtend  should it collapse the selection of extend it?
   */
  /* void characterMove (in boolean forward, in boolean extend); */
  nsresult CharacterMove(PRBool forward, PRBool extend);

  /** WordMove will move the selection one word forward/backward in the document.
   *  this will also have the effect of collapsing the selection if the aExtend = PR_FALSE
   *  the "point" of selection that is extended is considered the "focus" point. 
   *  or the last point adjusted by the selection.
   *  @param aForward forward or backward if PR_FALSE
   *  @param aExtend  should it collapse the selection of extend it?
   */
  /* void wordMove (in boolean forward, in boolean extend); */
  nsresult WordMove(PRBool forward, PRBool extend);

  /** LineMove will move the selection one line forward/backward in the document.
   *  this will also have the effect of collapsing the selection if the aExtend = PR_FALSE
   *  the "point" of selection that is extended is considered the "focus" point. 
   *  or the last point adjusted by the selection.
   *  @param aForward forward or backward if PR_FALSE
   *  @param aExtend  should it collapse the selection of extend it?
   */
  /* void lineMove (in boolean forward, in boolean extend); */
  nsresult LineMove(PRBool forward, PRBool extend);

  /** IntraLineMove will move the selection to the front of the line or end of the line
   *  in the document.
   *  this will also have the effect of collapsing the selection if the aExtend = PR_FALSE
   *  the "point" of selection that is extended is considered the "focus" point. 
   *  or the last point adjusted by the selection.
   *  @param aForward forward or backward if PR_FALSE
   *  @param aExtend  should it collapse the selection of extend it?
   */
  /* void intraLineMove (in boolean forward, in boolean extend); */
  nsresult IntraLineMove(PRBool forward, PRBool extend);

  /** PageMove will move the selection one page forward/backward in the document.
   *  this will also have the effect of collapsing the selection if the aExtend = PR_FALSE
   *  the "point" of selection that is extended is considered the "focus" point. 
   *  or the last point adjusted by the selection.
   *  @param aForward forward or backward if PR_FALSE
   *  @param aExtend  should it collapse the selection of extend it?
   */
  /* void pageMove (in boolean forward, in boolean extend); */
  nsresult PageMove(PRBool forward, PRBool extend);

  /** CompleteScroll will move page view to the top or bottom of the document
   *  @param aForward forward or backward if PR_FALSE
   */
  /* void completeScroll (in boolean forward); */
  nsresult CompleteScroll(PRBool forward);

  /** CompleteMove will move page view to the top or bottom of the document
   *  this will also have the effect of collapsing the selection if the aExtend = PR_FALSE
   *  the "point" of selection that is extended is considered the "focus" point. 
   *  or the last point adjusted by the selection.
   *  @param aForward forward or backward if PR_FALSE
   *  @param aExtend  should it collapse the selection of extend it?
   */
  /* void completeMove (in boolean forward, in boolean extend); */
  nsresult CompleteMove(PRBool forward, PRBool extend);

  /** ScrollPage will scroll the page without affecting the selection.
   *  @param aForward scroll forward or backwards in selection
   */
  /* void scrollPage (in boolean forward); */
  nsresult ScrollPage(PRBool forward);

  /** ScrolLine will scroll line up or down dependent on the boolean
   *  @param aForward scroll forward or backwards in selection
   */
  /* void scrollLine (in boolean forward); */
  nsresult ScrollLine(PRBool forward);

  /** ScrolHorizontal will scroll left or right dependent on the boolean
   *  @param aLeft if true will scroll left. if not will scroll right.
   */
  /* void scrollHorizontal (in boolean left); */
  nsresult ScrollHorizontal(PRBool left);

  /** SelectAll will select the whole page
   */
  /* void selectAll (); */
  nsresult SelectAll();

  /** CheckVisibility will return true if textnode and offsets are actually rendered 
   *  in the current precontext.
   *  @param aNode textNode to test
   *  @param aStartOffset  offset in dom to first char of textnode to test
   *  @param aEndOffset    offset in dom to last char of textnode to test
   *  @param aReturnBool   boolean returned TRUE if visible FALSE if not
   */
  /* boolean checkVisibility (in nsIDOMNode node, in short startOffset, in short endOffset); */
  nsresult CheckVisibility(nsIDOMNode node, PRInt16 startOffset, PRInt16 endOffset, PRBool *_retval);

}

