/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCSSValueList.idl
 */

module mozilla.xpcom.nsIDOMCSSValueList;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMCSSValue;


/* starting interface:    nsIDOMCSSValueList */
const char[] NS_IDOMCSSVALUELIST_IID_STR = "8f09fa84-39b9-4dca-9b2f-db0eeb186286";

const nsIID NS_IDOMCSSVALUELIST_IID= 
  {0x8f09fa84, 0x39b9, 0x4dca, 
    [ 0x9b, 0x2f, 0xdb, 0x0e, 0xeb, 0x18, 0x62, 0x86 ]};

extern(Windows)
interface nsIDOMCSSValueList : nsIDOMCSSValue {
  static const char[] IID_STR = NS_IDOMCSSVALUELIST_IID_STR;
  static const nsIID IID = NS_IDOMCSSVALUELIST_IID;

  /**
 * The nsIDOMCSSValueList interface is a datatype for a list of CSS
 * values in the Document Object Model.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-Style
 *
 * @status FROZEN
 */
  /* readonly attribute unsigned long length; */
  nsresult GetLength(PRUint32 *aLength);

  /* nsIDOMCSSValue item (in unsigned long index); */
  nsresult Item(PRUint32 index, nsIDOMCSSValue *_retval);

}

