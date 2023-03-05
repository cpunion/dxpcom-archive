/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXTFGenericElement.idl
 */

module mozilla.dxpcom.nsIXTFGenericElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXTFGenericElement;


public import mozilla.dxpcom.nsIXTFGenericElementD;

public import mozilla.xpcom.nsIXTFElement;
public import mozilla.dxpcom.nsIXTFElementD;

public import mozilla.xpcom.nsIXTFGenericElementWrapper;

public import mozilla.dxpcom.nsIXTFGenericElementWrapperD;


/* starting wrapper class:    nsIXTFGenericElement */
class nsIXTFGenericElementD : public nsIXTFElementD {

  static const nsIID IID = NS_IXTFGENERICELEMENT_IID;


  alias nsIXTFGenericElement InnerType;

  this(nsIXTFGenericElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIXTFGenericElement opCast() {
    return inner;
  }

  void opAssign(nsIXTFGenericElement value) {
    inner = value;
  }

  /* void onCreated (in nsIXTFGenericElementWrapper wrapper); */
  void OnCreated(nsIXTFGenericElementWrapperD wrapper){
    nsresult __result = inner.OnCreated(wrapper ? cast(nsIXTFGenericElementWrapper)wrapper : null);
    CheckException(__result);
  }

private:
  nsIXTFGenericElement inner;

}

