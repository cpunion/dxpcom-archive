/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMEvent.idl
 */

module mozilla.dxpcom.nsIDOMEventD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMEvent;


public import mozilla.dxpcom.nsIDOMEventD;

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


public import mozilla.xpcom.nsIDOMEventTarget;

public import mozilla.dxpcom.nsIDOMEventTargetD;


/* starting wrapper class:    nsIDOMEvent */
class nsIDOMEventD : public nsISupportsD {

  static const nsIID IID = NS_IDOMEVENT_IID;


  alias nsIDOMEvent InnerType;

  this(nsIDOMEvent intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMEvent opCast() {
    return inner;
  }

  void opAssign(nsIDOMEvent value) {
    inner = value;
  }

  /**
 * The nsIDOMEvent interface is the primary datatype for all events in
 * the Document Object Model.
 *
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Events/
 *
 * @status FROZEN
 */
/**
   * The current event phase is the capturing phase.
   */
  enum { CAPTURING_PHASE = 1U }

  /**
   * The event is currently being evaluated at the target EventTarget.
   */
  enum { AT_TARGET = 2U }

  /**
   * The current event phase is the bubbling phase.
   */
  enum { BUBBLING_PHASE = 3U }

  /**
   * The name of the event (case-insensitive). The name must be an XML 
   * name.
   */
  /* readonly attribute DOMString type; */
  wchar[] Type(){
    scope auto value = new AString();
    nsresult __result = inner.GetType(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * Used to indicate the EventTarget to which the event was originally 
   * dispatched.
   */
  /* readonly attribute nsIDOMEventTarget target; */
  nsIDOMEventTargetD  Target(){
    nsIDOMEventTarget value;
    nsresult __result = inner.GetTarget(&value);
    CheckException(__result);
    return new nsIDOMEventTargetD(value);
  }

  /**
   * Used to indicate the EventTarget whose EventListeners are currently 
   * being processed. This is particularly useful during capturing and 
   * bubbling.
   */
  /* readonly attribute nsIDOMEventTarget currentTarget; */
  nsIDOMEventTargetD  CurrentTarget(){
    nsIDOMEventTarget value;
    nsresult __result = inner.GetCurrentTarget(&value);
    CheckException(__result);
    return new nsIDOMEventTargetD(value);
  }

  /**
   * Used to indicate which phase of event flow is currently being 
   * evaluated.
   */
  /* readonly attribute unsigned short eventPhase; */
  PRUint16 EventPhase(){
    PRUint16 value;
    nsresult __result = inner.GetEventPhase(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Used to indicate whether or not an event is a bubbling event. If the 
   * event can bubble the value is true, else the value is false.
   */
  /* readonly attribute boolean bubbles; */
  PRBool Bubbles(){
    PRBool value;
    nsresult __result = inner.GetBubbles(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Used to indicate whether or not an event can have its default action 
   * prevented. If the default action can be prevented the value is true, 
   * else the value is false.
   */
  /* readonly attribute boolean cancelable; */
  PRBool Cancelable(){
    PRBool value;
    nsresult __result = inner.GetCancelable(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Used to specify the time (in milliseconds relative to the epoch) at 
   * which the event was created. Due to the fact that some systems may 
   * not provide this information the value of timeStamp may be not 
   * available for all events. When not available, a value of 0 will be 
   * returned. Examples of epoch time are the time of the system start or 
   * 0:0:0 UTC 1st January 1970.
   */
  /* readonly attribute DOMTimeStamp timeStamp; */
  DOMTimeStamp TimeStamp(){
    DOMTimeStamp value;
    nsresult __result = inner.GetTimeStamp(&value);
    CheckException(__result);
    return value;
  }

  /**
   * The stopPropagation method is used prevent further propagation of an 
   * event during event flow. If this method is called by any 
   * EventListener the event will cease propagating through the tree. The 
   * event will complete dispatch to all listeners on the current 
   * EventTarget before event flow stops. This method may be used during 
   * any stage of event flow.
   */
  /* void stopPropagation (); */
  void StopPropagation(){
    nsresult __result = inner.StopPropagation();
    CheckException(__result);
  }

  /**
   * If an event is cancelable, the preventDefault method is used to 
   * signify that the event is to be canceled, meaning any default action 
   * normally taken by the implementation as a result of the event will 
   * not occur. If, during any stage of event flow, the preventDefault 
   * method is called the event is canceled. Any default action associated 
   * with the event will not occur. Calling this method for a 
   * non-cancelable event has no effect. Once preventDefault has been 
   * called it will remain in effect throughout the remainder of the 
   * event's propagation. This method may be used during any stage of 
   * event flow.
   */
  /* void preventDefault (); */
  void PreventDefault(){
    nsresult __result = inner.PreventDefault();
    CheckException(__result);
  }

  /**
   * The initEvent method is used to initialize the value of an Event 
   * created through the DocumentEvent interface. This method may only be 
   * called before the Event has been dispatched via the dispatchEvent 
   * method, though it may be called multiple times during that phase if 
   * necessary. If called multiple times the final invocation takes 
   * precedence. If called from a subclass of Event interface only the 
   * values specified in the initEvent method are modified, all other 
   * attributes are left unchanged.
   *
   * @param   eventTypeArg Specifies the event type. This type may be 
   *                       any event type currently defined in this 
   *                       specification or a new event type.. The string 
   *                       must be an XML name.
   *                       Any new event type must not begin with any 
   *                       upper, lower, or mixed case version of the 
   *                       string "DOM". This prefix is reserved for 
   *                       future DOM event sets. It is also strongly 
   *                       recommended that third parties adding their 
   *                       own events use their own prefix to avoid 
   *                       confusion and lessen the probability of 
   *                       conflicts with other new events.
   * @param   canBubbleArg Specifies whether or not the event can bubble.
   * @param   cancelableArg Specifies whether or not the event's default 
   *                        action can be prevented.
   */
  /* void initEvent (in DOMString eventTypeArg, in boolean canBubbleArg, in boolean cancelableArg); */
  void InitEvent(wchar[] eventTypeArg, PRBool canBubbleArg, PRBool cancelableArg){
    scope auto _eventTypeArg = new AString(eventTypeArg);
    nsresult __result = inner.InitEvent(cast(nsAString*)_eventTypeArg, canBubbleArg, cancelableArg);
    CheckException(__result);
  }

private:
  nsIDOMEvent inner;

}

