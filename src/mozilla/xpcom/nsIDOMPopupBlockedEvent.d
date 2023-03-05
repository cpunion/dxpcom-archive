/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMPopupBlockedEvent.idl
 */

module mozilla.xpcom.nsIDOMPopupBlockedEvent;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMEvent;

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsIDOMPopupBlockedEvent */
const char[] NS_IDOMPOPUPBLOCKEDEVENT_IID_STR = "9e201104-78e9-4cb3-aff5-7f0a9cf446c0";

const nsIID NS_IDOMPOPUPBLOCKEDEVENT_IID= 
  {0x9e201104, 0x78e9, 0x4cb3, 
    [ 0xaf, 0xf5, 0x7f, 0x0a, 0x9c, 0xf4, 0x46, 0xc0 ]};

/**
 * The nsIDOMPopupBlockedEvent interface is the datatype for events
 * posted when a popup window is blocked.
 */
extern(Windows)
interface nsIDOMPopupBlockedEvent : nsIDOMEvent {
  static const char[] IID_STR = NS_IDOMPOPUPBLOCKEDEVENT_IID_STR;
  static const nsIID IID = NS_IDOMPOPUPBLOCKEDEVENT_IID;

  /* readonly attribute nsIURI requestingWindowURI; */
  nsresult GetRequestingWindowURI(nsIURI  *aRequestingWindowURI);

  /* readonly attribute nsIURI popupWindowURI; */
  nsresult GetPopupWindowURI(nsIURI  *aPopupWindowURI);

  /**
   * The string of features passed to the window.open() call
   * (as the third argument)
   */
  /* readonly attribute DOMString popupWindowFeatures; */
  nsresult GetPopupWindowFeatures(nsAString * aPopupWindowFeatures);

  /* void initPopupBlockedEvent (in DOMString typeArg, in boolean canBubbleArg, in boolean cancelableArg, in nsIURI requestingWindowURI, in nsIURI popupWindowURI, in DOMString popupWindowFeatures); */
  nsresult InitPopupBlockedEvent(nsAString * typeArg, PRBool canBubbleArg, PRBool cancelableArg, nsIURI requestingWindowURI, nsIURI popupWindowURI, nsAString * popupWindowFeatures);

}

