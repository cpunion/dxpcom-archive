/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEmbeddingSiteWindow.idl
 */

module mozilla.dxpcom.nsIEmbeddingSiteWindowD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIEmbeddingSiteWindow;


public import mozilla.dxpcom.nsIEmbeddingSiteWindowD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIEmbeddingSiteWindow */
/**
 * The nsIEmbeddingSiteWindow is implemented by the embedder to provide
 * Gecko with the means to call up to the host to resize the window,
 * hide or show it and set/get its title.
 *
 * @status FROZEN
 */
class nsIEmbeddingSiteWindowD : public nsISupportsD {

  static const nsIID IID = NS_IEMBEDDINGSITEWINDOW_IID;


  alias nsIEmbeddingSiteWindow InnerType;

  this(nsIEmbeddingSiteWindow intr){
    super(intr);
    this.inner = intr;
  }

  nsIEmbeddingSiteWindow opCast() {
    return inner;
  }

  void opAssign(nsIEmbeddingSiteWindow value) {
    inner = value;
  }

  /**
     * Flag indicates that position of the top left corner of the outer area
     * is required/specified.
     *
     * @see setDimensions
     * @see getDimensions
     */
  enum { DIM_FLAGS_POSITION = 1U }

  /**
     * Flag indicates that the size of the inner area is required/specified.
     *
     * @note The inner and outer flags are mutually exclusive and it is
     *       invalid to combine them.
     *
     * @see setDimensions
     * @see getDimensions
     * @see DIM_FLAGS_SIZE_OUTER
     */
  enum { DIM_FLAGS_SIZE_INNER = 2U }

  /**
     * Flag indicates that the size of the outer area is required/specified.
     *
     * @see setDimensions
     * @see getDimensions
     * @see DIM_FLAGS_SIZE_INNER
     */
  enum { DIM_FLAGS_SIZE_OUTER = 4U }

  /**
     * Sets the dimensions for the window; the position & size. The
     * flags to indicate what the caller wants to set and whether the size
     * refers to the inner or outer area. The inner area refers to just
     * the embedded area, wheras the outer area can also include any 
     * surrounding chrome, window frame, title bar, and so on.
     *
     * @param flags  Combination of position, inner and outer size flags.
     * @param x      Left hand corner of the outer area.
     * @param y      Top corner of the outer area.
     * @param cx     Width of the inner or outer area.
     * @param cy     Height of the inner or outer area.
     *
     * @return <code>NS_OK</code> if operation was performed correctly;
     *         <code>NS_ERROR_UNEXPECTED</code> if window could not be
     *           destroyed;
     *         <code>NS_ERROR_INVALID_ARG</code> for bad flag combination
     *           or illegal dimensions.
     *
     * @see getDimensions
     * @see DIM_FLAGS_POSITION
     * @see DIM_FLAGS_SIZE_OUTER
     * @see DIM_FLAGS_SIZE_INNER
     */
  /* void setDimensions (in unsigned long flags, in long x, in long y, in long cx, in long cy); */
  void SetDimensions(PRUint32 flags, PRInt32 x, PRInt32 y, PRInt32 cx, PRInt32 cy){
    nsresult __result = inner.SetDimensions(flags, x, y, cx, cy);
    CheckException(__result);
  }

  /**
     * Gets the dimensions of the window. The caller may pass
     * <CODE>nsnull</CODE> for any value it is uninterested in receiving.
     *
     * @param flags  Combination of position, inner and outer size flag .
     * @param x      Left hand corner of the outer area; or <CODE>nsnull</CODE>.
     * @param y      Top corner of the outer area; or <CODE>nsnull</CODE>.
     * @param cx     Width of the inner or outer area; or <CODE>nsnull</CODE>.
     * @param cy     Height of the inner or outer area; or <CODE>nsnull</CODE>.
     *
     * @see setDimensions
     * @see DIM_FLAGS_POSITION
     * @see DIM_FLAGS_SIZE_OUTER
     * @see DIM_FLAGS_SIZE_INNER
     */
  /* void getDimensions (in unsigned long flags, out long x, out long y, out long cx, out long cy); */
  void GetDimensions(PRUint32 flags, out PRInt32 x, out PRInt32 y, out PRInt32 cx, out PRInt32 cy){
    nsresult __result = inner.GetDimensions(flags, &x, &y, &cx, &cy);
    CheckException(__result);
  }

  /**
     * Give the window focus.
     */
  /* void setFocus (); */
  void SetFocus(){
    nsresult __result = inner.SetFocus();
    CheckException(__result);
  }

  /**
     * Visibility of the window.
     */
  /* attribute boolean visibility; */
  PRBool Visibility(){
    PRBool value;
    nsresult __result = inner.GetVisibility(&value);
    CheckException(__result);
    return value;
  }
  void Visibility(PRBool aVisibility){
    nsresult __result = inner.SetVisibility(aVisibility);
    CheckException(__result);
  }

  /**
     * Title of the window.
     */
  /* attribute wstring title; */
  PRUnichar* Title(){
    PRUnichar* value;
    nsresult __result = inner.GetTitle(&value);
    CheckException(__result);
    return value;
  }
  void Title(PRUnichar* aTitle){
    nsresult __result = inner.SetTitle(aTitle);
    CheckException(__result);
  }

  /**
     * Native window for the site's window. The implementor should copy the
     * native window object into the address supplied by the caller. The
     * type of the native window that the address refers to is  platform
     * and OS specific as follows:
     *
     * <ul>
     *   <li>On Win32 it is an <CODE>HWND</CODE>.</li>
     *   <li>On MacOS this is a <CODE>WindowPtr</CODE>.</li>
     *   <li>On GTK this is a <CODE>GtkWidget*</CODE>.</li>
     * </ul>
     */
  /* [noscript] readonly attribute voidPtr siteWindow; */
  void * SiteWindow(){
    void * value;
    nsresult __result = inner.GetSiteWindow(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIEmbeddingSiteWindow inner;

}

