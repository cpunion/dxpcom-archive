/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMMutationEvent.idl
 */

module mozilla.xpcom.nsIDOMMutationEvent;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMEvent;


/* starting interface:    nsIDOMMutationEvent */
const char[] NS_IDOMMUTATIONEVENT_IID_STR = "8e440d86-886a-4e76-9e59-c13b939c9a4b";

const nsIID NS_IDOMMUTATIONEVENT_IID= 
  {0x8e440d86, 0x886a, 0x4e76, 
    [ 0x9e, 0x59, 0xc1, 0x3b, 0x93, 0x9c, 0x9a, 0x4b ]};

extern(Windows)
interface nsIDOMMutationEvent : nsIDOMEvent {
  static const char[] IID_STR = NS_IDOMMUTATIONEVENT_IID_STR;
  static const nsIID IID = NS_IDOMMUTATIONEVENT_IID;

  enum { MODIFICATION = 1U };

  enum { ADDITION = 2U };

  enum { REMOVAL = 3U };

  /* readonly attribute nsIDOMNode relatedNode; */
  nsresult GetRelatedNode(nsIDOMNode  *aRelatedNode);

  /* readonly attribute DOMString prevValue; */
  nsresult GetPrevValue(nsAString * aPrevValue);

  /* readonly attribute DOMString newValue; */
  nsresult GetNewValue(nsAString * aNewValue);

  /* readonly attribute DOMString attrName; */
  nsresult GetAttrName(nsAString * aAttrName);

  /* readonly attribute unsigned short attrChange; */
  nsresult GetAttrChange(PRUint16 *aAttrChange);

  /* void initMutationEvent (in DOMString typeArg, in boolean canBubbleArg, in boolean cancelableArg, in nsIDOMNode relatedNodeArg, in DOMString prevValueArg, in DOMString newValueArg, in DOMString attrNameArg, in unsigned short attrChangeArg); */
  nsresult InitMutationEvent(nsAString * typeArg, PRBool canBubbleArg, PRBool cancelableArg, nsIDOMNode relatedNodeArg, nsAString * prevValueArg, nsAString * newValueArg, nsAString * attrNameArg, PRUint16 attrChangeArg);

}

