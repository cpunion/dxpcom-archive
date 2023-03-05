/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessibleSelectable.idl
 */

module mozilla.dxpcom.nsIAccessibleSelectableD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAccessibleSelectable;


public import mozilla.dxpcom.nsIAccessibleSelectableD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIAccessible;
public import mozilla.dxpcom.nsIAccessibleD;
public import mozilla.xpcom.nsIArray;
public import mozilla.dxpcom.nsIArrayD;


/* starting wrapper class:    nsIAccessibleSelectable */
/**
 * An interface for the accessibility module and in-process accessibility clients
 * for dealing with getting and changing the selection of accessible nodes.
 *
 * @status UNDER_REVIEW
 */
class nsIAccessibleSelectableD : public nsISupportsD {

  static const nsIID IID = NS_IACCESSIBLESELECTABLE_IID;


  alias nsIAccessibleSelectable InnerType;

  this(nsIAccessibleSelectable intr){
    super(intr);
    this.inner = intr;
  }

  nsIAccessibleSelectable opCast() {
    return inner;
  }

  void opAssign(nsIAccessibleSelectable value) {
    inner = value;
  }

  /**
     * Return an nsIArray of selected nsIAccessible children 
     */
  /* nsIArray GetSelectedChildren (); */
  nsIArrayD  GetSelectedChildren(){
    nsIArray _retval;
    nsresult __result = inner.GetSelectedChildren(&_retval);
    CheckException(__result);
    return new nsIArrayD(_retval);
  }

  /**
     * Returns the number of accessible children currently selected.
     */
  /* readonly attribute long selectionCount; */
  PRInt32 SelectionCount(){
    PRInt32 value;
    nsresult __result = inner.GetSelectionCount(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Adds the specified accessible child of the object to the
     * object's selection.
     * If the specified object is already selected, then it does nothing.
     * @throws NS_ERROR_FAILURE if the specified object is not selectable.
     */
  /* void addChildToSelection (in long index); */
  void AddChildToSelection(PRInt32 index){
    nsresult __result = inner.AddChildToSelection(index);
    CheckException(__result);
  }

  /**
     * Removes the specified child of the object from the object's selection.
     * If the specified object was not selected, then it does nothing.
     * @throws NS_ERROR_FAILURE if the specified object is not selectable.
     */
  /* void removeChildFromSelection (in long index); */
  void RemoveChildFromSelection(PRInt32 index){
    nsresult __result = inner.RemoveChildFromSelection(index);
    CheckException(__result);
  }

  /**
     * Clears the selection in the object so that no children in the object
     * are selected.
     */
  /* void clearSelection (); */
  void ClearSelection(){
    nsresult __result = inner.ClearSelection();
    CheckException(__result);
  }

  /**
     * Returns a reference to the accessible object representing the specified
     * selected child of the object.
     * @param index Zero-based selected accessible child index 
     * @return The nth selected accessible child
     */
  /* nsIAccessible refSelection (in long index); */
  nsIAccessibleD  RefSelection(PRInt32 index){
    nsIAccessible _retval;
    nsresult __result = inner.RefSelection(index, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /**
      * Determines if the current child of this object is selected
      * @param The zero-based accessible child index
      * @return Returns true if the child is selected, false if not.
      */
  /* boolean isChildSelected (in long index); */
  PRBool IsChildSelected(PRInt32 index){
    PRBool _retval;
    nsresult __result = inner.IsChildSelected(index, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Select all children
     * @return If the object does not accept multiple selection, return false.
     *         Otherwise, returns true.
     */
  /* boolean selectAllSelection (); */
  PRBool SelectAllSelection(){
    PRBool _retval;
    nsresult __result = inner.SelectAllSelection(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIAccessibleSelectable inner;

}

