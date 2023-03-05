/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMBeforeUnloadEvent.idl
 */

module mozilla.xpcom.nsIDOMBeforeUnloadEvent;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMEvent;


/* starting interface:    nsIDOMBeforeUnloadEvent */
const char[] NS_IDOMBEFOREUNLOADEVENT_IID_STR = "da19e9dc-dea2-4a1d-a958-9be375c9799c";

const nsIID NS_IDOMBEFOREUNLOADEVENT_IID= 
  {0xda19e9dc, 0xdea2, 0x4a1d, 
    [ 0xa9, 0x58, 0x9b, 0xe3, 0x75, 0xc9, 0x79, 0x9c ]};

/**
 * The nsIDOMBeforeUnloadEvent interface is the interface for events
 * sent to handlers of the "beforeunload" event. This event is
 * non-standard. Interface derived from Microsoft IE's event
 * implementation.
 *
 * http://msdn.microsoft.com/library/default.asp?url=/workshop/author/dhtml/reference/events.asp
 *
 */
extern(Windows)
interface nsIDOMBeforeUnloadEvent : nsIDOMEvent {
  static const char[] IID_STR = NS_IDOMBEFOREUNLOADEVENT_IID_STR;
  static const nsIID IID = NS_IDOMBEFOREUNLOADEVENT_IID;

  /**
   * Attribute used to pass back a return value from a beforeunload
   * handler
   */
  /* attribute DOMString returnValue; */
  nsresult GetReturnValue(nsAString * aReturnValue);
  nsresult SetReturnValue(nsAString * aReturnValue);

}

