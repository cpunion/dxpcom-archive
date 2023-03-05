/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXTFSVGVisualWrapper.idl
 */

module mozilla.dxpcom.nsIXTFSVGVisualWrapperD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXTFSVGVisualWrapper;


public import mozilla.dxpcom.nsIXTFSVGVisualWrapperD;

public import mozilla.xpcom.nsIXTFStyledElementWrapper;
public import mozilla.dxpcom.nsIXTFStyledElementWrapperD;


/* starting wrapper class:    nsIXTFSVGVisualWrapper */
class nsIXTFSVGVisualWrapperD : public nsIXTFStyledElementWrapperD {

  static const nsIID IID = NS_IXTFSVGVISUALWRAPPER_IID;


  alias nsIXTFSVGVisualWrapper InnerType;

  this(nsIXTFSVGVisualWrapper intr){
    super(intr);
    this.inner = intr;
  }

  nsIXTFSVGVisualWrapper opCast() {
    return inner;
  }

  void opAssign(nsIXTFSVGVisualWrapper value) {
    inner = value;
  }

private:
  nsIXTFSVGVisualWrapper inner;

}

