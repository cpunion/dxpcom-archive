/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessibleSelectable.idl
 */

module mozilla.xpcom.nsIAccessibleSelectable;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIAccessible;
public import mozilla.xpcom.nsIArray;


/* starting interface:    nsIAccessibleSelectable */
const char[] NS_IACCESSIBLESELECTABLE_IID_STR = "34d268d6-1dd2-11b2-9d63-83a5e0ada290";

const nsIID NS_IACCESSIBLESELECTABLE_IID= 
  {0x34d268d6, 0x1dd2, 0x11b2, 
    [ 0x9d, 0x63, 0x83, 0xa5, 0xe0, 0xad, 0xa2, 0x90 ]};

/**
 * An interface for the accessibility module and in-process accessibility clients
 * for dealing with getting and changing the selection of accessible nodes.
 *
 * @status UNDER_REVIEW
 */
extern(Windows)
interface nsIAccessibleSelectable : nsISupports {
  static const char[] IID_STR = NS_IACCESSIBLESELECTABLE_IID_STR;
  static const nsIID IID = NS_IACCESSIBLESELECTABLE_IID;

  /**
     * Return an nsIArray of selected nsIAccessible children 
     */
  /* nsIArray GetSelectedChildren (); */
  nsresult GetSelectedChildren(nsIArray *_retval);

  /**
     * Returns the number of accessible children currently selected.
     */
  /* readonly attribute long selectionCount; */
  nsresult GetSelectionCount(PRInt32 *aSelectionCount);

  /**
     * Adds the specified accessible child of the object to the
     * object's selection.
     * If the specified object is already selected, then it does nothing.
     * @throws NS_ERROR_FAILURE if the specified object is not selectable.
     */
  /* void addChildToSelection (in long index); */
  nsresult AddChildToSelection(PRInt32 index);

  /**
     * Removes the specified child of the object from the object's selection.
     * If the specified object was not selected, then it does nothing.
     * @throws NS_ERROR_FAILURE if the specified object is not selectable.
     */
  /* void removeChildFromSelection (in long index); */
  nsresult RemoveChildFromSelection(PRInt32 index);

  /**
     * Clears the selection in the object so that no children in the object
     * are selected.
     */
  /* void clearSelection (); */
  nsresult ClearSelection();

  /**
     * Returns a reference to the accessible object representing the specified
     * selected child of the object.
     * @param index Zero-based selected accessible child index 
     * @return The nth selected accessible child
     */
  /* nsIAccessible refSelection (in long index); */
  nsresult RefSelection(PRInt32 index, nsIAccessible *_retval);

  /**
      * Determines if the current child of this object is selected
      * @param The zero-based accessible child index
      * @return Returns true if the child is selected, false if not.
      */
  /* boolean isChildSelected (in long index); */
  nsresult IsChildSelected(PRInt32 index, PRBool *_retval);

  /**
     * Select all children
     * @return If the object does not accept multiple selection, return false.
     *         Otherwise, returns true.
     */
  /* boolean selectAllSelection (); */
  nsresult SelectAllSelection(PRBool *_retval);

}

