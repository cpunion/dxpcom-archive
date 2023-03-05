/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITreeSelection.idl
 */

module mozilla.dxpcom.nsITreeSelectionD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsITreeSelection;


public import mozilla.dxpcom.nsITreeSelectionD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsITreeBoxObject;

public import mozilla.dxpcom.nsITreeBoxObjectD;


/* starting wrapper class:    nsITreeSelection */
class nsITreeSelectionD : public nsISupportsD {

  static const nsIID IID = NS_ITREESELECTION_IID;


  alias nsITreeSelection InnerType;

  this(nsITreeSelection intr){
    super(intr);
    this.inner = intr;
  }

  nsITreeSelection opCast() {
    return inner;
  }

  void opAssign(nsITreeSelection value) {
    inner = value;
  }

  /**
   * The tree widget for this selection.
   */
  /* attribute nsITreeBoxObject tree; */
  nsITreeBoxObjectD  Tree(){
    nsITreeBoxObject value;
    nsresult __result = inner.GetTree(&value);
    CheckException(__result);
    return new nsITreeBoxObjectD(value);
  }
  void Tree(nsITreeBoxObjectD  aTree){
    nsITreeBoxObject value;
    nsresult __result = inner.SetTree(value);
    CheckException(__result);
  }

  /**
   * This attribute is a boolean indicating single selection.
   */
  /* readonly attribute boolean single; */
  PRBool Single(){
    PRBool value;
    nsresult __result = inner.GetSingle(&value);
    CheckException(__result);
    return value;
  }

  /**
   * The number of rows currently selected in this tree.
   */
  /* readonly attribute long count; */
  PRInt32 Count(){
    PRInt32 value;
    nsresult __result = inner.GetCount(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Indicates whether or not the row at the specified index is
   * part of the selection.
   */
  /* boolean isSelected (in long index); */
  PRBool IsSelected(PRInt32 index){
    PRBool _retval;
    nsresult __result = inner.IsSelected(index, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Deselect all rows and select the row at the specified index. 
   */
  /* void select (in long index); */
  void Select(PRInt32 index){
    nsresult __result = inner.Select(index);
    CheckException(__result);
  }

  /**
   * Perform a timed select.
   */
  /* void timedSelect (in long index, in long delay); */
  void TimedSelect(PRInt32 index, PRInt32 delay){
    nsresult __result = inner.TimedSelect(index, delay);
    CheckException(__result);
  }

  /**
   * Toggle the selection state of the row at the specified index.
   */
  /* void toggleSelect (in long index); */
  void ToggleSelect(PRInt32 index){
    nsresult __result = inner.ToggleSelect(index);
    CheckException(__result);
  }

  /**
   * Select the range specified by the indices.  If augment is true,
   * then we add the range to the selection without clearing out anything
   * else.  If augment is false, everything is cleared except for the specified range.
   */
  /* void rangedSelect (in long startIndex, in long endIndex, in boolean augment); */
  void RangedSelect(PRInt32 startIndex, PRInt32 endIndex, PRBool augment){
    nsresult __result = inner.RangedSelect(startIndex, endIndex, augment);
    CheckException(__result);
  }

  /**
   * Clears the range.
   */
  /* void clearRange (in long startIndex, in long endIndex); */
  void ClearRange(PRInt32 startIndex, PRInt32 endIndex){
    nsresult __result = inner.ClearRange(startIndex, endIndex);
    CheckException(__result);
  }

  /**
   * Clears the selection.
   */
  /* void clearSelection (); */
  void ClearSelection(){
    nsresult __result = inner.ClearSelection();
    CheckException(__result);
  }

  /**
   * Inverts the selection.
   */
  /* void invertSelection (); */
  void InvertSelection(){
    nsresult __result = inner.InvertSelection();
    CheckException(__result);
  }

  /**
   * Selects all rows.
   */
  /* void selectAll (); */
  void SelectAll(){
    nsresult __result = inner.SelectAll();
    CheckException(__result);
  }

  /**
   * Iterate the selection using these methods.
   */
  /* long getRangeCount (); */
  PRInt32 GetRangeCount(){
    PRInt32 _retval;
    nsresult __result = inner.GetRangeCount(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void getRangeAt (in long i, out long min, out long max); */
  void GetRangeAt(PRInt32 i, out PRInt32 min, out PRInt32 max){
    nsresult __result = inner.GetRangeAt(i, &min, &max);
    CheckException(__result);
  }

  /**
   * Can be used to invalidate the selection.
   */
  /* void invalidateSelection (); */
  void InvalidateSelection(){
    nsresult __result = inner.InvalidateSelection();
    CheckException(__result);
  }

  /**
   * Called when the row count changes to adjust selection indices.
   */
  /* void adjustSelection (in long index, in long count); */
  void AdjustSelection(PRInt32 index, PRInt32 count){
    nsresult __result = inner.AdjustSelection(index, count);
    CheckException(__result);
  }

  /**
   * This attribute is a boolean indicating whether or not the
   * "select" event should fire when the selection is changed using
   * one of our methods.  A view can use this to temporarily suppress
   * the selection while manipulating all of the indices, e.g., on 
   * a sort.
   */
  /* attribute boolean selectEventsSuppressed; */
  PRBool SelectEventsSuppressed(){
    PRBool value;
    nsresult __result = inner.GetSelectEventsSuppressed(&value);
    CheckException(__result);
    return value;
  }
  void SelectEventsSuppressed(PRBool aSelectEventsSuppressed){
    nsresult __result = inner.SetSelectEventsSuppressed(aSelectEventsSuppressed);
    CheckException(__result);
  }

  /**
   * The current item (the one that gets a focus rect in addition to being
   * selected).
   */
  /* attribute long currentIndex; */
  PRInt32 CurrentIndex(){
    PRInt32 value;
    nsresult __result = inner.GetCurrentIndex(&value);
    CheckException(__result);
    return value;
  }
  void CurrentIndex(PRInt32 aCurrentIndex){
    nsresult __result = inner.SetCurrentIndex(aCurrentIndex);
    CheckException(__result);
  }

  /**
   * The selection "pivot".  This is the first item the user selected as
   * part of a ranged select.
   */
  /* readonly attribute long shiftSelectPivot; */
  PRInt32 ShiftSelectPivot(){
    PRInt32 value;
    nsresult __result = inner.GetShiftSelectPivot(&value);
    CheckException(__result);
    return value;
  }

private:
  nsITreeSelection inner;

}

