/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLDocument.idl
 */

module mozilla.xpcom.nsIDOMHTMLDocument;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMDocument;


/* starting interface:    nsIDOMHTMLDocument */
const char[] NS_IDOMHTMLDOCUMENT_IID_STR = "a6cf9084-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLDOCUMENT_IID= 
  {0xa6cf9084, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLDocument interface is the interface to a [X]HTML
 * document object.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLDocument : nsIDOMDocument {
  static const char[] IID_STR = NS_IDOMHTMLDOCUMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLDOCUMENT_IID;

  /* attribute DOMString title; */
  nsresult GetTitle(nsAString * aTitle);
  nsresult SetTitle(nsAString * aTitle);

  /* readonly attribute DOMString referrer; */
  nsresult GetReferrer(nsAString * aReferrer);

  /* [noscript] readonly attribute DOMString domain; */
  nsresult GetDomain(nsAString * aDomain);

  /* readonly attribute DOMString URL; */
  nsresult GetURL(nsAString * aURL);

  /* attribute nsIDOMHTMLElement body; */
  nsresult GetBody(nsIDOMHTMLElement  *aBody);
  nsresult SetBody(nsIDOMHTMLElement  aBody);

  /* readonly attribute nsIDOMHTMLCollection images; */
  nsresult GetImages(nsIDOMHTMLCollection  *aImages);

  /* readonly attribute nsIDOMHTMLCollection applets; */
  nsresult GetApplets(nsIDOMHTMLCollection  *aApplets);

  /* readonly attribute nsIDOMHTMLCollection links; */
  nsresult GetLinks(nsIDOMHTMLCollection  *aLinks);

  /* readonly attribute nsIDOMHTMLCollection forms; */
  nsresult GetForms(nsIDOMHTMLCollection  *aForms);

  /* readonly attribute nsIDOMHTMLCollection anchors; */
  nsresult GetAnchors(nsIDOMHTMLCollection  *aAnchors);

  /* attribute DOMString cookie; */
  nsresult GetCookie(nsAString * aCookie);
  nsresult SetCookie(nsAString * aCookie);

  /* [noscript] void open (); */
  nsresult Open();

  /* void close (); */
  nsresult Close();

  /* [noscript] void write (in DOMString text); */
  nsresult Write(nsAString * text);

  /* [noscript] void writeln (in DOMString text); */
  nsresult Writeln(nsAString * text);

  /* nsIDOMNodeList getElementsByName (in DOMString elementName); */
  nsresult GetElementsByName(nsAString * elementName, nsIDOMNodeList *_retval);

}

