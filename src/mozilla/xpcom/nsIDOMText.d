/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMText.idl
 */

module mozilla.xpcom.nsIDOMText;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMCharacterData;


/* starting interface:    nsIDOMText */
const char[] NS_IDOMTEXT_IID_STR = "a6cf9082-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMTEXT_IID= 
  {0xa6cf9082, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

extern(Windows)
interface nsIDOMText : nsIDOMCharacterData {
  static const char[] IID_STR = NS_IDOMTEXT_IID_STR;
  static const nsIID IID = NS_IDOMTEXT_IID;

  /**
 * The nsIDOMText interface inherits from nsIDOMCharacterData and represents 
 * the textual content (termed character data in XML) of an Element or Attr.
 *
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Core/
 *
 * @status FROZEN
 */
  /* nsIDOMText splitText (in unsigned long offset)  raises (DOMException); */
  nsresult SplitText(PRUint32 offset, nsIDOMText *_retval);

}

