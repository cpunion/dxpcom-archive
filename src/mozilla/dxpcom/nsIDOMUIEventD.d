/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMUIEvent.idl
 */

module mozilla.dxpcom.nsIDOMUIEventD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMUIEvent;


public import mozilla.dxpcom.nsIDOMUIEventD;

public import mozilla.xpcom.nsIDOMEvent;
public import mozilla.dxpcom.nsIDOMEventD;


/* starting wrapper class:    nsIDOMUIEvent */
/**
 * The nsIDOMUIEvent interface is the datatype for all UI events in the
 * Document Object Model.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-Events/
 *
 * @status FROZEN
 */
class nsIDOMUIEventD : public nsIDOMEventD {

  static const nsIID IID = NS_IDOMUIEVENT_IID;


  alias nsIDOMUIEvent InnerType;

  this(nsIDOMUIEvent intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMUIEvent opCast() {
    return inner;
  }

  void opAssign(nsIDOMUIEvent value) {
    inner = value;
  }

  /* readonly attribute nsIDOMAbstractView view; */
  nsIDOMAbstractViewD  View(){
    nsIDOMAbstractView value;
    nsresult __result = inner.GetView(&value);
    CheckException(__result);
    return new nsIDOMAbstractViewD(value);
  }

  /* readonly attribute long detail; */
  PRInt32 Detail(){
    PRInt32 value;
    nsresult __result = inner.GetDetail(&value);
    CheckException(__result);
    return value;
  }

  /* void initUIEvent (in DOMString typeArg, in boolean canBubbleArg, in boolean cancelableArg, in nsIDOMAbstractView viewArg, in long detailArg); */
  void InitUIEvent(wchar[] typeArg, PRBool canBubbleArg, PRBool cancelableArg, nsIDOMAbstractViewD viewArg, PRInt32 detailArg){
    scope auto _typeArg = new AString(typeArg);
    nsresult __result = inner.InitUIEvent(cast(nsAString*)_typeArg, canBubbleArg, cancelableArg, viewArg ? cast(nsIDOMAbstractView)viewArg : null, detailArg);
    CheckException(__result);
  }

private:
  nsIDOMUIEvent inner;

}

