/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULCommandEvent.idl
 */

module mozilla.xpcom.nsIDOMXULCommandEvent;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMUIEvent;


/* starting interface:    nsIDOMXULCommandEvent */
const char[] NS_IDOMXULCOMMANDEVENT_IID_STR = "f9fa8205-a988-4828-9228-f3332d5475ac";

const nsIID NS_IDOMXULCOMMANDEVENT_IID= 
  {0xf9fa8205, 0xa988, 0x4828, 
    [ 0x92, 0x28, 0xf3, 0x33, 0x2d, 0x54, 0x75, 0xac ]};

extern(Windows)
interface nsIDOMXULCommandEvent : nsIDOMUIEvent {
  static const char[] IID_STR = NS_IDOMXULCOMMANDEVENT_IID_STR;
  static const nsIID IID = NS_IDOMXULCOMMANDEVENT_IID;

  /**
   * Command events support the same set of modifier keys as mouse and key
   * events.
   */
  /* readonly attribute boolean ctrlKey; */
  nsresult GetCtrlKey(PRBool *aCtrlKey);

  /* readonly attribute boolean shiftKey; */
  nsresult GetShiftKey(PRBool *aShiftKey);

  /* readonly attribute boolean altKey; */
  nsresult GetAltKey(PRBool *aAltKey);

  /* readonly attribute boolean metaKey; */
  nsresult GetMetaKey(PRBool *aMetaKey);

  /**
   * If the command event was redispatched because of a command= attribute
   * on the original target, sourceEvent will be set to the original DOM Event.
   * Otherwise, sourceEvent is null.
   */
  /* readonly attribute nsIDOMEvent sourceEvent; */
  nsresult GetSourceEvent(nsIDOMEvent  *aSourceEvent);

  /**
   * Creates a new command event with the given attributes.
   */
  /* void initCommandEvent (in DOMString typeArg, in boolean canBubbleArg, in boolean cancelableArg, in nsIDOMAbstractView viewArg, in long detailArg, in boolean ctrlKeyArg, in boolean altKeyArg, in boolean shiftKeyArg, in boolean metaKeyArg, in nsIDOMEvent sourceEvent); */
  nsresult InitCommandEvent(nsAString * typeArg, PRBool canBubbleArg, PRBool cancelableArg, nsIDOMAbstractView viewArg, PRInt32 detailArg, PRBool ctrlKeyArg, PRBool altKeyArg, PRBool shiftKeyArg, PRBool metaKeyArg, nsIDOMEvent sourceEvent);

}

