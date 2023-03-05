/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLOptionsCollection.idl
 */

module mozilla.xpcom.nsIDOMHTMLOptionsCollection;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLOptionsCollection */
const char[] NS_IDOMHTMLOPTIONSCOLLECTION_IID_STR = "bce0213c-f70f-488f-b93f-688acca55d63";

const nsIID NS_IDOMHTMLOPTIONSCOLLECTION_IID= 
  {0xbce0213c, 0xf70f, 0x488f, 
    [ 0xb9, 0x3f, 0x68, 0x8a, 0xcc, 0xa5, 0x5d, 0x63 ]};

/**
 * The nsIDOMHTMLOptionsCollection interface is the interface to a
 * collection of [X]HTML option elements.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLOptionsCollection : nsISupports {
  static const char[] IID_STR = NS_IDOMHTMLOPTIONSCOLLECTION_IID_STR;
  static const nsIID IID = NS_IDOMHTMLOPTIONSCOLLECTION_IID;

  /* attribute unsigned long length; */
  nsresult GetLength(PRUint32 *aLength);
  nsresult SetLength(PRUint32 aLength);

  /* nsIDOMNode item (in unsigned long index); */
  nsresult Item(PRUint32 index, nsIDOMNode *_retval);

  /* nsIDOMNode namedItem (in DOMString name); */
  nsresult NamedItem(nsAString * name, nsIDOMNode *_retval);

}

