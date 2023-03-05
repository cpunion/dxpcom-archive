/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXTFSVGVisual.idl
 */

module mozilla.xpcom.nsIXTFSVGVisual;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIXTFVisual;

public import mozilla.xpcom.nsIXTFSVGVisualWrapper; /* forward declaration */

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */


/* starting interface:    nsIXTFSVGVisual */
const char[] NS_IXTFSVGVISUAL_IID_STR = "5fd47925-03b2-4318-b55e-c37134124b6a";

const nsIID NS_IXTFSVGVISUAL_IID= 
  {0x5fd47925, 0x03b2, 0x4318, 
    [ 0xb5, 0x5e, 0xc3, 0x71, 0x34, 0x12, 0x4b, 0x6a ]};

extern(Windows)
interface nsIXTFSVGVisual : nsIXTFVisual {
  static const char[] IID_STR = NS_IXTFSVGVISUAL_IID_STR;
  static const nsIID IID = NS_IXTFSVGVISUAL_IID;

  /* void onCreated (in nsIXTFSVGVisualWrapper wrapper); */
  nsresult OnCreated(nsIXTFSVGVisualWrapper wrapper);

}

