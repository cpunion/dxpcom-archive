/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLDirectoryElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLDirectoryElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLDirectoryElement */
const char[] NS_IDOMHTMLDIRECTORYELEMENT_IID_STR = "a6cf909c-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLDIRECTORYELEMENT_IID= 
  {0xa6cf909c, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLDirectoryElement interface is the interface to a
 * [X]HTML dir element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLDirectoryElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLDIRECTORYELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLDIRECTORYELEMENT_IID;

  /* attribute boolean compact; */
  nsresult GetCompact(PRBool *aCompact);
  nsresult SetCompact(PRBool aCompact);

}

