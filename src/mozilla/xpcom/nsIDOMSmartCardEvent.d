/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSmartCardEvent.idl
 */

module mozilla.xpcom.nsIDOMSmartCardEvent;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMEvent;


/* starting interface:    nsIDOMSmartCardEvent */
const char[] NS_IDOMSMARTCARDEVENT_IID_STR = "52bdc7ca-a934-4a40-a2e2-ac83a70b4019";

const nsIID NS_IDOMSMARTCARDEVENT_IID= 
  {0x52bdc7ca, 0xa934, 0x4a40, 
    [ 0xa2, 0xe2, 0xac, 0x83, 0xa7, 0x0b, 0x40, 0x19 ]};

extern(Windows)
interface nsIDOMSmartCardEvent : nsIDOMEvent {
  static const char[] IID_STR = NS_IDOMSMARTCARDEVENT_IID_STR;
  static const nsIID IID = NS_IDOMSMARTCARDEVENT_IID;

  /* readonly attribute DOMString tokenName; */
  nsresult GetTokenName(nsAString * aTokenName);

  /* [noscript] void Init (in nsIDOMEvent event); */
  nsresult Init(nsIDOMEvent event);

}

