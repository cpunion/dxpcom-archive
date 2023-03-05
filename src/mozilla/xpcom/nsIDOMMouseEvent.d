/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMMouseEvent.idl
 */

module mozilla.xpcom.nsIDOMMouseEvent;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMUIEvent;


/* starting interface:    nsIDOMMouseEvent */
const char[] NS_IDOMMOUSEEVENT_IID_STR = "ff751edc-8b02-aae7-0010-8301838a3123";

const nsIID NS_IDOMMOUSEEVENT_IID= 
  {0xff751edc, 0x8b02, 0xaae7, 
    [ 0x00, 0x10, 0x83, 0x01, 0x83, 0x8a, 0x31, 0x23 ]};

/**
 * The nsIDOMMouseEvent interface is the datatype for all mouse events
 * in the Document Object Model.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-Events/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMMouseEvent : nsIDOMUIEvent {
  static const char[] IID_STR = NS_IDOMMOUSEEVENT_IID_STR;
  static const nsIID IID = NS_IDOMMOUSEEVENT_IID;

  /* readonly attribute long screenX; */
  nsresult GetScreenX(PRInt32 *aScreenX);

  /* readonly attribute long screenY; */
  nsresult GetScreenY(PRInt32 *aScreenY);

  /* readonly attribute long clientX; */
  nsresult GetClientX(PRInt32 *aClientX);

  /* readonly attribute long clientY; */
  nsresult GetClientY(PRInt32 *aClientY);

  /* readonly attribute boolean ctrlKey; */
  nsresult GetCtrlKey(PRBool *aCtrlKey);

  /* readonly attribute boolean shiftKey; */
  nsresult GetShiftKey(PRBool *aShiftKey);

  /* readonly attribute boolean altKey; */
  nsresult GetAltKey(PRBool *aAltKey);

  /* readonly attribute boolean metaKey; */
  nsresult GetMetaKey(PRBool *aMetaKey);

  /* readonly attribute unsigned short button; */
  nsresult GetButton(PRUint16 *aButton);

  /* readonly attribute nsIDOMEventTarget relatedTarget; */
  nsresult GetRelatedTarget(nsIDOMEventTarget  *aRelatedTarget);

  /* void initMouseEvent (in DOMString typeArg, in boolean canBubbleArg, in boolean cancelableArg, in nsIDOMAbstractView viewArg, in long detailArg, in long screenXArg, in long screenYArg, in long clientXArg, in long clientYArg, in boolean ctrlKeyArg, in boolean altKeyArg, in boolean shiftKeyArg, in boolean metaKeyArg, in unsigned short buttonArg, in nsIDOMEventTarget relatedTargetArg); */
  nsresult InitMouseEvent(nsAString * typeArg, PRBool canBubbleArg, PRBool cancelableArg, nsIDOMAbstractView viewArg, PRInt32 detailArg, PRInt32 screenXArg, PRInt32 screenYArg, PRInt32 clientXArg, PRInt32 clientYArg, PRBool ctrlKeyArg, PRBool altKeyArg, PRBool shiftKeyArg, PRBool metaKeyArg, PRUint16 buttonArg, nsIDOMEventTarget relatedTargetArg);

}

