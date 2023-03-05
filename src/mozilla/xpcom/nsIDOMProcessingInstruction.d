/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMProcessingInstruction.idl
 */

module mozilla.xpcom.nsIDOMProcessingInstruction;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMNode;


/* starting interface:    nsIDOMProcessingInstruction */
const char[] NS_IDOMPROCESSINGINSTRUCTION_IID_STR = "a6cf907f-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMPROCESSINGINSTRUCTION_IID= 
  {0xa6cf907f, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

extern(Windows)
interface nsIDOMProcessingInstruction : nsIDOMNode {
  static const char[] IID_STR = NS_IDOMPROCESSINGINSTRUCTION_IID_STR;
  static const nsIID IID = NS_IDOMPROCESSINGINSTRUCTION_IID;

  /**
 * The nsIDOMProcessingInstruction interface represents a 
 * "processing instruction", used in XML as a way to keep processor-specific 
 * information in the text of the document.
 *
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Core/
 *
 * @status FROZEN
 */
  /* readonly attribute DOMString target; */
  nsresult GetTarget(nsAString * aTarget);

  /* attribute DOMString data; */
  nsresult GetData(nsAString * aData);
  nsresult SetData(nsAString * aData);

}

