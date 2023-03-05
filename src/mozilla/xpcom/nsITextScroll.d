/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITextScroll.idl
 */

module mozilla.xpcom.nsITextScroll;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsITextScroll */
const char[] NS_ITEXTSCROLL_IID_STR = "067b28a0-877f-11d3-af7e-00a024ffc08c";

const nsIID NS_ITEXTSCROLL_IID= 
  {0x067b28a0, 0x877f, 0x11d3, 
    [ 0xaf, 0x7e, 0x00, 0xa0, 0x24, 0xff, 0xc0, 0x8c ]};

/**
 * The nsITextScroll is an interface that can be implemented by a control that
 * supports text scrolling. 
 */
extern(Windows)
interface nsITextScroll : nsISupports {
  static const char[] IID_STR = NS_ITEXTSCROLL_IID_STR;
  static const nsIID IID = NS_ITEXTSCROLL_IID;

  /**
   * Scroll the view up or down by aNumLines lines. positive
   * values move down in the view. Prevents scrolling off the
   * end of the view.
   * @param numLines number of lines to scroll the view by
   */
  /* void scrollByLines (in long numLines); */
  nsresult ScrollByLines(PRInt32 numLines);

  /**
   * Scroll the view up or down by numPages pages. a page
   * is considered to be the amount displayed by the clip view.
   * positive values move down in the view. Prevents scrolling
   * off the end of the view.
   * @param numPages number of pages to scroll the view by
   */
  /* void scrollByPages (in long numPages); */
  nsresult ScrollByPages(PRInt32 numPages);

}

