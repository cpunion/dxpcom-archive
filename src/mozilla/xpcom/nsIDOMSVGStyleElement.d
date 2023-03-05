/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGStyleElement.idl
 */

module mozilla.xpcom.nsIDOMSVGStyleElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMSVGElement;


/* starting interface:    nsIDOMSVGStyleElement */
const char[] NS_IDOMSVGSTYLEELEMENT_IID_STR = "9af0d129-b366-4aa8-b7d8-8dce93148d91";

const nsIID NS_IDOMSVGSTYLEELEMENT_IID= 
  {0x9af0d129, 0xb366, 0x4aa8, 
    [ 0xb7, 0xd8, 0x8d, 0xce, 0x93, 0x14, 0x8d, 0x91 ]};

extern(Windows)
interface nsIDOMSVGStyleElement : nsIDOMSVGElement {
  static const char[] IID_STR = NS_IDOMSVGSTYLEELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMSVGSTYLEELEMENT_IID;

  /* attribute DOMString xmlspace; */
  nsresult GetXmlspace(nsAString * aXmlspace);
  nsresult SetXmlspace(nsAString * aXmlspace);

  /* attribute DOMString type; */
  nsresult GetType(nsAString * aType);
  nsresult SetType(nsAString * aType);

  /* attribute DOMString media; */
  nsresult GetMedia(nsAString * aMedia);
  nsresult SetMedia(nsAString * aMedia);

  /* attribute DOMString title; */
  nsresult GetTitle(nsAString * aTitle);
  nsresult SetTitle(nsAString * aTitle);

}

