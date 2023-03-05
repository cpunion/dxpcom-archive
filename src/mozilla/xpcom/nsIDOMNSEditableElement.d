/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMNSEditableElement.idl
 */

module mozilla.xpcom.nsIDOMNSEditableElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIEditor; /* forward declaration */


/* starting interface:    nsIDOMNSEditableElement */
const char[] NS_IDOMNSEDITABLEELEMENT_IID_STR = "c4a71f8e-82ba-49d7-94f9-beb359361072";

const nsIID NS_IDOMNSEDITABLEELEMENT_IID= 
  {0xc4a71f8e, 0x82ba, 0x49d7, 
    [ 0x94, 0xf9, 0xbe, 0xb3, 0x59, 0x36, 0x10, 0x72 ]};

/**
 * This interface is implemented by elements which have inner editable content,
 * such as HTML input and textarea. 
*/
extern(Windows)
interface nsIDOMNSEditableElement : nsISupports {
  static const char[] IID_STR = NS_IDOMNSEDITABLEELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMNSEDITABLEELEMENT_IID;

  /* readonly attribute nsIEditor editor; */
  nsresult GetEditor(nsIEditor  *aEditor);

}

