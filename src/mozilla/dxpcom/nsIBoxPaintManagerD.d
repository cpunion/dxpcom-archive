/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBoxPaintManager.idl
 */

module mozilla.dxpcom.nsIBoxPaintManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIBoxPaintManager;


public import mozilla.dxpcom.nsIBoxPaintManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIBoxPaintManager */
class nsIBoxPaintManagerD : public nsISupportsD {

  static const nsIID IID = NS_IBOXPAINTMANAGER_IID;


  alias nsIBoxPaintManager InnerType;

  this(nsIBoxPaintManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIBoxPaintManager opCast() {
    return inner;
  }

  void opAssign(nsIBoxPaintManager value) {
    inner = value;
  }

  /* void paint (); */
  void Paint(){
    nsresult __result = inner.Paint();
    CheckException(__result);
  }

private:
  nsIBoxPaintManager inner;

}

