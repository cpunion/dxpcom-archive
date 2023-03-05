/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMNSEvent.idl
 */

module mozilla.xpcom.nsIDOMNSEvent;


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



/* starting interface:    nsIDOMNSEvent */
const char[] NS_IDOMNSEVENT_IID_STR = "e565d518-4510-407f-a3d9-3b4107549c6d";

const nsIID NS_IDOMNSEVENT_IID= 
  {0xe565d518, 0x4510, 0x407f, 
    [ 0xa3, 0xd9, 0x3b, 0x41, 0x07, 0x54, 0x9c, 0x6d ]};

extern(Windows)
interface nsIDOMNSEvent : nsISupports {
  static const char[] IID_STR = NS_IDOMNSEVENT_IID_STR;
  static const nsIID IID = NS_IDOMNSEVENT_IID;

  enum { MOUSEDOWN = 1 };

  enum { MOUSEUP = 2 };

  enum { MOUSEOVER = 4 };

  enum { MOUSEOUT = 8 };

  enum { MOUSEMOVE = 16 };

  enum { MOUSEDRAG = 32 };

  enum { CLICK = 64 };

  enum { DBLCLICK = 128 };

  enum { KEYDOWN = 256 };

  enum { KEYUP = 512 };

  enum { KEYPRESS = 1024 };

  enum { DRAGDROP = 2048 };

  enum { FOCUS = 4096 };

  enum { BLUR = 8192 };

  enum { SELECT = 16384 };

  enum { CHANGE = 32768 };

  enum { RESET = 65536 };

  enum { SUBMIT = 131072 };

  enum { SCROLL = 262144 };

  enum { LOAD = 524288 };

  enum { UNLOAD = 1048576 };

  enum { XFER_DONE = 2097152 };

  enum { ABORT = 4194304 };

  enum { ERROR = 8388608 };

  enum { LOCATE = 16777216 };

  enum { MOVE = 33554432 };

  enum { RESIZE = 67108864 };

  enum { FORWARD = 134217728 };

  enum { HELP = 268435456 };

  enum { BACK = 536870912 };

  enum { TEXT = 1073741824 };

  enum { ALT_MASK = 1 };

  enum { CONTROL_MASK = 2 };

  enum { SHIFT_MASK = 4 };

  enum { META_MASK = 8 };

  /** The original target of the event, before any retargetings. */
  /* readonly attribute nsIDOMEventTarget originalTarget; */
  nsresult GetOriginalTarget(nsIDOMEventTarget  *aOriginalTarget);

  /**
   * The explicit original target of the event.  If the event was retargeted
   * for some reason other than an anonymous boundary crossing, this will be set
   * to the target before the retargeting occurs.  For example, mouse events
   * are retargeted to their parent node when they happen over text nodes (bug
   * 185889), and in that case .target will show the parent and
   * .explicitOriginalTarget will show the text node.
   * .explicitOriginalTarget differs from .originalTarget in that it will never
   * contain anonymous content.
   */
  /* readonly attribute nsIDOMEventTarget explicitOriginalTarget; */
  nsresult GetExplicitOriginalTarget(nsIDOMEventTarget  *aExplicitOriginalTarget);

  /* [noscript] readonly attribute nsIDOMEventTarget tmpRealOriginalTarget; */
  nsresult GetTmpRealOriginalTarget(nsIDOMEventTarget  *aTmpRealOriginalTarget);

  /**
   * @deprecated Use nsIDOMEvent::stopPropagation.
   */
  /* void preventBubble (); */
  nsresult PreventBubble();

  /**
   * @deprecated Use nsIDOMEvent::stopPropagation.
   */
  /* void preventCapture (); */
  nsresult PreventCapture();

  /* readonly attribute boolean isTrusted; */
  nsresult GetIsTrusted(PRBool *aIsTrusted);

}

