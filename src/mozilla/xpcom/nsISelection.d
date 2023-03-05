/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISelection.idl
 */

module mozilla.xpcom.nsISelection;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMNode; /* forward declaration */

public import mozilla.xpcom.nsIDOMRange; /* forward declaration */


/* starting interface:    nsISelection */
const char[] NS_ISELECTION_IID_STR = "b2c7ed59-8634-4352-9e37-5484c8b6e4e1";

const nsIID NS_ISELECTION_IID= 
  {0xb2c7ed59, 0x8634, 0x4352, 
    [ 0x9e, 0x37, 0x54, 0x84, 0xc8, 0xb6, 0xe4, 0xe1 ]};

/**
 * Interface for manipulating and querying the current selected range
 * of nodes within the document.
 *
 * @status FROZEN
 * @version 1.0
 */
extern(Windows)
interface nsISelection : nsISupports {
  static const char[] IID_STR = NS_ISELECTION_IID_STR;
  static const nsIID IID = NS_ISELECTION_IID;

  /**
     * The node representing one end of the selection.
     */
  /* readonly attribute nsIDOMNode anchorNode; */
  nsresult GetAnchorNode(nsIDOMNode  *aAnchorNode);

  /**
     * The offset within the (text) node where the selection begins.
     */
  /* readonly attribute long anchorOffset; */
  nsresult GetAnchorOffset(PRInt32 *aAnchorOffset);

  /**
     * The node with keyboard focus.
     */
  /* readonly attribute nsIDOMNode focusNode; */
  nsresult GetFocusNode(nsIDOMNode  *aFocusNode);

  /**
     * The offset within the (text) node where focus starts.
     */
  /* readonly attribute long focusOffset; */
  nsresult GetFocusOffset(PRInt32 *aFocusOffset);

  /**
     * Indicates if the selection is collapsed or not.
     */
  /* readonly attribute boolean isCollapsed; */
  nsresult GetIsCollapsed(PRBool *aIsCollapsed);

  /**
     * Returns the number of ranges in the selection.
     */
  /* readonly attribute long rangeCount; */
  nsresult GetRangeCount(PRInt32 *aRangeCount);

  /**
     * Returns the range at the specified index.
     */
  /* nsIDOMRange getRangeAt (in long index); */
  nsresult GetRangeAt(PRInt32 index, nsIDOMRange *_retval);

  /**
     * Collapses the selection to a single point, at the specified offset
     * in the given DOM node. When the selection is collapsed, and the content
     * is focused and editable, the caret will blink there.
     * @param parentNode      The given dom node where the selection will be set
     * @param offset          Where in given dom node to place the selection (the offset into the given node)
     */
  /* void collapse (in nsIDOMNode parentNode, in long offset); */
  nsresult Collapse(nsIDOMNode parentNode, PRInt32 offset);

  /**
     * Extends the selection by moving the focus to the specified node and offset,
     * preserving the anchor postion.  The new selection end result will always
     * be from the anchor to the new focus, regardless of direction.
     * @param parentNode      The node where the selection will be extended to
     * @param offset          Where in node to place the offset in the new focused node
     */
  /* void extend (in nsIDOMNode parentNode, in long offset); */
  nsresult Extend(nsIDOMNode parentNode, PRInt32 offset);

  /**
     * Collapses the whole selection to a single point at the start
     * of the current selection (irrespective of direction).  If content
     * is focused and editable, the caret will blink there.
     */
  /* void collapseToStart (); */
  nsresult CollapseToStart();

  /**
     * Collapses the whole selection to a single point at the end
     * of the current selection (irrespective of direction).  If content
     * is focused and editable, the caret will blink there.
     */
  /* void collapseToEnd (); */
  nsresult CollapseToEnd();

  /**
     * The value of entirelyContained determines the detail of the search to determine if
     * the selection contains the node.  If entirelyContained is set to PR_TRUE, t
     * or false if
     * @param node      The node where the selection will be extended to
     * @param entirelyContained Whether
     */
  /* boolean containsNode (in nsIDOMNode node, in boolean entirelyContained); */
  nsresult ContainsNode(nsIDOMNode node, PRBool entirelyContained, PRBool *_retval);

  /**
     * Adds all children of the specified node to the selection.
     * @param parentNode  the parent of the children to be added to the selection.
     */
  /* void selectAllChildren (in nsIDOMNode parentNode); */
  nsresult SelectAllChildren(nsIDOMNode parentNode);

  /**
     * Adds a range to the current selection.
     */
  /* void addRange (in nsIDOMRange range); */
  nsresult AddRange(nsIDOMRange range);

  /**
     * Removes a range from the current selection.
     */
  /* void removeRange (in nsIDOMRange range); */
  nsresult RemoveRange(nsIDOMRange range);

  /**
     * Removes all ranges from the current selection.
     */
  /* void removeAllRanges (); */
  nsresult RemoveAllRanges();

  /**
     * Deletes this selection from document the nodes belong to.
     */
  /* void deleteFromDocument (); */
  nsresult DeleteFromDocument();

  /**
     * Modifies the cursor Bidi level after a change in keyboard direction
     * @param langRTL is PR_TRUE if the new language is right-to-left or
     *                PR_FALSE if the new language is left-to-right.
     */
  /* void selectionLanguageChange (in boolean langRTL); */
  nsresult SelectionLanguageChange(PRBool langRTL);

  /**
     * Returns the whole selection into a plain text string.
     */
  /* wstring toString (); */
  nsresult ToString(PRUnichar **_retval);

}

