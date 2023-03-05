/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXTFVisual.idl
 */

module mozilla.xpcom.nsIXTFVisual;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIXTFElement;

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */


/* starting interface:    nsIXTFVisual */
const char[] NS_IXTFVISUAL_IID_STR = "2ee5520b-6593-43c1-b660-4885939a6b68";

const nsIID NS_IXTFVISUAL_IID= 
  {0x2ee5520b, 0x6593, 0x43c1, 
    [ 0xb6, 0x60, 0x48, 0x85, 0x93, 0x9a, 0x6b, 0x68 ]};

extern(Windows)
interface nsIXTFVisual : nsIXTFElement {
  static const char[] IID_STR = NS_IXTFVISUAL_IID_STR;
  static const nsIID IID = NS_IXTFVISUAL_IID;

  /* readonly attribute nsIDOMElement visualContent; */
  nsresult GetVisualContent(nsIDOMElement  *aVisualContent);

  /* readonly attribute nsIDOMElement insertionPoint; */
  nsresult GetInsertionPoint(nsIDOMElement  *aInsertionPoint);

  /* readonly attribute boolean applyDocumentStyleSheets; */
  nsresult GetApplyDocumentStyleSheets(PRBool *aApplyDocumentStyleSheets);

  enum { NOTIFY_DID_LAYOUT = 131072U };

  /* void didLayout (); */
  nsresult DidLayout();

}

