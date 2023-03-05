/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXTFGenericElementWrapper.idl
 */

module mozilla.dxpcom.nsIXTFGenericElementWrapperD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXTFGenericElementWrapper;


public import mozilla.dxpcom.nsIXTFGenericElementWrapperD;

public import mozilla.xpcom.nsIXTFElementWrapper;
public import mozilla.dxpcom.nsIXTFElementWrapperD;


/* starting wrapper class:    nsIXTFGenericElementWrapper */
class nsIXTFGenericElementWrapperD : public nsIXTFElementWrapperD {

  static const nsIID IID = NS_IXTFGENERICELEMENTWRAPPER_IID;


  alias nsIXTFGenericElementWrapper InnerType;

  this(nsIXTFGenericElementWrapper intr){
    super(intr);
    this.inner = intr;
  }

  nsIXTFGenericElementWrapper opCast() {
    return inner;
  }

  void opAssign(nsIXTFGenericElementWrapper value) {
    inner = value;
  }

private:
  nsIXTFGenericElementWrapper inner;

}

