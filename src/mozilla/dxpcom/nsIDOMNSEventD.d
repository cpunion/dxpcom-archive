/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMNSEvent.idl
 */

module mozilla.dxpcom.nsIDOMNSEventD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMNSEvent;


public import mozilla.dxpcom.nsIDOMNSEventD;

public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

alias PRUint64 DOMTimeStamp;

public import mozilla.xpcom.nsIDOMAttr;

public import mozilla.xpcom.nsIDOMCDATASection;

public import mozilla.xpcom.nsIDOMCharacterData;

public import mozilla.xpcom.nsIDOMComment;

public import mozilla.xpcom.nsIDOMDOMImplementation;
    
public import mozilla.xpcom.nsIDOMDocument;

public import mozilla.xpcom.nsIDOMDocumentFragment;

public import mozilla.xpcom.nsIDOMDocumentType;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.xpcom.nsIDOMEntity;

public import mozilla.xpcom.nsIDOMEntityReference;

public import mozilla.xpcom.nsIDOMNSDocument;

public import mozilla.xpcom.nsIDOMNamedNodeMap;

public import mozilla.xpcom.nsIDOMNode;

public import mozilla.xpcom.nsIDOMNodeList;

public import mozilla.xpcom.nsIDOMNotation;

public import mozilla.xpcom.nsIDOMProcessingInstruction;

public import mozilla.xpcom.nsIDOMText;

public import mozilla.xpcom.nsIDOMDOMStringList;

public import mozilla.xpcom.nsIDOMNameList;

//public import mozilla.xpcom.DOMException;

//public import mozilla.xpcom.RangeException;

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

public import mozilla.dxpcom.nsrootidlD;

public import mozilla.dxpcom.nsISupportsD;

alias PRUint64 DOMTimeStampD;

public import mozilla.dxpcom.nsIDOMAttrD;

public import mozilla.dxpcom.nsIDOMCDATASectionD;

public import mozilla.dxpcom.nsIDOMCharacterDataD;

public import mozilla.dxpcom.nsIDOMCommentD;

public import mozilla.dxpcom.nsIDOMDOMImplementationD;
    
public import mozilla.dxpcom.nsIDOMDocumentD;

public import mozilla.dxpcom.nsIDOMDocumentFragmentD;

public import mozilla.dxpcom.nsIDOMDocumentTypeD;

public import mozilla.dxpcom.nsIDOMElementD;

public import mozilla.dxpcom.nsIDOMEntityD;

public import mozilla.dxpcom.nsIDOMEntityReferenceD;

public import mozilla.dxpcom.nsIDOMNSDocumentD;

public import mozilla.dxpcom.nsIDOMNamedNodeMapD;

public import mozilla.dxpcom.nsIDOMNodeD;

public import mozilla.dxpcom.nsIDOMNodeListD;

public import mozilla.dxpcom.nsIDOMNotationD;

public import mozilla.dxpcom.nsIDOMProcessingInstructionD;

public import mozilla.dxpcom.nsIDOMTextD;

public import mozilla.dxpcom.nsIDOMDOMStringListD;

public import mozilla.dxpcom.nsIDOMNameListD;

//public import mozilla.dxpcom.DOMExceptionD;

//public import mozilla.dxpcom.RangeExceptionD;

public import mozilla.dxpcom.nsIDOMEventD;

public import mozilla.dxpcom.nsIDOMEventListenerD;

public import mozilla.dxpcom.nsIDOMWindowD;

public import mozilla.dxpcom.nsIDOMHTMLFormElementD;

public import mozilla.dxpcom.nsIDOMBarPropD;

public import mozilla.dxpcom.nsIDOMWindowCollectionD;

public import mozilla.dxpcom.nsIDOMHTMLCollectionD;

public import mozilla.dxpcom.nsIDOMNavigatorD;

public import mozilla.dxpcom.nsIDOMScreenD;

public import mozilla.dxpcom.nsIDOMHistoryD;

public import mozilla.dxpcom.nsIDOMPkcs11D;

public import mozilla.dxpcom.nsIDOMMimeTypeArrayD;

public import mozilla.dxpcom.nsIDOMPluginArrayD;

public import mozilla.dxpcom.nsIDOMCryptoD;

public import mozilla.dxpcom.nsIDOMCRMFObjectD;

public import mozilla.dxpcom.nsIDOMPluginD;

public import mozilla.dxpcom.nsIDOMMimeTypeD;

public import mozilla.dxpcom.nsIDOMCSSRuleD;

public import mozilla.dxpcom.nsIDOMCSSRuleListD;

public import mozilla.dxpcom.nsIDOMStyleSheetD;

public import mozilla.dxpcom.nsIDOMCSSValueD;

