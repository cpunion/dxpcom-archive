/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIURIRefObject.idl
 */

module mozilla.xpcom.nsIURIRefObject;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

alias PRUint64 DOMTimeStamp;

public import mozilla.xpcom.nsIDOMAttr; /* forward declaration */

public import mozilla.xpcom.nsIDOMCDATASection; /* forward declaration */

public import mozilla.xpcom.nsIDOMCharacterData; /* forward declaration */

public import mozilla.xpcom.nsIDOMComment; /* forward declaration */

public import mozilla.xpcom.nsIDOMDOMImplementation; /* forward declaration */
    
public import mozilla.xpcom.nsIDOMDocument; /* forward declaration */
    
public import mozilla.xpcom.nsIDOMDocumentFragment; /* forward declaration */

public import mozilla.xpcom.nsIDOMDocumentType; /* forward declaration */

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */

public import mozilla.xpcom.nsIDOMEntity; /* forward declaration */
    
public import mozilla.xpcom.nsIDOMEntityReference; /* forward declaration */

public import mozilla.xpcom.nsIDOMNSDocument; /* forward declaration */

public import mozilla.xpcom.nsIDOMNamedNodeMap; /* forward declaration */

public import mozilla.xpcom.nsIDOMNode; /* forward declaration */

public import mozilla.xpcom.nsIDOMNodeList; /* forward declaration */

public import mozilla.xpcom.nsIDOMNotation; /* forward declaration */

public import mozilla.xpcom.nsIDOMProcessingInstruction; /* forward declaration */

public import mozilla.xpcom.nsIDOMText; /* forward declaration */

public import mozilla.xpcom.nsIDOMDOMStringList; /* forward declaration */

public import mozilla.xpcom.nsIDOMNameList; /* forward declaration */

//public import mozilla.xpcom.DOMException; /* forward declaration */

//public import mozilla.xpcom.RangeException; /* forward declaration */

public import mozilla.xpcom.nsIDOMEvent;

public import mozilla.xpcom.nsIDOMEventListener;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.xpcom.nsIDOMHTMLFormElement;

public import mozilla.xpcom.nsIDOMBarProp;

public import mozilla.xpcom.nsIDOMWindowCollection;

public import mozilla.xpcom.nsIDOMHTMLCollection;

public import mozilla.xpcom.nsIDOMNavigator;

public import mozilla.xpcom.nsIDOMScreen;

public import mozilla.xpcom.nsIDOMHistory;

public import mozilla.xpcom.nsIDOMPkcs11;

public import mozilla.xpcom.nsIDOMMimeTypeArray;

public import mozilla.xpcom.nsIDOMPluginArray;

public import mozilla.xpcom.nsIDOMCrypto;

public import mozilla.xpcom.nsIDOMCRMFObject;

public import mozilla.xpcom.nsIDOMPlugin;

public import mozilla.xpcom.nsIDOMMimeType;

public import mozilla.xpcom.nsIDOMCSSRule;

public import mozilla.xpcom.nsIDOMCSSRuleList;

public import mozilla.xpcom.nsIDOMStyleSheet;

public import mozilla.xpcom.nsIDOMCSSValue;

public import mozilla.xpcom.nsIDOMMediaList;

public import mozilla.xpcom.nsIDOMCSSStyleSheet;

public import mozilla.xpcom.nsIDOMCSSStyleDeclaration;

public import mozilla.xpcom.nsIDOMAbstractView;

public import mozilla.xpcom.nsIDOMDocumentView;

public import mozilla.xpcom.nsIDOMXULSelectCntrlItemEl;

public import mozilla.xpcom.nsIDOMHTMLTableCaptionElem;

public import mozilla.xpcom.nsIDOMHTMLTableSectionElem;

public import mozilla.xpcom.nsIDOMStyleSheetList;

public import mozilla.xpcom.nsIDOMKeyEvent;

public import mozilla.xpcom.nsIDOMCounter;

public import mozilla.xpcom.nsIDOMRect;

public import mozilla.xpcom.nsIDOMRGBColor;

public import mozilla.xpcom.nsIDOMCounter;

public import mozilla.xpcom.nsIDOMCSSPrimitiveValue;

public import mozilla.xpcom.nsIDOMEventGroup;


public import mozilla.xpcom.nsIDOMNode; /* forward declaration */


/* starting interface:    nsIURIRefObject */
const char[] NS_IURIREFOBJECT_IID_STR = "2226927e-1dd2-11b2-b57f-faab47288563";

const nsIID NS_IURIREFOBJECT_IID= 
  {0x2226927e, 0x1dd2, 0x11b2, 
    [ 0xb5, 0x7f, 0xfa, 0xab, 0x47, 0x28, 0x85, 0x63 ]};

/** A class which can represent any node which points to an
  * external URI, e.g. <a>, <img>, <script> etc,
  * and has the capability to rewrite URLs to be
  * relative or absolute.
  * Used by the editor but not dependant on it.
  */
extern(Windows)
interface nsIURIRefObject : nsISupports {
  static const char[] IID_STR = NS_IURIREFOBJECT_IID_STR;
  static const nsIID IID = NS_IURIREFOBJECT_IID;

  /* attribute nsIDOMNode node; */
  nsresult GetNode(nsIDOMNode  *aNode);
  nsresult SetNode(nsIDOMNode  aNode);

  /**
   * Go back to the beginning of the attribute list.
   */
  /* void Reset (); */
  nsresult Reset();

  /**
   * Return the next rewritable URI.
   */
  /* DOMString GetNextURI (); */
  nsresult GetNextURI(nsAString * _retval);

  /**
   * Go back to the beginning of the attribute list
   *
   * @param aOldPat  Old pattern to be replaced, e.g. file:///a/b/
   * @param aNewPat  New pattern to be replaced, e.g. http://mypage.aol.com/
   * @param aMakeRel Rewrite links as relative vs. absolute
   */
  /* void RewriteAllURIs (in DOMString aOldPat, in DOMString aNewPat, in boolean aMakeRel); */
  nsresult RewriteAllURIs(nsAString * aOldPat, nsAString * aNewPat, PRBool aMakeRel);

}

