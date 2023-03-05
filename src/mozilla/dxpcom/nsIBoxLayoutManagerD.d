/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBoxLayoutManager.idl
 */

module mozilla.dxpcom.nsIBoxLayoutManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIBoxLayoutManager;


public import mozilla.dxpcom.nsIBoxLayoutManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIBoxLayoutManager */
class nsIBoxLayoutManagerD : public nsISupportsD {

  static const nsIID IID = NS_IBOXLAYOUTMANAGER_IID;


  alias nsIBoxLayoutManager InnerType;

  this(nsIBoxLayoutManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIBoxLayoutManager opCast() {
    return inner;
  }

  void opAssign(nsIBoxLayoutManager value) {
    inner = value;
  }

  /* void layout (); */
  void Layout(){
    nsresult __result = inner.Layout();
    CheckException(__result);
  }

private:
  nsIBoxLayoutManager inner;

}

