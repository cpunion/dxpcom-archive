/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXTFBindableElementWrapper.idl
 */

module mozilla.dxpcom.nsIXTFBindableElementWrapperD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXTFBindableElementWrapper;


public import mozilla.dxpcom.nsIXTFBindableElementWrapperD;

public import mozilla.xpcom.nsIXTFStyledElementWrapper;
public import mozilla.dxpcom.nsIXTFStyledElementWrapperD;


/* starting wrapper class:    nsIXTFBindableElementWrapper */
class nsIXTFBindableElementWrapperD : public nsIXTFStyledElementWrapperD {

  static const nsIID IID = NS_IXTFBINDABLEELEMENTWRAPPER_IID;


  alias nsIXTFBindableElementWrapper InnerType;

  this(nsIXTFBindableElementWrapper intr){
    super(intr);
    this.inner = intr;
  }

  nsIXTFBindableElementWrapper opCast() {
    return inner;
  }

  void opAssign(nsIXTFBindableElementWrapper value) {
    inner = value;
  }

private:
  nsIXTFBindableElementWrapper inner;

}

