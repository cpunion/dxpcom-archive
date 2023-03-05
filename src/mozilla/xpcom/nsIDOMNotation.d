/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMNotation.idl
 */

module mozilla.xpcom.nsIDOMNotation;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMNode;


/* starting interface:    nsIDOMNotation */
const char[] NS_IDOMNOTATION_IID_STR = "a6cf907e-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMNOTATION_IID= 
  {0xa6cf907e, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

extern(Windows)
interface nsIDOMNotation : nsIDOMNode {
  static const char[] IID_STR = NS_IDOMNOTATION_IID_STR;
  static const nsIID IID = NS_IDOMNOTATION_IID;

  /**
 * The nsIDOMNotation interface represents a notation declared in the DTD.
 * A notation  either declares, by name, the format of an unparsed entity, 
 * or is used for formal declaration of processing instruction targets.
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

}

