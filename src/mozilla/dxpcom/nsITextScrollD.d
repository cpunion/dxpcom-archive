/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITextScroll.idl
 */

module mozilla.dxpcom.nsITextScrollD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsITextScroll;


public import mozilla.dxpcom.nsITextScrollD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsITextScroll */
/**
 * The nsITextScroll is an interface that can be implemented by a control that
 * supports text scrolling. 
 */
class nsITextScrollD : public nsISupportsD {

  static const nsIID IID = NS_ITEXTSCROLL_IID;


  alias nsITextScroll InnerType;

  this(nsITextScroll intr){
    super(intr);
    this.inner = intr;
  }

  nsITextScroll opCast() {
    return inner;
  }

  void opAssign(nsITextScroll value) {
    inner = value;
  }

  /**
   * Scroll the view up or down by aNumLines lines. positive
   * values move down in the view. Prevents scrolling off the
   * end of the view.
   * @param numLines number of lines to scroll the view by
   */
  /* void scrollByLines (in long numLines); */
  void ScrollByLines(PRInt32 numLines){
    nsresult __result = inner.ScrollByLines(numLines);
    CheckException(__result);
  }

  /**
   * Scroll the view up or down by numPages pages. a page
   * is considered to be the amount displayed by the clip view.
   * positive values move down in the view. Prevents scrolling
   * off the end of the view.
   * @param numPages number of pages to scroll the view by
   */
  /* void scrollByPages (in long numPages); */
  void ScrollByPages(PRInt32 numPages){
    nsresult __result = inner.ScrollByPages(numPages);
    CheckException(__result);
  }

private:
  nsITextScroll inner;

}