public import mozilla.dxpcom.nsIDOMMediaListD;

public import mozilla.dxpcom.nsIDOMCSSStyleSheetD;

public import mozilla.dxpcom.nsIDOMCSSStyleDeclarationD;

public import mozilla.dxpcom.nsIDOMAbstractViewD;

public import mozilla.dxpcom.nsIDOMDocumentViewD;

public import mozilla.dxpcom.nsIDOMXULSelectCntrlItemElD;

public import mozilla.dxpcom.nsIDOMHTMLTableCaptionElemD;

public import mozilla.dxpcom.nsIDOMHTMLTableSectionElemD;

public import mozilla.dxpcom.nsIDOMStyleSheetListD;

public import mozilla.dxpcom.nsIDOMKeyEventD;

public import mozilla.dxpcom.nsIDOMCounterD;

public import mozilla.dxpcom.nsIDOMRectD;

public import mozilla.dxpcom.nsIDOMRGBColorD;

public import mozilla.dxpcom.nsIDOMCounterD;

public import mozilla.dxpcom.nsIDOMCSSPrimitiveValueD;

public import mozilla.dxpcom.nsIDOMEventGroupD;



/* starting wrapper class:    nsIDOMNSEvent */
class nsIDOMNSEventD : public nsISupportsD {

  static const nsIID IID = NS_IDOMNSEVENT_IID;


  alias nsIDOMNSEvent InnerType;

  this(nsIDOMNSEvent intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMNSEvent opCast() {
    return inner;
  }

  void opAssign(nsIDOMNSEvent value) {
    inner = value;
  }

  enum { MOUSEDOWN = 1 }

  enum { MOUSEUP = 2 }

  enum { MOUSEOVER = 4 }

  enum { MOUSEOUT = 8 }

  enum { MOUSEMOVE = 16 }

  enum { MOUSEDRAG = 32 }

  enum { CLICK = 64 }

  enum { DBLCLICK = 128 }

  enum { KEYDOWN = 256 }

  enum { KEYUP = 512 }

  enum { KEYPRESS = 1024 }

  enum { DRAGDROP = 2048 }

  enum { FOCUS = 4096 }

  enum { BLUR = 8192 }

  enum { SELECT = 16384 }

  enum { CHANGE = 32768 }

  enum { RESET = 65536 }

  enum { SUBMIT = 131072 }

  enum { SCROLL = 262144 }

  enum { LOAD = 524288 }

  enum { UNLOAD = 1048576 }

  enum { XFER_DONE = 2097152 }

  enum { ABORT = 4194304 }

  enum { ERROR = 8388608 }

  enum { LOCATE = 16777216 }

  enum { MOVE = 33554432 }

  enum { RESIZE = 67108864 }

  enum { FORWARD = 134217728 }

  enum { HELP = 268435456 }

  enum { BACK = 536870912 }

  enum { TEXT = 1073741824 }

  enum { ALT_MASK = 1 }

  enum { CONTROL_MASK = 2 }

  enum { SHIFT_MASK = 4 }

  enum { META_MASK = 8 }

  /** The original target of the event, before any retargetings. */
  /* readonly attribute nsIDOMEventTarget originalTarget; */
  nsIDOMEventTargetD  OriginalTarget(){
    nsIDOMEventTarget value;
    nsresult __result = inner.GetOriginalTarget(&value);
    CheckException(__result);
    return new nsIDOMEventTargetD(value);
  }

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
  nsIDOMEventTargetD  ExplicitOriginalTarget(){
    nsIDOMEventTarget value;
    nsresult __result = inner.GetExplicitOriginalTarget(&value);
    CheckException(__result);
    return new nsIDOMEventTargetD(value);
  }

  /* [noscript] readonly attribute nsIDOMEventTarget tmpRealOriginalTarget; */
  nsIDOMEventTargetD  TmpRealOriginalTarget(){
    nsIDOMEventTarget value;
    nsresult __result = inner.GetTmpRealOriginalTarget(&value);
    CheckException(__result);
    return new nsIDOMEventTargetD(value);
  }

  /**
   * @deprecated Use nsIDOMEvent::stopPropagation.
   */
  /* void preventBubble (); */
  void PreventBubble(){
    nsresult __result = inner.PreventBubble();
    CheckException(__result);
  }

  /**
   * @deprecated Use nsIDOMEvent::stopPropagation.
   */
  /* void preventCapture (); */
  void PreventCapture(){
    nsresult __result = inner.PreventCapture();
    CheckException(__result);
  }

  /* readonly attribute boolean isTrusted; */
  PRBool IsTrusted(){
    PRBool value;
    nsresult __result = inner.GetIsTrusted(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIDOMNSEvent inner;

}

