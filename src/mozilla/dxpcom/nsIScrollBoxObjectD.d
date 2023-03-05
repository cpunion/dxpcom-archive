/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScrollBoxObject.idl
 */

module mozilla.dxpcom.nsIScrollBoxObjectD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIScrollBoxObject;


public import mozilla.dxpcom.nsIScrollBoxObjectD;

public import mozilla.xpcom.nsIBoxObject;
public import mozilla.dxpcom.nsIBoxObjectD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;


/* starting wrapper class:    nsIScrollBoxObject */
class nsIScrollBoxObjectD : public nsISupportsD {

  static const nsIID IID = NS_ISCROLLBOXOBJECT_IID;


  alias nsIScrollBoxObject InnerType;

  this(nsIScrollBoxObject intr){
    super(intr);
    this.inner = intr;
  }

  nsIScrollBoxObject opCast() {
    return inner;
  }

  void opAssign(nsIScrollBoxObject value) {
    inner = value;
  }

  /**
   * Scroll to the given coordinates, in css pixels.
   * (0,0) will put the top left corner of the scrolled element's padding-box
   * at the top left corner of the scrollport (which is its inner-border-box).
   * Values will be clamped to legal values.
   */
  /* void scrollTo (in long x, in long y); */
  void ScrollTo(PRInt32 x, PRInt32 y){
    nsresult __result = inner.ScrollTo(x, y);
    CheckException(__result);
  }

  /**
   * Scroll the given amount of device pixels to the right and down.
   * Values will be clamped to make the resuling position legal.
   */
  /* void scrollBy (in long dx, in long dy); */
  void ScrollBy(PRInt32 dx, PRInt32 dy){
    nsresult __result = inner.ScrollBy(dx, dy);
    CheckException(__result);
  }

  /* void scrollByLine (in long dlines); */
  void ScrollByLine(PRInt32 dlines){
    nsresult __result = inner.ScrollByLine(dlines);
    CheckException(__result);
  }

  /* void scrollByIndex (in long dindexes); */
  void ScrollByIndex(PRInt32 dindexes){
    nsresult __result = inner.ScrollByIndex(dindexes);
    CheckException(__result);
  }

  /* void scrollToLine (in long line); */
  void ScrollToLine(PRInt32 line){
    nsresult __result = inner.ScrollToLine(line);
    CheckException(__result);
  }

  /* void scrollToElement (in nsIDOMElement child); */
  void ScrollToElement(nsIDOMElementD child){
    nsresult __result = inner.ScrollToElement(child ? cast(nsIDOMElement)child : null);
    CheckException(__result);
  }

  /* void scrollToIndex (in long index); */
  void ScrollToIndex(PRInt32 index){
    nsresult __result = inner.ScrollToIndex(index);
    CheckException(__result);
  }

  /**
   * Get the current scroll position in css pixels.
   * @see scrollTo for the definition of x and y.
   */
  /* void getPosition (out long x, out long y); */
  void GetPosition(out PRInt32 x, out PRInt32 y){
    nsresult __result = inner.GetPosition(&x, &y);
    CheckException(__result);
  }

  /* void getScrolledSize (out long width, out long height); */
  void GetScrolledSize(out PRInt32 width, out PRInt32 height){
    nsresult __result = inner.GetScrolledSize(&width, &height);
    CheckException(__result);
  }

  /* void ensureElementIsVisible (in nsIDOMElement child); */
  void EnsureElementIsVisible(nsIDOMElementD child){
    nsresult __result = inner.EnsureElementIsVisible(child ? cast(nsIDOMElement)child : null);
    CheckException(__result);
  }

  /* void ensureIndexIsVisible (in long index); */
  void EnsureIndexIsVisible(PRInt32 index){
    nsresult __result = inner.EnsureIndexIsVisible(index);
    CheckException(__result);
  }

  /* void ensureLineIsVisible (in long line); */
  void EnsureLineIsVisible(PRInt32 line){
    nsresult __result = inner.EnsureLineIsVisible(line);
    CheckException(__result);
  }

private:
  nsIScrollBoxObject inner;

}

