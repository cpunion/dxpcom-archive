/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMMouseEvent.idl
 */

module mozilla.dxpcom.nsIDOMMouseEventD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMMouseEvent;


public import mozilla.dxpcom.nsIDOMMouseEventD;

public import mozilla.xpcom.nsIDOMUIEvent;
public import mozilla.dxpcom.nsIDOMUIEventD;


/* starting wrapper class:    nsIDOMMouseEvent */
/**
 * The nsIDOMMouseEvent interface is the datatype for all mouse events
 * in the Document Object Model.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-Events/
 *
 * @status FROZEN
 */
class nsIDOMMouseEventD : public nsIDOMUIEventD {

  static const nsIID IID = NS_IDOMMOUSEEVENT_IID;


  alias nsIDOMMouseEvent InnerType;

  this(nsIDOMMouseEvent intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMMouseEvent opCast() {
    return inner;
  }

  void opAssign(nsIDOMMouseEvent value) {
    inner = value;
  }

  /* readonly attribute long screenX; */
  PRInt32 ScreenX(){
    PRInt32 value;
    nsresult __result = inner.GetScreenX(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long screenY; */
  PRInt32 ScreenY(){
    PRInt32 value;
    nsresult __result = inner.GetScreenY(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long clientX; */
  PRInt32 ClientX(){
    PRInt32 value;
    nsresult __result = inner.GetClientX(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long clientY; */
  PRInt32 ClientY(){
    PRInt32 value;
    nsresult __result = inner.GetClientY(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean ctrlKey; */
  PRBool CtrlKey(){
    PRBool value;
    nsresult __result = inner.GetCtrlKey(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean shiftKey; */
  PRBool ShiftKey(){
    PRBool value;
    nsresult __result = inner.GetShiftKey(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean altKey; */
  PRBool AltKey(){
    PRBool value;
    nsresult __result = inner.GetAltKey(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean metaKey; */
  PRBool MetaKey(){
    PRBool value;
    nsresult __result = inner.GetMetaKey(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute unsigned short button; */
  PRUint16 Button(){
    PRUint16 value;
    nsresult __result = inner.GetButton(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsIDOMEventTarget relatedTarget; */
  nsIDOMEventTargetD  RelatedTarget(){
    nsIDOMEventTarget value;
    nsresult __result = inner.GetRelatedTarget(&value);
    CheckException(__result);
    return new nsIDOMEventTargetD(value);
  }

  /* void initMouseEvent (in DOMString typeArg, in boolean canBubbleArg, in boolean cancelableArg, in nsIDOMAbstractView viewArg, in long detailArg, in long screenXArg, in long screenYArg, in long clientXArg, in long clientYArg, in boolean ctrlKeyArg, in boolean altKeyArg, in boolean shiftKeyArg, in boolean metaKeyArg, in unsigned short buttonArg, in nsIDOMEventTarget relatedTargetArg); */
  void InitMouseEvent(wchar[] typeArg, PRBool canBubbleArg, PRBool cancelableArg, nsIDOMAbstractViewD viewArg, PRInt32 detailArg, PRInt32 screenXArg, PRInt32 screenYArg, PRInt32 clientXArg, PRInt32 clientYArg, PRBool ctrlKeyArg, PRBool altKeyArg, PRBool shiftKeyArg, PRBool metaKeyArg, PRUint16 buttonArg, nsIDOMEventTargetD relatedTargetArg){
    scope auto _typeArg = new AString(typeArg);
    nsresult __result = inner.InitMouseEvent(cast(nsAString*)_typeArg, canBubbleArg, cancelableArg, viewArg ? cast(nsIDOMAbstractView)viewArg : null, detailArg, screenXArg, screenYArg, clientXArg, clientYArg, ctrlKeyArg, altKeyArg, shiftKeyArg, metaKeyArg, buttonArg, relatedTargetArg ? cast(nsIDOMEventTarget)relatedTargetArg : null);
    CheckException(__result);
  }

private:
  nsIDOMMouseEvent inner;

}

