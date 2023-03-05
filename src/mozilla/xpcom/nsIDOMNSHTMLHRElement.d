/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMNSHTMLHRElement.idl
 */

module mozilla.xpcom.nsIDOMNSHTMLHRElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIDOMNSHTMLHRElement */
const char[] NS_IDOMNSHTMLHRELEMENT_IID_STR = "19b5879f-c125-447c-aaaf-719de3ef221a";

const nsIID NS_IDOMNSHTMLHRELEMENT_IID= 
  {0x19b5879f, 0xc125, 0x447c, 
    [ 0xaa, 0xaf, 0x71, 0x9d, 0xe3, 0xef, 0x22, 0x1a ]};

/**
 * The nsIDOMNSHTMLHRElement interface contains extensions to the
 * interface for [X]HTML hr elements, for compatibility with IE.
 */
extern(Windows)
interface nsIDOMNSHTMLHRElement : nsISupports {
  static const char[] IID_STR = NS_IDOMNSHTMLHRELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMNSHTMLHRELEMENT_IID;

  /* attribute DOMString color; */
  nsresult GetColor(nsAString * aColor);
  nsresult SetColor(nsAString * aColor);

}

