/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLCanvasElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLCanvasElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLCanvasElement */
const char[] NS_IDOMHTMLCANVASELEMENT_IID_STR = "0583a2ea-ab19-40e1-8be4-5e9b2f275560";

const nsIID NS_IDOMHTMLCANVASELEMENT_IID= 
  {0x0583a2ea, 0xab19, 0x40e1, 
    [ 0x8b, 0xe4, 0x5e, 0x9b, 0x2f, 0x27, 0x55, 0x60 ]};

/**
 * The nsIDOMHTMLCanvasElement interface is the interface to a HTML
 * <canvas> element.
 *
 * For more information on this interface, please see
 * http://www.whatwg.org/specs/web-apps/current-work/#graphics
 *
 * @status UNDER_DEVELOPMENT
 */
extern(Windows)
interface nsIDOMHTMLCanvasElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLCANVASELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLCANVASELEMENT_IID;

  /* attribute long width; */
  nsresult GetWidth(PRInt32 *aWidth);
  nsresult SetWidth(PRInt32 aWidth);

  /* attribute long height; */
  nsresult GetHeight(PRInt32 *aHeight);
  nsresult SetHeight(PRInt32 aHeight);

  /* nsISupports getContext (in DOMString contextId); */
  nsresult GetContext(nsAString * contextId, nsISupports *_retval);

  /* DOMString toDataURL (); */
  nsresult ToDataURL(nsAString * _retval);

  /* [noscript] DOMString toDataURLAs (in DOMString mimeType, in DOMString encoderOptions); */
  nsresult ToDataURLAs(nsAString * mimeType, nsAString * encoderOptions, nsAString * _retval);

}

