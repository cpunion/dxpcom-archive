/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITreeSelection.idl
 */

module mozilla.xpcom.nsITreeSelection;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsITreeBoxObject; /* forward declaration */


/* starting interface:    nsITreeSelection */
const char[] NS_ITREESELECTION_IID_STR = "f8a13364-184e-4da3-badf-5c04837537f8";

const nsIID NS_ITREESELECTION_IID= 
  {0xf8a13364, 0x184e, 0x4da3, 
    [ 0xba, 0xdf, 0x5c, 0x04, 0x83, 0x75, 0x37, 0xf8 ]};

extern(Windows)
interface nsITreeSelection : nsISupports {
  static const char[] IID_STR = NS_ITREESELECTION_IID_STR;
  static const nsIID IID = NS_ITREESELECTION_IID;

  /**
   * The tree widget for this selection.
   */
  /* attribute nsITreeBoxObject tree; */
  nsresult GetTree(nsITreeBoxObject  *aTree);
  nsresult SetTree(nsITreeBoxObject  aTree);

  /**
   * This attribute is a boolean indicating single selection.
   */
  /* readonly attribute boolean single; */
  nsresult GetSingle(PRBool *aSingle);

  /**
   * The number of rows currently selected in this tree.
   */
  /* readonly attribute long count; */
  nsresult GetCount(PRInt32 *aCount);

  /**
   * Indicates whether or not the row at the specified index is
   * part of the selection.
   */
  /* boolean isSelected (in long index); */
  nsresult IsSelected(PRInt32 index, PRBool *_retval);

  /**
   * Deselect all rows and select the row at the specified index. 
   */
  /* void select (in long index); */
  nsresult Select(PRInt32 index);

  /**
   * Perform a timed select.
   */
  /* void timedSelect (in long index, in long delay); */
  nsresult TimedSelect(PRInt32 index, PRInt32 delay);

  /**
   * Toggle the selection state of the row at the specified index.
   */
  /* void toggleSelect (in long index); */
  nsresult ToggleSelect(PRInt32 index);

  /**
   * Select the range specified by the indices.  If augment is true,
   * then we add the range to the selection without clearing out anything
   * else.  If augment is false, everything is cleared except for the specified range.
   */
  /* void rangedSelect (in long startIndex, in long endIndex, in boolean augment); */
  nsresult RangedSelect(PRInt32 startIndex, PRInt32 endIndex, PRBool augment);

  /**
   * Clears the range.
   */
  /* void clearRange (in long startIndex, in long endIndex); */
  nsresult ClearRange(PRInt32 startIndex, PRInt32 endIndex);

  /**
   * Clears the selection.
   */
  /* void clearSelection (); */
  nsresult ClearSelection();

  /**
   * Inverts the selection.
   */
  /* void invertSelection (); */
  nsresult InvertSelection();

  /**
   * Selects all rows.
   */
  /* void selectAll (); */
  nsresult SelectAll();

  /**
   * Iterate the selection using these methods.
   */
  /* long getRangeCount (); */
  nsresult GetRangeCount(PRInt32 *_retval);

  /* void getRangeAt (in long i, out long min, out long max); */
  nsresult GetRangeAt(PRInt32 i, PRInt32 *min, PRInt32 *max);

  /**
   * Can be used to invalidate the selection.
   */
  /* void invalidateSelection (); */
  nsresult InvalidateSelection();

  /**
   * Called when the row count changes to adjust selection indices.
   */
  /* void adjustSelection (in long index, in long count); */
  nsresult AdjustSelection(PRInt32 index, PRInt32 count);

  /**
   * This attribute is a boolean indicating whether or not the
   * "select" event should fire when the selection is changed using
   * one of our methods.  A view can use this to temporarily suppress
   * the selection while manipulating all of the indices, e.g., on 
   * a sort.
   */
  /* attribute boolean selectEventsSuppressed; */
  nsresult GetSelectEventsSuppressed(PRBool *aSelectEventsSuppressed);
  nsresult SetSelectEventsSuppressed(PRBool aSelectEventsSuppressed);

  /**
   * The current item (the one that gets a focus rect in addition to being
   * selected).
   */
  /* attribute long currentIndex; */
  nsresult GetCurrentIndex(PRInt32 *aCurrentIndex);
  nsresult SetCurrentIndex(PRInt32 aCurrentIndex);

  /**
   * The selection "pivot".  This is the first item the user selected as
   * part of a ranged select.
   */
  /* readonly attribute long shiftSelectPivot; */
  nsresult GetShiftSelectPivot(PRInt32 *aShiftSelectPivot);

}

