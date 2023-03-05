/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMPageTransitionEvent.idl
 */

module mozilla.xpcom.nsIDOMPageTransitionEvent;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMEvent;


/* starting interface:    nsIDOMPageTransitionEvent */
const char[] NS_IDOMPAGETRANSITIONEVENT_IID_STR = "b712418b-376f-4f75-b156-5d9ad99fe51f";

const nsIID NS_IDOMPAGETRANSITIONEVENT_IID= 
  {0xb712418b, 0x376f, 0x4f75, 
    [ 0xb1, 0x56, 0x5d, 0x9a, 0xd9, 0x9f, 0xe5, 0x1f ]};

/**
 * The nsIDOMPageTransitionEvent interface is used for the pageshow and
 * pagehide events, which are generic events that apply to both page
 * load/unload and saving/restoring a document from session history.
 */
extern(Windows)
interface nsIDOMPageTransitionEvent : nsIDOMEvent {
  static const char[] IID_STR = NS_IDOMPAGETRANSITIONEVENT_IID_STR;
  static const nsIID IID = NS_IDOMPAGETRANSITIONEVENT_IID;

  /**
   * Set to true if the document has been or will be persisted across
   * firing of the event.  For example, if a document is being cached in
   * session history, |persisted| is true for the PageHide event.
   */
  /* readonly attribute boolean persisted; */
  nsresult GetPersisted(PRBool *aPersisted);

  /* void initPageTransitionEvent (in DOMString typeArg, in boolean canBubbleArg, in boolean canCancelArg, in boolean persisted); */
  nsresult InitPageTransitionEvent(nsAString * typeArg, PRBool canBubbleArg, PRBool canCancelArg, PRBool persisted);

}

