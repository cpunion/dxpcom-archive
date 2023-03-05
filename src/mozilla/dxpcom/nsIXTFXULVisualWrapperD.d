/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXTFXULVisualWrapper.idl
 */

module mozilla.dxpcom.nsIXTFXULVisualWrapperD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXTFXULVisualWrapper;


public import mozilla.dxpcom.nsIXTFXULVisualWrapperD;

public import mozilla.xpcom.nsIXTFStyledElementWrapper;
public import mozilla.dxpcom.nsIXTFStyledElementWrapperD;


/* starting wrapper class:    nsIXTFXULVisualWrapper */
class nsIXTFXULVisualWrapperD : public nsIXTFStyledElementWrapperD {

  static const nsIID IID = NS_IXTFXULVISUALWRAPPER_IID;


  alias nsIXTFXULVisualWrapper InnerType;

  this(nsIXTFXULVisualWrapper intr){
    super(intr);
    this.inner = intr;
  }

  nsIXTFXULVisualWrapper opCast() {
    return inner;
  }

  void opAssign(nsIXTFXULVisualWrapper value) {
    inner = value;
  }

private:
  nsIXTFXULVisualWrapper inner;

}

