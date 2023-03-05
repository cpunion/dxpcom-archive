/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXTFSVGVisual.idl
 */

module mozilla.dxpcom.nsIXTFSVGVisualD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXTFSVGVisual;


public import mozilla.dxpcom.nsIXTFSVGVisualD;

public import mozilla.xpcom.nsIXTFVisual;
public import mozilla.dxpcom.nsIXTFVisualD;

public import mozilla.xpcom.nsIXTFSVGVisualWrapper;

public import mozilla.dxpcom.nsIXTFSVGVisualWrapperD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;


/* starting wrapper class:    nsIXTFSVGVisual */
class nsIXTFSVGVisualD : public nsIXTFVisualD {

  static const nsIID IID = NS_IXTFSVGVISUAL_IID;


  alias nsIXTFSVGVisual InnerType;

  this(nsIXTFSVGVisual intr){
    super(intr);
    this.inner = intr;
  }

  nsIXTFSVGVisual opCast() {
    return inner;
  }

  void opAssign(nsIXTFSVGVisual value) {
    inner = value;
  }

  /* void onCreated (in nsIXTFSVGVisualWrapper wrapper); */
  void OnCreated(nsIXTFSVGVisualWrapperD wrapper){
    nsresult __result = inner.OnCreated(wrapper ? cast(nsIXTFSVGVisualWrapper)wrapper : null);
    CheckException(__result);
  }

private:
  nsIXTFSVGVisual inner;

}

