/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXTFBindableElement.idl
 */

module mozilla.dxpcom.nsIXTFBindableElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXTFBindableElement;


public import mozilla.dxpcom.nsIXTFBindableElementD;

public import mozilla.xpcom.nsIXTFElement;
public import mozilla.dxpcom.nsIXTFElementD;

public import mozilla.xpcom.nsIXTFBindableElementWrapper;

public import mozilla.dxpcom.nsIXTFBindableElementWrapperD;


/* starting wrapper class:    nsIXTFBindableElement */
/**
 * nsIXTFBindableElement can be used to add support for new interfaces to
 * normal XML elements. XBL bindings do work with this kind of XTF elements.
 *
 * @note getScriptingInterfaces don't work at the moment with
 * nsIXTFBindableElements. The problem is that XBL does not play nicely
 * with that kind of interfaces.
 * However, if nsIXTFBindableElement implements scriptable interfaces, those
 * can be used by explicitly QIing to them.
 */
class nsIXTFBindableElementD : public nsIXTFElementD {

  static const nsIID IID = NS_IXTFBINDABLEELEMENT_IID;


  alias nsIXTFBindableElement InnerType;

  this(nsIXTFBindableElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIXTFBindableElement opCast() {
    return inner;
  }

  void opAssign(nsIXTFBindableElement value) {
    inner = value;
  }

  /**
   * onCreated will be called before any notifications are sent to
   * the xtf element.
   *
   * @param wrapper is a weak proxy to the wrapping element
   * (i.e. holding a reference to this will not create a cycle).
   */
  /* void onCreated (in nsIXTFBindableElementWrapper wrapper); */
  void OnCreated(nsIXTFBindableElementWrapperD wrapper){
    nsresult __result = inner.OnCreated(wrapper ? cast(nsIXTFBindableElementWrapper)wrapper : null);
    CheckException(__result);
  }

private:
  nsIXTFBindableElement inner;

}

