/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGScriptElement.idl
 */

module mozilla.xpcom.nsIDOMSVGScriptElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMSVGElement;


/* starting interface:    nsIDOMSVGScriptElement */
const char[] NS_IDOMSVGSCRIPTELEMENT_IID_STR = "bbe0d0ee-e9ed-4f84-a6e4-e58f66530caa";

const nsIID NS_IDOMSVGSCRIPTELEMENT_IID= 
  {0xbbe0d0ee, 0xe9ed, 0x4f84, 
    [ 0xa6, 0xe4, 0xe5, 0x8f, 0x66, 0x53, 0x0c, 0xaa ]};

extern(Windows)
interface nsIDOMSVGScriptElement : nsIDOMSVGElement {
  static const char[] IID_STR = NS_IDOMSVGSCRIPTELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMSVGSCRIPTELEMENT_IID;

  /* attribute DOMString type; */
  nsresult GetType(nsAString * aType);
  nsresult SetType(nsAString * aType);

}

