/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMAttr.idl
 */

module mozilla.xpcom.nsIDOMAttr;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMNode;


/* starting interface:    nsIDOMAttr */
const char[] NS_IDOMATTR_IID_STR = "a6cf9070-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMATTR_IID= 
  {0xa6cf9070, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

extern(Windows)
interface nsIDOMAttr : nsIDOMNode {
  static const char[] IID_STR = NS_IDOMATTR_IID_STR;
  static const nsIID IID = NS_IDOMATTR_IID;

  /**
 * The nsIDOMAttr interface represents an attribute in an "Element" object. 
 * Typically the allowable values for the attribute are defined in a document 
 * type definition.
 * 
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Core/
 *
 * @status FROZEN
 */
  /* readonly attribute DOMString name; */
  nsresult GetName(nsAString * aName);

  /* readonly attribute boolean specified; */
  nsresult GetSpecified(PRBool *aSpecified);

  /* attribute DOMString value; */
  nsresult GetValue(nsAString * aValue);
  nsresult SetValue(nsAString * aValue);

  /* readonly attribute nsIDOMElement ownerElement; */
  nsresult GetOwnerElement(nsIDOMElement  *aOwnerElement);

}

