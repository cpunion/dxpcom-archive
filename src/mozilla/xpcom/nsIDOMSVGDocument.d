/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGDocument.idl
 */

module mozilla.xpcom.nsIDOMSVGDocument;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMDocument;

public import mozilla.xpcom.nsIDOMSVGSVGElement; /* forward declaration */


/* starting interface:    nsIDOMSVGDocument */
const char[] NS_IDOMSVGDOCUMENT_IID_STR = "12d3b664-1dd2-11b2-a7cf-ceee7e90f396";

const nsIID NS_IDOMSVGDOCUMENT_IID= 
  {0x12d3b664, 0x1dd2, 0x11b2, 
    [ 0xa7, 0xcf, 0xce, 0xee, 0x7e, 0x90, 0xf3, 0x96 ]};

extern(Windows)
interface nsIDOMSVGDocument : nsIDOMDocument {
  static const char[] IID_STR = NS_IDOMSVGDOCUMENT_IID_STR;
  static const nsIID IID = NS_IDOMSVGDOCUMENT_IID;

  /* readonly attribute DOMString title; */
  nsresult GetTitle(nsAString * aTitle);

  /* readonly attribute DOMString referrer; */
  nsresult GetReferrer(nsAString * aReferrer);

  /* readonly attribute DOMString domain; */
  nsresult GetDomain(nsAString * aDomain);

  /* readonly attribute DOMString URL; */
  nsresult GetURL(nsAString * aURL);

  /* readonly attribute nsIDOMSVGSVGElement rootElement; */
  nsresult GetRootElement(nsIDOMSVGSVGElement  *aRootElement);

}

