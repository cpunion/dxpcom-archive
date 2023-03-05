/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMEventTarget.idl
 */

module mozilla.dxpcom.nsIDOMEventTargetD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMEventTarget;


public import mozilla.dxpcom.nsIDOMEventTargetD;

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



/* starting wrapper class:    nsIDOMEventTarget */
class nsIDOMEventTargetD : public nsISupportsD {

  static const nsIID IID = NS_IDOMEVENTTARGET_IID;


  alias nsIDOMEventTarget InnerType;

  this(nsIDOMEventTarget intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMEventTarget opCast() {
    return inner;
  }

  void opAssign(nsIDOMEventTarget value) {
    inner = value;
  }

  /**
 * The nsIDOMEventTarget interface is the interface implemented by all
 * event targets in the Document Object Model.
 *
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Events/
 *
 * @status FROZEN
 */
/**
   * This method allows the registration of event listeners on the event target.
   * If an EventListener is added to an EventTarget while it is processing an
   * event, it will not be triggered by the current actions but may be 
   * triggered during a later stage of event flow, such as the bubbling phase.
   * 
   * If multiple identical EventListeners are registered on the same 
   * EventTarget with the same parameters the duplicate instances are 
   * discarded. They do not cause the EventListener to be called twice 
   * and since they are discarded they do not need to be removed with the 
   * removeEventListener method.
   *
   * @param   type The event type for which the user is registering
   * @param   listener The listener parameter takes an interface 
   *                   implemented by the user which contains the methods 
   *                   to be called when the event occurs.
   * @param   useCapture If true, useCapture indicates that the user 
   *                     wishes to initiate capture. After initiating 
   *                     capture, all events of the specified type will be 
   *                     dispatched to the registered EventListener before 
   *                     being dispatched to any EventTargets beneath them 
   *                     in the tree. Events which are bubbling upward 
   *                     through the tree will not trigger an 
   *                     EventListener designated to use capture.
   */
  /* void addEventListener (in DOMString type, in nsIDOMEventListener listener, in boolean useCapture); */
  void AddEventListener(wchar[] type, nsIDOMEventListenerD listener, PRBool useCapture){
    scope auto _type = new AString(type);
    nsresult __result = inner.AddEventListener(cast(nsAString*)_type, listener ? cast(nsIDOMEventListener)listener : null, useCapture);
    CheckException(__result);
  }

  /**
   * This method allows the removal of event listeners from the event 
   * target. If an EventListener is removed from an EventTarget while it 
   * is processing an event, it will not be triggered by the current actions. 
   * EventListeners can never be invoked after being removed.
   * Calling removeEventListener with arguments which do not identify any 
   * currently registered EventListener on the EventTarget has no effect.
   *
   * @param   type Specifies the event type of the EventListener being 
   *               removed.
   * @param   listener The EventListener parameter indicates the 
   *                   EventListener to be removed.
   * @param   useCapture Specifies whether the EventListener being 
   *                     removed was registered as a capturing listener or 
   *                     not. If a listener was registered twice, one with 
   *                     capture and one without, each must be removed 
   *                     separately. Removal of a capturing listener does 
   *                     not affect a non-capturing version of the same 
   *                     listener, and vice versa.
   */
  /* void removeEventListener (in DOMString type, in nsIDOMEventListener listener, in boolean useCapture); */
  void RemoveEventListener(wchar[] type, nsIDOMEventListenerD listener, PRBool useCapture){
    scope auto _type = new AString(type);
    nsresult __result = inner.RemoveEventListener(cast(nsAString*)_type, listener ? cast(nsIDOMEventListener)listener : null, useCapture);
    CheckException(__result);
  }

  /**
   * This method allows the dispatch of events into the implementations 
   * event model. Events dispatched in this manner will have the same 
   * capturing and bubbling behavior as events dispatched directly by the 
   * implementation. The target of the event is the EventTarget on which 
   * dispatchEvent is called.
   *
   * @param   evt Specifies the event type, behavior, and contextual 
   *              information to be used in processing the event.
   * @return  Indicates whether any of the listeners which handled the 
   *          event called preventDefault. If preventDefault was called 
   *          the value is false, else the value is true.
   * @throws  UNSPECIFIED_EVENT_TYPE_ERR: Raised if the Event's type was 
   *              not specified by initializing the event before 
   *              dispatchEvent was called. Specification of the Event's 
   *              type as null or an empty string will also trigger this 
   *              exception.
   */
  /* boolean dispatchEvent (in nsIDOMEvent evt)  raises (DOMException); */
  PRBool DispatchEvent(nsIDOMEventD evt){
    PRBool _retval;
    nsresult __result = inner.DispatchEvent(evt ? cast(nsIDOMEvent)evt : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIDOMEventTarget inner;

}

