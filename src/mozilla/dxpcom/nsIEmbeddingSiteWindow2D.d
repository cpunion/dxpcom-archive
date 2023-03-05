/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEmbeddingSiteWindow2.idl
 */

module mozilla.dxpcom.nsIEmbeddingSiteWindow2D;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIEmbeddingSiteWindow2;


public import mozilla.dxpcom.nsIEmbeddingSiteWindow2D;

public import mozilla.xpcom.nsIEmbeddingSiteWindow;
public import mozilla.dxpcom.nsIEmbeddingSiteWindowD;


/* starting wrapper class:    nsIEmbeddingSiteWindow2 */
/**
 * The nsIEmbeddingSiteWindow is implemented by the embedder to provide
 * Gecko with the means to call up to the host to perform basic windowing
 * operations such as resizing and showing.
 *
 * Changes from version 1 to version 2:
 * A new method: blur()
 */
class nsIEmbeddingSiteWindow2D : public nsIEmbeddingSiteWindowD {

  static const nsIID IID = NS_IEMBEDDINGSITEWINDOW2_IID;


  alias nsIEmbeddingSiteWindow2 InnerType;

  this(nsIEmbeddingSiteWindow2 intr){
    super(intr);
    this.inner = intr;
  }

  nsIEmbeddingSiteWindow2 opCast() {
    return inner;
  }

  void opAssign(nsIEmbeddingSiteWindow2 value) {
    inner = value;
  }

  /**
     * Blur the window. This should unfocus the window and send an onblur event.
     */
  /* void blur (); */
  void Blur(){
    nsresult __result = inner.Blur();
    CheckException(__result);
  }

private:
  nsIEmbeddingSiteWindow2 inner;

}

