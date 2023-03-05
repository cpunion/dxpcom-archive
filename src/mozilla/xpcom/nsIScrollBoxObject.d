/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScrollBoxObject.idl
 */

module mozilla.xpcom.nsIScrollBoxObject;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIBoxObject;

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */


/* starting interface:    nsIScrollBoxObject */
const char[] NS_ISCROLLBOXOBJECT_IID_STR = "56e2ada8-4631-11d4-ba11-001083023c1e";

const nsIID NS_ISCROLLBOXOBJECT_IID= 
  {0x56e2ada8, 0x4631, 0x11d4, 
    [ 0xba, 0x11, 0x00, 0x10, 0x83, 0x02, 0x3c, 0x1e ]};

extern(Windows)
interface nsIScrollBoxObject : nsISupports {
  static const char[] IID_STR = NS_ISCROLLBOXOBJECT_IID_STR;
  static const nsIID IID = NS_ISCROLLBOXOBJECT_IID;

  /**
   * Scroll to the given coordinates, in css pixels.
   * (0,0) will put the top left corner of the scrolled element's padding-box
   * at the top left corner of the scrollport (which is its inner-border-box).
   * Values will be clamped to legal values.
   */
  /* void scrollTo (in long x, in long y); */
  nsresult ScrollTo(PRInt32 x, PRInt32 y);

  /**
   * Scroll the given amount of device pixels to the right and down.
   * Values will be clamped to make the resuling position legal.
   */
  /* void scrollBy (in long dx, in long dy); */
  nsresult ScrollBy(PRInt32 dx, PRInt32 dy);

  /* void scrollByLine (in long dlines); */
  nsresult ScrollByLine(PRInt32 dlines);

  /* void scrollByIndex (in long dindexes); */
  nsresult ScrollByIndex(PRInt32 dindexes);

  /* void scrollToLine (in long line); */
  nsresult ScrollToLine(PRInt32 line);

  /* void scrollToElement (in nsIDOMElement child); */
  nsresult ScrollToElement(nsIDOMElement child);

  /* void scrollToIndex (in long index); */
  nsresult ScrollToIndex(PRInt32 index);

  /**
   * Get the current scroll position in css pixels.
   * @see scrollTo for the definition of x and y.
   */
  /* void getPosition (out long x, out long y); */
  nsresult GetPosition(PRInt32 *x, PRInt32 *y);

  /* void getScrolledSize (out long width, out long height); */
  nsresult GetScrolledSize(PRInt32 *width, PRInt32 *height);

  /* void ensureElementIsVisible (in nsIDOMElement child); */
  nsresult EnsureElementIsVisible(nsIDOMElement child);

  /* void ensureIndexIsVisible (in long index); */
  nsresult EnsureIndexIsVisible(PRInt32 index);

  /* void ensureLineIsVisible (in long line); */
  nsresult EnsureLineIsVisible(PRInt32 line);

}

