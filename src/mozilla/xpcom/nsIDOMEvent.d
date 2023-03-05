/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMEvent.idl
 */

module mozilla.xpcom.nsIDOMEvent;


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


public import mozilla.xpcom.nsIDOMEventTarget; /* forward declaration */


/* starting interface:    nsIDOMEvent */
const char[] NS_IDOMEVENT_IID_STR = "a66b7b80-ff46-bd97-0080-5f8ae38add32";

const nsIID NS_IDOMEVENT_IID= 
  {0xa66b7b80, 0xff46, 0xbd97, 
    [ 0x00, 0x80, 0x5f, 0x8a, 0xe3, 0x8a, 0xdd, 0x32 ]};

extern(Windows)
interface nsIDOMEvent : nsISupports {
  static const char[] IID_STR = NS_IDOMEVENT_IID_STR;
  static const nsIID IID = NS_IDOMEVENT_IID;

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
  enum { CAPTURING_PHASE = 1U };

  /**
   * The event is currently being evaluated at the target EventTarget.
   */
  enum { AT_TARGET = 2U };

  /**
   * The current event phase is the bubbling phase.
   */
  enum { BUBBLING_PHASE = 3U };

  /**
   * The name of the event (case-insensitive). The name must be an XML 
   * name.
   */
  /* readonly attribute DOMString type; */
  nsresult GetType(nsAString * aType);

  /**
   * Used to indicate the EventTarget to which the event was originally 
   * dispatched.
   */
  /* readonly attribute nsIDOMEventTarget target; */
  nsresult GetTarget(nsIDOMEventTarget  *aTarget);

  /**
   * Used to indicate the EventTarget whose EventListeners are currently 
   * being processed. This is particularly useful during capturing and 
   * bubbling.
   */
  /* readonly attribute nsIDOMEventTarget currentTarget; */
  nsresult GetCurrentTarget(nsIDOMEventTarget  *aCurrentTarget);

  /**
   * Used to indicate which phase of event flow is currently being 
   * evaluated.
   */
  /* readonly attribute unsigned short eventPhase; */
  nsresult GetEventPhase(PRUint16 *aEventPhase);

  /**
   * Used to indicate whether or not an event is a bubbling event. If the 
   * event can bubble the value is true, else the value is false.
   */
  /* readonly attribute boolean bubbles; */
  nsresult GetBubbles(PRBool *aBubbles);

  /**
   * Used to indicate whether or not an event can have its default action 
   * prevented. If the default action can be prevented the value is true, 
   * else the value is false.
   */
  /* readonly attribute boolean cancelable; */
  nsresult GetCancelable(PRBool *aCancelable);

  /**
   * Used to specify the time (in milliseconds relative to the epoch) at 
   * which the event was created. Due to the fact that some systems may 
   * not provide this information the value of timeStamp may be not 
   * available for all events. When not available, a value of 0 will be 
   * returned. Examples of epoch time are the time of the system start or 
   * 0:0:0 UTC 1st January 1970.
   */
  /* readonly attribute DOMTimeStamp timeStamp; */
  nsresult GetTimeStamp(DOMTimeStamp *aTimeStamp);

  /**
   * The stopPropagation method is used prevent further propagation of an 
   * event during event flow. If this method is called by any 
   * EventListener the event will cease propagating through the tree. The 
   * event will complete dispatch to all listeners on the current 
   * EventTarget before event flow stops. This method may be used during 
   * any stage of event flow.
   */
  /* void stopPropagation (); */
  nsresult StopPropagation();

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
  nsresult PreventDefault();

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
  nsresult InitEvent(nsAString * eventTypeArg, PRBool canBubbleArg, PRBool cancelableArg);

}

