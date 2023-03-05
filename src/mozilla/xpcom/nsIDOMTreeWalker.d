/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMTreeWalker.idl
 */

module mozilla.xpcom.nsIDOMTreeWalker;


public import mozilla.xpcom.nsrootidl;

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


public import mozilla.xpcom.nsIDOMTreeWalker; /* forward declaration */

public import mozilla.xpcom.nsIDOMNodeFilter; /* forward declaration */


/* starting interface:    nsIDOMTreeWalker */
const char[] NS_IDOMTREEWALKER_IID_STR = "400af3ca-1dd2-11b2-a50a-887ecca2e63a";

const nsIID NS_IDOMTREEWALKER_IID= 
  {0x400af3ca, 0x1dd2, 0x11b2, 
    [ 0xa5, 0x0a, 0x88, 0x7e, 0xcc, 0xa2, 0xe6, 0x3a ]};

extern(Windows)
interface nsIDOMTreeWalker : nsISupports {
  static const char[] IID_STR = NS_IDOMTREEWALKER_IID_STR;
  static const nsIID IID = NS_IDOMTREEWALKER_IID;

  /* readonly attribute nsIDOMNode root; */
  nsresult GetRoot(nsIDOMNode  *aRoot);

  /* readonly attribute unsigned long whatToShow; */
  nsresult GetWhatToShow(PRUint32 *aWhatToShow);

  /* readonly attribute nsIDOMNodeFilter filter; */
  nsresult GetFilter(nsIDOMNodeFilter  *aFilter);

  /* readonly attribute boolean expandEntityReferences; */
  nsresult GetExpandEntityReferences(PRBool *aExpandEntityReferences);

  /* attribute nsIDOMNode currentNode; */
  nsresult GetCurrentNode(nsIDOMNode  *aCurrentNode);
  nsresult SetCurrentNode(nsIDOMNode  aCurrentNode);

  /* nsIDOMNode parentNode (); */
  nsresult ParentNode(nsIDOMNode *_retval);

  /* nsIDOMNode firstChild (); */
  nsresult FirstChild(nsIDOMNode *_retval);

  /* nsIDOMNode lastChild (); */
  nsresult LastChild(nsIDOMNode *_retval);

  /* nsIDOMNode previousSibling (); */
  nsresult PreviousSibling(nsIDOMNode *_retval);

  /* nsIDOMNode nextSibling (); */
  nsresult NextSibling(nsIDOMNode *_retval);

  /* nsIDOMNode previousNode (); */
  nsresult PreviousNode(nsIDOMNode *_retval);

  /* nsIDOMNode nextNode (); */
  nsresult NextNode(nsIDOMNode *_retval);

}

