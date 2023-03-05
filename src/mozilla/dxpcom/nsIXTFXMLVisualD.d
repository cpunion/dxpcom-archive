/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXTFXMLVisual.idl
 */

module mozilla.dxpcom.nsIXTFXMLVisualD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXTFXMLVisual;


public import mozilla.dxpcom.nsIXTFXMLVisualD;

public import mozilla.xpcom.nsIXTFVisual;
public import mozilla.dxpcom.nsIXTFVisualD;

public import mozilla.xpcom.nsIXTFXMLVisualWrapper;

public import mozilla.dxpcom.nsIXTFXMLVisualWrapperD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;


/* starting wrapper class:    nsIXTFXMLVisual */
class nsIXTFXMLVisualD : public nsIXTFVisualD {

  static const nsIID IID = NS_IXTFXMLVISUAL_IID;


  alias nsIXTFXMLVisual InnerType;

  this(nsIXTFXMLVisual intr){
    super(intr);
    this.inner = intr;
  }

  nsIXTFXMLVisual opCast() {
    return inner;
  }

  void opAssign(nsIXTFXMLVisual value) {
    inner = value;
  }

  /* void onCreated (in nsIXTFXMLVisualWrapper wrapper); */
  void OnCreated(nsIXTFXMLVisualWrapperD wrapper){
    nsresult __result = inner.OnCreated(wrapper ? cast(nsIXTFXMLVisualWrapper)wrapper : null);
    CheckException(__result);
  }

private:
  nsIXTFXMLVisual inner;

}

