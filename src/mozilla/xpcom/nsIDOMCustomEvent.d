/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCustomEvent.idl
 */

module mozilla.xpcom.nsIDOMCustomEvent;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMEvent;


/* starting interface:    nsIDOMCustomEvent */
const char[] NS_IDOMCUSTOMEVENT_IID_STR = "55c7af7b-1a64-40bf-87eb-2c2cbee0491b";

const nsIID NS_IDOMCUSTOMEVENT_IID= 
  {0x55c7af7b, 0x1a64, 0x40bf, 
    [ 0x87, 0xeb, 0x2c, 0x2c, 0xbe, 0xe0, 0x49, 0x1b ]};

/**
 * The nsIDOMEventTarget interface is the interface implemented by all
 * event targets in the Document Object Model.
 *
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-3-Events/
 */
extern(Windows)
interface nsIDOMCustomEvent : nsIDOMEvent {
  static const char[] IID_STR = NS_IDOMCUSTOMEVENT_IID_STR;
  static const nsIID IID = NS_IDOMCUSTOMEVENT_IID;

  /* void setCurrentTarget (in nsIDOMNode target); */
  nsresult SetCurrentTarget(nsIDOMNode target);

  /* void setEventPhase (in unsigned short phase); */
  nsresult SetEventPhase(PRUint16 phase);

}

