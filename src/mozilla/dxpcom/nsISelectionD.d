/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISelection.idl
 */

module mozilla.dxpcom.nsISelectionD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISelection;


public import mozilla.dxpcom.nsISelectionD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMNode;

public import mozilla.dxpcom.nsIDOMNodeD;

public import mozilla.xpcom.nsIDOMRange;

public import mozilla.dxpcom.nsIDOMRangeD;


/* starting wrapper class:    nsISelection */
/**
 * Interface for manipulating and querying the current selected range
 * of nodes within the document.
 *
 * @status FROZEN
 * @version 1.0
 */
class nsISelectionD : public nsISupportsD {

  static const nsIID IID = NS_ISELECTION_IID;


  alias nsISelection InnerType;

  this(nsISelection intr){
    super(intr);
    this.inner = intr;
  }

  nsISelection opCast() {
    return inner;
  }

  void opAssign(nsISelection value) {
    inner = value;
  }

  /**
     * The node representing one end of the selection.
     */
  /* readonly attribute nsIDOMNode anchorNode; */
  nsIDOMNodeD  AnchorNode(){
    nsIDOMNode value;
    nsresult __result = inner.GetAnchorNode(&value);
    CheckException(__result);
    return new nsIDOMNodeD(value);
  }

  /**
     * The offset within the (text) node where the selection begins.
     */
  /* readonly attribute long anchorOffset; */
  PRInt32 AnchorOffset(){
    PRInt32 value;
    nsresult __result = inner.GetAnchorOffset(&value);
    CheckException(__result);
    return value;
  }

  /**
     * The node with keyboard focus.
     */
  /* readonly attribute nsIDOMNode focusNode; */
  nsIDOMNodeD  FocusNode(){
    nsIDOMNode value;
    nsresult __result = inner.GetFocusNode(&value);
    CheckException(__result);
    return new nsIDOMNodeD(value);
  }

  /**
     * The offset within the (text) node where focus starts.
     */
  /* readonly attribute long focusOffset; */
  PRInt32 FocusOffset(){
    PRInt32 value;
    nsresult __result = inner.GetFocusOffset(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Indicates if the selection is collapsed or not.
     */
  /* readonly attribute boolean isCollapsed; */
  PRBool IsCollapsed(){
    PRBool value;
    nsresult __result = inner.GetIsCollapsed(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Returns the number of ranges in the selection.
     */
  /* readonly attribute long rangeCount; */
  PRInt32 RangeCount(){
    PRInt32 value;
    nsresult __result = inner.GetRangeCount(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Returns the range at the specified index.
     */
  /* nsIDOMRange getRangeAt (in long index); */
  nsIDOMRangeD  GetRangeAt(PRInt32 index){
    nsIDOMRange _retval;
    nsresult __result = inner.GetRangeAt(index, &_retval);
    CheckException(__result);
    return new nsIDOMRangeD(_retval);
  }

  /**
     * Collapses the selection to a single point, at the specified offset
     * in the given DOM node. When the selection is collapsed, and the content
     * is focused and editable, the caret will blink there.
     * @param parentNode      The given dom node where the selection will be set
     * @param offset          Where in given dom node to place the selection (the offset into the given node)
     */
  /* void collapse (in nsIDOMNode parentNode, in long offset); */
  void Collapse(nsIDOMNodeD parentNode, PRInt32 offset){
    nsresult __result = inner.Collapse(parentNode ? cast(nsIDOMNode)parentNode : null, offset);
    CheckException(__result);
  }

  /**
     * Extends the selection by moving the focus to the specified node and offset,
     * preserving the anchor postion.  The new selection end result will always
     * be from the anchor to the new focus, regardless of direction.
     * @param parentNode      The node where the selection will be extended to
     * @param offset          Where in node to place the offset in the new focused node
     */
  /* void extend (in nsIDOMNode parentNode, in long offset); */
  void Extend(nsIDOMNodeD parentNode, PRInt32 offset){
    nsresult __result = inner.Extend(parentNode ? cast(nsIDOMNode)parentNode : null, offset);
    CheckException(__result);
  }

  /**
     * Collapses the whole selection to a single point at the start
     * of the current selection (irrespective of direction).  If content
     * is focused and editable, the caret will blink there.
     */
  /* void collapseToStart (); */
  void CollapseToStart(){
    nsresult __result = inner.CollapseToStart();
    CheckException(__result);
  }

  /**
     * Collapses the whole selection to a single point at the end
     * of the current selection (irrespective of direction).  If content
     * is focused and editable, the caret will blink there.
     */
  /* void collapseToEnd (); */
  void CollapseToEnd(){
    nsresult __result = inner.CollapseToEnd();
    CheckException(__result);
  }

  /**
     * The value of entirelyContained determines the detail of the search to determine if
     * the selection contains the node.  If entirelyContained is set to PR_TRUE, t
     * or false if
     * @param node      The node where the selection will be extended to
     * @param entirelyContained Whether
     */
  /* boolean containsNode (in nsIDOMNode node, in boolean entirelyContained); */
  PRBool ContainsNode(nsIDOMNodeD node, PRBool entirelyContained){
    PRBool _retval;
    nsresult __result = inner.ContainsNode(node ? cast(nsIDOMNode)node : null, entirelyContained, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Adds all children of the specified node to the selection.
     * @param parentNode  the parent of the children to be added to the selection.
     */
  /* void selectAllChildren (in nsIDOMNode parentNode); */
  void SelectAllChildren(nsIDOMNodeD parentNode){
    nsresult __result = inner.SelectAllChildren(parentNode ? cast(nsIDOMNode)parentNode : null);
    CheckException(__result);
  }

  /**
     * Adds a range to the current selection.
     */
  /* void addRange (in nsIDOMRange range); */
  void AddRange(nsIDOMRangeD range){
    nsresult __result = inner.AddRange(range ? cast(nsIDOMRange)range : null);
    CheckException(__result);
  }

  /**
     * Removes a range from the current selection.
     */
  /* void removeRange (in nsIDOMRange range); */
  void RemoveRange(nsIDOMRangeD range){
    nsresult __result = inner.RemoveRange(range ? cast(nsIDOMRange)range : null);
    CheckException(__result);
  }

  /**
     * Removes all ranges from the current selection.
     */
  /* void removeAllRanges (); */
  void RemoveAllRanges(){
    nsresult __result = inner.RemoveAllRanges();
    CheckException(__result);
  }

  /**
     * Deletes this selection from document the nodes belong to.
     */
  /* void deleteFromDocument (); */
  void DeleteFromDocument(){
    nsresult __result = inner.DeleteFromDocument();
    CheckException(__result);
  }

  /**
     * Modifies the cursor Bidi level after a change in keyboard direction
     * @param langRTL is PR_TRUE if the new language is right-to-left or
     *                PR_FALSE if the new language is left-to-right.
     */
  /* void selectionLanguageChange (in boolean langRTL); */
  void SelectionLanguageChange(PRBool langRTL){
    nsresult __result = inner.SelectionLanguageChange(langRTL);
    CheckException(__result);
  }

  /**
     * Returns the whole selection into a plain text string.
     */
  /* wstring toString (); */
  PRUnichar* ToString(){
    PRUnichar* _retval;
    nsresult __result = inner.ToString(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISelection inner;

}

