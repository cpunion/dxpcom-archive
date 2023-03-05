/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXTFBindableElement.idl
 */

module mozilla.xpcom.nsIXTFBindableElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIXTFElement;

public import mozilla.xpcom.nsIXTFBindableElementWrapper; /* forward declaration */


/* starting interface:    nsIXTFBindableElement */
const char[] NS_IXTFBINDABLEELEMENT_IID_STR = "8dcc630c-9adc-4c60-9954-a004cb45e4a7";

const nsIID NS_IXTFBINDABLEELEMENT_IID= 
  {0x8dcc630c, 0x9adc, 0x4c60, 
    [ 0x99, 0x54, 0xa0, 0x04, 0xcb, 0x45, 0xe4, 0xa7 ]};

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
extern(Windows)
interface nsIXTFBindableElement : nsIXTFElement {
  static const char[] IID_STR = NS_IXTFBINDABLEELEMENT_IID_STR;
  static const nsIID IID = NS_IXTFBINDABLEELEMENT_IID;

  /**
   * onCreated will be called before any notifications are sent to
   * the xtf element.
   *
   * @param wrapper is a weak proxy to the wrapping element
   * (i.e. holding a reference to this will not create a cycle).
   */
  /* void onCreated (in nsIXTFBindableElementWrapper wrapper); */
  nsresult OnCreated(nsIXTFBindableElementWrapper wrapper);

}

