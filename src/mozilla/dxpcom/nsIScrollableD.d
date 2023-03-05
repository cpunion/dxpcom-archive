/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScrollable.idl
 */

module mozilla.dxpcom.nsIScrollableD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIScrollable;


public import mozilla.dxpcom.nsIScrollableD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIScrollable */
/**
 * The nsIScrollable is an interface that can be implemented by a control that
 * supports scrolling.  This is a generic interface without concern for the 
 * type of content that may be inside.  It simply deals blindly with scroll
 * position as a composite of the lowest possible scroll position, the highest
 * possible position and the current position lying somewhere between the 
 * min and the max. 
 */
class nsIScrollableD : public nsISupportsD {

  static const nsIID IID = NS_ISCROLLABLE_IID;


  alias nsIScrollable InnerType;

  this(nsIScrollable intr){
    super(intr);
    this.inner = intr;
  }

  nsIScrollable opCast() {
    return inner;
  }

  void opAssign(nsIScrollable value) {
    inner = value;
  }

  enum { ScrollOrientation_X = 1 }

  enum { ScrollOrientation_Y = 2 }

  /* long getCurScrollPos (in long scrollOrientation); */
  PRInt32 GetCurScrollPos(PRInt32 scrollOrientation){
    PRInt32 _retval;
    nsresult __result = inner.GetCurScrollPos(scrollOrientation, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setCurScrollPos (in long scrollOrientation, in long curPos); */
  void SetCurScrollPos(PRInt32 scrollOrientation, PRInt32 curPos){
    nsresult __result = inner.SetCurScrollPos(scrollOrientation, curPos);
    CheckException(__result);
  }

  /* void setCurScrollPosEx (in long curHorizontalPos, in long curVerticalPos); */
  void SetCurScrollPosEx(PRInt32 curHorizontalPos, PRInt32 curVerticalPos){
    nsresult __result = inner.SetCurScrollPosEx(curHorizontalPos, curVerticalPos);
    CheckException(__result);
  }

  /* void getScrollRange (in long scrollOrientation, out long minPos, out long maxPos); */
  void GetScrollRange(PRInt32 scrollOrientation, out PRInt32 minPos, out PRInt32 maxPos){
    nsresult __result = inner.GetScrollRange(scrollOrientation, &minPos, &maxPos);
    CheckException(__result);
  }

  /* void setScrollRange (in long scrollOrientation, in long minPos, in long maxPos); */
  void SetScrollRange(PRInt32 scrollOrientation, PRInt32 minPos, PRInt32 maxPos){
    nsresult __result = inner.SetScrollRange(scrollOrientation, minPos, maxPos);
    CheckException(__result);
  }

  /* void setScrollRangeEx (in long minHorizontalPos, in long maxHorizontalPos, in long minVerticalPos, in long maxVerticalPos); */
  void SetScrollRangeEx(PRInt32 minHorizontalPos, PRInt32 maxHorizontalPos, PRInt32 minVerticalPos, PRInt32 maxVerticalPos){
    nsresult __result = inner.SetScrollRangeEx(minHorizontalPos, maxHorizontalPos, minVerticalPos, maxVerticalPos);
    CheckException(__result);
  }

  enum { Scrollbar_Auto = 1 }

  enum { Scrollbar_Never = 2 }

  enum { Scrollbar_Always = 3 }

  /* long getDefaultScrollbarPreferences (in long scrollOrientation); */
  PRInt32 GetDefaultScrollbarPreferences(PRInt32 scrollOrientation){
    PRInt32 _retval;
    nsresult __result = inner.GetDefaultScrollbarPreferences(scrollOrientation, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setDefaultScrollbarPreferences (in long scrollOrientation, in long scrollbarPref); */
  void SetDefaultScrollbarPreferences(PRInt32 scrollOrientation, PRInt32 scrollbarPref){
    nsresult __result = inner.SetDefaultScrollbarPreferences(scrollOrientation, scrollbarPref);
    CheckException(__result);
  }

  /* void getScrollbarVisibility (out boolean verticalVisible, out boolean horizontalVisible); */
  void GetScrollbarVisibility(out PRBool verticalVisible, out PRBool horizontalVisible){
    nsresult __result = inner.GetScrollbarVisibility(&verticalVisible, &horizontalVisible);
    CheckException(__result);
  }

private:
  nsIScrollable inner;

}

