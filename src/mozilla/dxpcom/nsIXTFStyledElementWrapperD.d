/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXTFStyledElementWrapper.idl
 */

module mozilla.dxpcom.nsIXTFStyledElementWrapperD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXTFStyledElementWrapper;


public import mozilla.dxpcom.nsIXTFStyledElementWrapperD;

public import mozilla.xpcom.nsIXTFElementWrapper;
public import mozilla.dxpcom.nsIXTFElementWrapperD;


/* starting wrapper class:    nsIXTFStyledElementWrapper */
class nsIXTFStyledElementWrapperD : public nsIXTFElementWrapperD {

  static const nsIID IID = NS_IXTFSTYLEDELEMENTWRAPPER_IID;


  alias nsIXTFStyledElementWrapper InnerType;

  this(nsIXTFStyledElementWrapper intr){
    super(intr);
    this.inner = intr;
  }

  nsIXTFStyledElementWrapper opCast() {
    return inner;
  }

  void opAssign(nsIXTFStyledElementWrapper value) {
    inner = value;
  }

  /**
   * This sets the name of the class attribute.
   * Should be called only during ::onCreated.
   * Note! nsIXTFAttributeHandler can't be used to handle class attribute.
   */
  /* void setClassAttributeName (in nsIAtom name); */
  void SetClassAttributeName(nsIAtomD name){
    nsresult __result = inner.SetClassAttributeName(name ? cast(nsIAtom)name : null);
    CheckException(__result);
  }

private:
  nsIXTFStyledElementWrapper inner;

}

