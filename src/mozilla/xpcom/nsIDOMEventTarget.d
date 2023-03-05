/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMEventTarget.idl
 */

module mozilla.xpcom.nsIDOMEventTarget;


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



/* starting interface:    nsIDOMEventTarget */
const char[] NS_IDOMEVENTTARGET_IID_STR = "1c773b30-d1cf-11d2-bd95-00805f8ae3f4";

const nsIID NS_IDOMEVENTTARGET_IID= 
  {0x1c773b30, 0xd1cf, 0x11d2, 
    [ 0xbd, 0x95, 0x00, 0x80, 0x5f, 0x8a, 0xe3, 0xf4 ]};

extern(Windows)
interface nsIDOMEventTarget : nsISupports {
  static const char[] IID_STR = NS_IDOMEVENTTARGET_IID_STR;
  static const nsIID IID = NS_IDOMEVENTTARGET_IID;

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
  nsresult AddEventListener(nsAString * type, nsIDOMEventListener listener, PRBool useCapture);

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
  nsresult RemoveEventListener(nsAString * type, nsIDOMEventListener listener, PRBool useCapture);

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
  nsresult DispatchEvent(nsIDOMEvent evt, PRBool *_retval);

}

