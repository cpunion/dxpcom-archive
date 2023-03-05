/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCharacterData.idl
 */

module mozilla.xpcom.nsIDOMCharacterData;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMNode;


/* starting interface:    nsIDOMCharacterData */
const char[] NS_IDOMCHARACTERDATA_IID_STR = "a6cf9072-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMCHARACTERDATA_IID= 
  {0xa6cf9072, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

extern(Windows)
interface nsIDOMCharacterData : nsIDOMNode {
  static const char[] IID_STR = NS_IDOMCHARACTERDATA_IID_STR;
  static const nsIID IID = NS_IDOMCHARACTERDATA_IID;

  /**
 * The nsIDOMCharacterData interface extends nsIDOMNode with a set of 
 * attributes and methods for accessing character data in the DOM.
 * 
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Core/
 *
 * @status FROZEN
 */
  /* attribute DOMString data; */
  nsresult GetData(nsAString * aData);
  nsresult SetData(nsAString * aData);

  /* readonly attribute unsigned long length; */
  nsresult GetLength(PRUint32 *aLength);

  /* DOMString substringData (in unsigned long offset, in unsigned long count)  raises (DOMException); */
  nsresult SubstringData(PRUint32 offset, PRUint32 count, nsAString * _retval);

  /* void appendData (in DOMString arg)  raises (DOMException); */
  nsresult AppendData(nsAString * arg);

  /* void insertData (in unsigned long offset, in DOMString arg)  raises (DOMException); */
  nsresult InsertData(PRUint32 offset, nsAString * arg);

  /* void deleteData (in unsigned long offset, in unsigned long count)  raises (DOMException); */
  nsresult DeleteData(PRUint32 offset, PRUint32 count);

  /* void replaceData (in unsigned long offset, in unsigned long count, in DOMString arg)  raises (DOMException); */
  nsresult ReplaceData(PRUint32 offset, PRUint32 count, nsAString * arg);

}

