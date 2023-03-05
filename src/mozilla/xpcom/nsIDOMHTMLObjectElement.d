/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLObjectElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLObjectElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLObjectElement */
const char[] NS_IDOMHTMLOBJECTELEMENT_IID_STR = "a6cf90ac-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLOBJECTELEMENT_IID= 
  {0xa6cf90ac, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLObjectElement interface is the interface to a [X]HTML
 * object element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLObjectElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLOBJECTELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLOBJECTELEMENT_IID;

  /* readonly attribute nsIDOMHTMLFormElement form; */
  nsresult GetForm(nsIDOMHTMLFormElement  *aForm);

  /* attribute DOMString code; */
  nsresult GetCode(nsAString * aCode);
  nsresult SetCode(nsAString * aCode);

  /* attribute DOMString align; */
  nsresult GetAlign(nsAString * aAlign);
  nsresult SetAlign(nsAString * aAlign);

  /* attribute DOMString archive; */
  nsresult GetArchive(nsAString * aArchive);
  nsresult SetArchive(nsAString * aArchive);

  /* attribute DOMString border; */
  nsresult GetBorder(nsAString * aBorder);
  nsresult SetBorder(nsAString * aBorder);

  /* attribute DOMString codeBase; */
  nsresult GetCodeBase(nsAString * aCodeBase);
  nsresult SetCodeBase(nsAString * aCodeBase);

  /* attribute DOMString codeType; */
  nsresult GetCodeType(nsAString * aCodeType);
  nsresult SetCodeType(nsAString * aCodeType);

  /* attribute DOMString data; */
  nsresult GetData(nsAString * aData);
  nsresult SetData(nsAString * aData);

  /* attribute boolean declare; */
  nsresult GetDeclare(PRBool *aDeclare);
  nsresult SetDeclare(PRBool aDeclare);

  /* attribute DOMString height; */
  nsresult GetHeight(nsAString * aHeight);
  nsresult SetHeight(nsAString * aHeight);

  /* attribute long hspace; */
  nsresult GetHspace(PRInt32 *aHspace);
  nsresult SetHspace(PRInt32 aHspace);

  /* attribute DOMString name; */
  nsresult GetName(nsAString * aName);
  nsresult SetName(nsAString * aName);

  /* attribute DOMString standby; */
  nsresult GetStandby(nsAString * aStandby);
  nsresult SetStandby(nsAString * aStandby);

  /* attribute long tabIndex; */
  nsresult GetTabIndex(PRInt32 *aTabIndex);
  nsresult SetTabIndex(PRInt32 aTabIndex);

  /* attribute DOMString type; */
  nsresult GetType(nsAString * aType);
  nsresult SetType(nsAString * aType);

  /* attribute DOMString useMap; */
  nsresult GetUseMap(nsAString * aUseMap);
  nsresult SetUseMap(nsAString * aUseMap);

  /* attribute long vspace; */
  nsresult GetVspace(PRInt32 *aVspace);
  nsresult SetVspace(PRInt32 aVspace);

  /* attribute DOMString width; */
  nsresult GetWidth(nsAString * aWidth);
  nsresult SetWidth(nsAString * aWidth);

  /* readonly attribute nsIDOMDocument contentDocument; */
  nsresult GetContentDocument(nsIDOMDocument  *aContentDocument);

}

