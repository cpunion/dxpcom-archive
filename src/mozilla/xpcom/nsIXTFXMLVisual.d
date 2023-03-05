/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXTFXMLVisual.idl
 */

module mozilla.xpcom.nsIXTFXMLVisual;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIXTFVisual;

public import mozilla.xpcom.nsIXTFXMLVisualWrapper; /* forward declaration */

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */


/* starting interface:    nsIXTFXMLVisual */
const char[] NS_IXTFXMLVISUAL_IID_STR = "e63d240d-bd00-4857-ba65-2f9cc599eead";

const nsIID NS_IXTFXMLVISUAL_IID= 
  {0xe63d240d, 0xbd00, 0x4857, 
    [ 0xba, 0x65, 0x2f, 0x9c, 0xc5, 0x99, 0xee, 0xad ]};

extern(Windows)
interface nsIXTFXMLVisual : nsIXTFVisual {
  static const char[] IID_STR = NS_IXTFXMLVISUAL_IID_STR;
  static const nsIID IID = NS_IXTFXMLVISUAL_IID;

  /* void onCreated (in nsIXTFXMLVisualWrapper wrapper); */
  nsresult OnCreated(nsIXTFXMLVisualWrapper wrapper);

}

