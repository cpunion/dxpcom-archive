/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULCommandEvent.idl
 */

module mozilla.dxpcom.nsIDOMXULCommandEventD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMXULCommandEvent;


public import mozilla.dxpcom.nsIDOMXULCommandEventD;

public import mozilla.xpcom.nsIDOMUIEvent;
public import mozilla.dxpcom.nsIDOMUIEventD;


/* starting wrapper class:    nsIDOMXULCommandEvent */
class nsIDOMXULCommandEventD : public nsIDOMUIEventD {

  static const nsIID IID = NS_IDOMXULCOMMANDEVENT_IID;


  alias nsIDOMXULCommandEvent InnerType;

  this(nsIDOMXULCommandEvent intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMXULCommandEvent opCast() {
    return inner;
  }

  void opAssign(nsIDOMXULCommandEvent value) {
    inner = value;
  }

  /**
   * Command events support the same set of modifier keys as mouse and key
   * events.
   */
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

  /**
   * If the command event was redispatched because of a command= attribute
   * on the original target, sourceEvent will be set to the original DOM Event.
   * Otherwise, sourceEvent is null.
   */
  /* readonly attribute nsIDOMEvent sourceEvent; */
  nsIDOMEventD  SourceEvent(){
    nsIDOMEvent value;
    nsresult __result = inner.GetSourceEvent(&value);
    CheckException(__result);
    return new nsIDOMEventD(value);
  }

  /**
   * Creates a new command event with the given attributes.
   */
  /* void initCommandEvent (in DOMString typeArg, in boolean canBubbleArg, in boolean cancelableArg, in nsIDOMAbstractView viewArg, in long detailArg, in boolean ctrlKeyArg, in boolean altKeyArg, in boolean shiftKeyArg, in boolean metaKeyArg, in nsIDOMEvent sourceEvent); */
  void InitCommandEvent(wchar[] typeArg, PRBool canBubbleArg, PRBool cancelableArg, nsIDOMAbstractViewD viewArg, PRInt32 detailArg, PRBool ctrlKeyArg, PRBool altKeyArg, PRBool shiftKeyArg, PRBool metaKeyArg, nsIDOMEventD sourceEvent){
    scope auto _typeArg = new AString(typeArg);
    nsresult __result = inner.InitCommandEvent(cast(nsAString*)_typeArg, canBubbleArg, cancelableArg, viewArg ? cast(nsIDOMAbstractView)viewArg : null, detailArg, ctrlKeyArg, altKeyArg, shiftKeyArg, metaKeyArg, sourceEvent ? cast(nsIDOMEvent)sourceEvent : null);
    CheckException(__result);
  }

private:
  nsIDOMXULCommandEvent inner;

}

