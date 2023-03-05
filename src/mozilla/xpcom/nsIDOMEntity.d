/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMEntity.idl
 */

module mozilla.xpcom.nsIDOMEntity;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMNode;


/* starting interface:    nsIDOMEntity */
const char[] NS_IDOMENTITY_IID_STR = "a6cf9079-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMENTITY_IID= 
  {0xa6cf9079, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

extern(Windows)
interface nsIDOMEntity : nsIDOMNode {
  static const char[] IID_STR = NS_IDOMENTITY_IID_STR;
  static const nsIID IID = NS_IDOMENTITY_IID;

  /**
 * The nsIDOMEntity interface represents an entity, either parsed 
 * or unparsed, in an XML document.
 *
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Core/
 *
 * @status FROZEN
 */
  /* readonly attribute DOMString publicId; */
  nsresult GetPublicId(nsAString * aPublicId);

  /* readonly attribute DOMString systemId; */
  nsresult GetSystemId(nsAString * aSystemId);

  /* readonly attribute DOMString notationName; */
  nsresult GetNotationName(nsAString * aNotationName);

}

