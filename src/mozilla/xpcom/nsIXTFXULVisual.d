/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXTFXULVisual.idl
 */

module mozilla.xpcom.nsIXTFXULVisual;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIXTFVisual;

public import mozilla.xpcom.nsIXTFXULVisualWrapper; /* forward declaration */

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */


/* starting interface:    nsIXTFXULVisual */
const char[] NS_IXTFXULVISUAL_IID_STR = "a1173d91-4428-4829-8e3e-fe66e558f161";

const nsIID NS_IXTFXULVISUAL_IID= 
  {0xa1173d91, 0x4428, 0x4829, 
    [ 0x8e, 0x3e, 0xfe, 0x66, 0xe5, 0x58, 0xf1, 0x61 ]};

extern(Windows)
interface nsIXTFXULVisual : nsIXTFVisual {
  static const char[] IID_STR = NS_IXTFXULVISUAL_IID_STR;
  static const nsIID IID = NS_IXTFXULVISUAL_IID;

  /* void onCreated (in nsIXTFXULVisualWrapper wrapper); */
  nsresult OnCreated(nsIXTFXULVisualWrapper wrapper);

}

