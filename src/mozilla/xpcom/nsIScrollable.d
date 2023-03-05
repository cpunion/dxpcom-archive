/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScrollable.idl
 */

module mozilla.xpcom.nsIScrollable;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIScrollable */
const char[] NS_ISCROLLABLE_IID_STR = "919e792a-6490-40b8-bba5-f9e9ad5640c8";

const nsIID NS_ISCROLLABLE_IID= 
  {0x919e792a, 0x6490, 0x40b8, 
    [ 0xbb, 0xa5, 0xf9, 0xe9, 0xad, 0x56, 0x40, 0xc8 ]};

/**
 * The nsIScrollable is an interface that can be implemented by a control that
 * supports scrolling.  This is a generic interface without concern for the 
 * type of content that may be inside.  It simply deals blindly with scroll
 * position as a composite of the lowest possible scroll position, the highest
 * possible position and the current position lying somewhere between the 
 * min and the max. 
 */
extern(Windows)
interface nsIScrollable : nsISupports {
  static const char[] IID_STR = NS_ISCROLLABLE_IID_STR;
  static const nsIID IID = NS_ISCROLLABLE_IID;

  enum { ScrollOrientation_X = 1 };

  enum { ScrollOrientation_Y = 2 };

  /* long getCurScrollPos (in long scrollOrientation); */
  nsresult GetCurScrollPos(PRInt32 scrollOrientation, PRInt32 *_retval);

  /* void setCurScrollPos (in long scrollOrientation, in long curPos); */
  nsresult SetCurScrollPos(PRInt32 scrollOrientation, PRInt32 curPos);

  /* void setCurScrollPosEx (in long curHorizontalPos, in long curVerticalPos); */
  nsresult SetCurScrollPosEx(PRInt32 curHorizontalPos, PRInt32 curVerticalPos);

  /* void getScrollRange (in long scrollOrientation, out long minPos, out long maxPos); */
  nsresult GetScrollRange(PRInt32 scrollOrientation, PRInt32 *minPos, PRInt32 *maxPos);

  /* void setScrollRange (in long scrollOrientation, in long minPos, in long maxPos); */
  nsresult SetScrollRange(PRInt32 scrollOrientation, PRInt32 minPos, PRInt32 maxPos);

  /* void setScrollRangeEx (in long minHorizontalPos, in long maxHorizontalPos, in long minVerticalPos, in long maxVerticalPos); */
  nsresult SetScrollRangeEx(PRInt32 minHorizontalPos, PRInt32 maxHorizontalPos, PRInt32 minVerticalPos, PRInt32 maxVerticalPos);

  enum { Scrollbar_Auto = 1 };

  enum { Scrollbar_Never = 2 };

  enum { Scrollbar_Always = 3 };

  /* long getDefaultScrollbarPreferences (in long scrollOrientation); */
  nsresult GetDefaultScrollbarPreferences(PRInt32 scrollOrientation, PRInt32 *_retval);

  /* void setDefaultScrollbarPreferences (in long scrollOrientation, in long scrollbarPref); */
  nsresult SetDefaultScrollbarPreferences(PRInt32 scrollOrientation, PRInt32 scrollbarPref);

  /* void getScrollbarVisibility (out boolean verticalVisible, out boolean horizontalVisible); */
  nsresult GetScrollbarVisibility(PRBool *verticalVisible, PRBool *horizontalVisible);

}

