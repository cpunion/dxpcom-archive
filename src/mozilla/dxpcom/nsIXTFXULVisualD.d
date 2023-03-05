/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXTFXULVisual.idl
 */

module mozilla.dxpcom.nsIXTFXULVisualD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXTFXULVisual;


public import mozilla.dxpcom.nsIXTFXULVisualD;

public import mozilla.xpcom.nsIXTFVisual;
public import mozilla.dxpcom.nsIXTFVisualD;

public import mozilla.xpcom.nsIXTFXULVisualWrapper;

public import mozilla.dxpcom.nsIXTFXULVisualWrapperD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;


/* starting wrapper class:    nsIXTFXULVisual */
class nsIXTFXULVisualD : public nsIXTFVisualD {

  static const nsIID IID = NS_IXTFXULVISUAL_IID;


  alias nsIXTFXULVisual InnerType;

  this(nsIXTFXULVisual intr){
    super(intr);
    this.inner = intr;
  }

  nsIXTFXULVisual opCast() {
    return inner;
  }

  void opAssign(nsIXTFXULVisual value) {
    inner = value;
  }

  /* void onCreated (in nsIXTFXULVisualWrapper wrapper); */
  void OnCreated(nsIXTFXULVisualWrapperD wrapper){
    nsresult __result = inner.OnCreated(wrapper ? cast(nsIXTFXULVisualWrapper)wrapper : null);
    CheckException(__result);
  }

private:
  nsIXTFXULVisual inner;

}

