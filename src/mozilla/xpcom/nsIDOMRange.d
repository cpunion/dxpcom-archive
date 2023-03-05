/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMRange.idl
 */

module mozilla.xpcom.nsIDOMRange;


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



/* starting interface:    nsIDOMRange */
const char[] NS_IDOMRANGE_IID_STR = "a6cf90ce-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMRANGE_IID= 
  {0xa6cf90ce, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

extern(Windows)
interface nsIDOMRange : nsISupports {
  static const char[] IID_STR = NS_IDOMRANGE_IID_STR;
  static const nsIID IID = NS_IDOMRANGE_IID;

  /**
 * The nsIDOMRange interface is an interface to a DOM range object.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-Traversal-Range/
 *
 * @status FROZEN
 */
  /* readonly attribute nsIDOMNode startContainer; */
  nsresult GetStartContainer(nsIDOMNode  *aStartContainer);

  /* readonly attribute long startOffset; */
  nsresult GetStartOffset(PRInt32 *aStartOffset);

  /* readonly attribute nsIDOMNode endContainer; */
  nsresult GetEndContainer(nsIDOMNode  *aEndContainer);

  /* readonly attribute long endOffset; */
  nsresult GetEndOffset(PRInt32 *aEndOffset);

  /* readonly attribute boolean collapsed; */
  nsresult GetCollapsed(PRBool *aCollapsed);

  /* readonly attribute nsIDOMNode commonAncestorContainer; */
  nsresult GetCommonAncestorContainer(nsIDOMNode  *aCommonAncestorContainer);

  /* void setStart (in nsIDOMNode refNode, in long offset)  raises (RangeException, DOMException); */
  nsresult SetStart(nsIDOMNode refNode, PRInt32 offset);

  /* void setEnd (in nsIDOMNode refNode, in long offset)  raises (RangeException, DOMException); */
  nsresult SetEnd(nsIDOMNode refNode, PRInt32 offset);

  /* void setStartBefore (in nsIDOMNode refNode)  raises (RangeException, DOMException); */
  nsresult SetStartBefore(nsIDOMNode refNode);

  /* void setStartAfter (in nsIDOMNode refNode)  raises (RangeException, DOMException); */
  nsresult SetStartAfter(nsIDOMNode refNode);

  /* void setEndBefore (in nsIDOMNode refNode)  raises (RangeException, DOMException); */
  nsresult SetEndBefore(nsIDOMNode refNode);

  /* void setEndAfter (in nsIDOMNode refNode)  raises (RangeException, DOMException); */
  nsresult SetEndAfter(nsIDOMNode refNode);

  /* void collapse (in boolean toStart)  raises (DOMException); */
  nsresult Collapse(PRBool toStart);

  /* void selectNode (in nsIDOMNode refNode)  raises (RangeException, DOMException); */
  nsresult SelectNode(nsIDOMNode refNode);

  /* void selectNodeContents (in nsIDOMNode refNode)  raises (RangeException, DOMException); */
  nsresult SelectNodeContents(nsIDOMNode refNode);

  enum { START_TO_START = 0U };

  enum { START_TO_END = 1U };

  enum { END_TO_END = 2U };

  enum { END_TO_START = 3U };

  /* short compareBoundaryPoints (in unsigned short how, in nsIDOMRange sourceRange)  raises (DOMException); */
  nsresult CompareBoundaryPoints(PRUint16 how, nsIDOMRange sourceRange, PRInt16 *_retval);

  /* void deleteContents ()  raises (DOMException); */
  nsresult DeleteContents();

  /* nsIDOMDocumentFragment extractContents ()  raises (DOMException); */
  nsresult ExtractContents(nsIDOMDocumentFragment *_retval);

  /* nsIDOMDocumentFragment cloneContents ()  raises (DOMException); */
  nsresult CloneContents(nsIDOMDocumentFragment *_retval);

  /* void insertNode (in nsIDOMNode newNode)  raises (DOMException, RangeException); */
  nsresult InsertNode(nsIDOMNode newNode);

  /* void surroundContents (in nsIDOMNode newParent)  raises (DOMException, RangeException); */
  nsresult SurroundContents(nsIDOMNode newParent);

  /* nsIDOMRange cloneRange ()  raises (DOMException); */
  nsresult CloneRange(nsIDOMRange *_retval);

  /* DOMString toString ()  raises (DOMException); */
  nsresult ToString(nsAString * _retval);

  /* void detach ()  raises (DOMException); */
  nsresult Detach();

}

