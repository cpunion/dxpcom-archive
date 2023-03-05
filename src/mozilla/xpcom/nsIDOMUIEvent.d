/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMUIEvent.idl
 */

module mozilla.xpcom.nsIDOMUIEvent;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMEvent;


/* starting interface:    nsIDOMUIEvent */
const char[] NS_IDOMUIEVENT_IID_STR = "a6cf90c3-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMUIEVENT_IID= 
  {0xa6cf90c3, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMUIEvent interface is the datatype for all UI events in the
 * Document Object Model.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-Events/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMUIEvent : nsIDOMEvent {
  static const char[] IID_STR = NS_IDOMUIEVENT_IID_STR;
  static const nsIID IID = NS_IDOMUIEVENT_IID;

  /* readonly attribute nsIDOMAbstractView view; */
  nsresult GetView(nsIDOMAbstractView  *aView);

  /* readonly attribute long detail; */
  nsresult GetDetail(PRInt32 *aDetail);

  /* void initUIEvent (in DOMString typeArg, in boolean canBubbleArg, in boolean cancelableArg, in nsIDOMAbstractView viewArg, in long detailArg); */
  nsresult InitUIEvent(nsAString * typeArg, PRBool canBubbleArg, PRBool cancelableArg, nsIDOMAbstractView viewArg, PRInt32 detailArg);

}

