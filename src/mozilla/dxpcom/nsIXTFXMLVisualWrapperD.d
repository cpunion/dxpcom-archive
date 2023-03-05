/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXTFXMLVisualWrapper.idl
 */

module mozilla.dxpcom.nsIXTFXMLVisualWrapperD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXTFXMLVisualWrapper;


public import mozilla.dxpcom.nsIXTFXMLVisualWrapperD;

public import mozilla.xpcom.nsIXTFStyledElementWrapper;
public import mozilla.dxpcom.nsIXTFStyledElementWrapperD;


/* starting wrapper class:    nsIXTFXMLVisualWrapper */
class nsIXTFXMLVisualWrapperD : public nsIXTFStyledElementWrapperD {

  static const nsIID IID = NS_IXTFXMLVISUALWRAPPER_IID;


  alias nsIXTFXMLVisualWrapper InnerType;

  this(nsIXTFXMLVisualWrapper intr){
    super(intr);
    this.inner = intr;
  }

  nsIXTFXMLVisualWrapper opCast() {
    return inner;
  }

  void opAssign(nsIXTFXMLVisualWrapper value) {
    inner = value;
  }

private:
  nsIXTFXMLVisualWrapper inner;

}

