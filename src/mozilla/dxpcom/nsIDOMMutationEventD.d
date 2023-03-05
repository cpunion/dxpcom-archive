/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMMutationEvent.idl
 */

module mozilla.dxpcom.nsIDOMMutationEventD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMMutationEvent;


public import mozilla.dxpcom.nsIDOMMutationEventD;

public import mozilla.xpcom.nsIDOMEvent;
public import mozilla.dxpcom.nsIDOMEventD;


/* starting wrapper class:    nsIDOMMutationEvent */
class nsIDOMMutationEventD : public nsIDOMEventD {

  static const nsIID IID = NS_IDOMMUTATIONEVENT_IID;


  alias nsIDOMMutationEvent InnerType;

  this(nsIDOMMutationEvent intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMMutationEvent opCast() {
    return inner;
  }

  void opAssign(nsIDOMMutationEvent value) {
    inner = value;
  }

  enum { MODIFICATION = 1U }

  enum { ADDITION = 2U }

  enum { REMOVAL = 3U }

  /* readonly attribute nsIDOMNode relatedNode; */
  nsIDOMNodeD  RelatedNode(){
    nsIDOMNode value;
    nsresult __result = inner.GetRelatedNode(&value);
    CheckException(__result);
    return new nsIDOMNodeD(value);
  }

  /* readonly attribute DOMString prevValue; */
  wchar[] PrevValue(){
    scope auto value = new AString();
    nsresult __result = inner.GetPrevValue(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute DOMString newValue; */
  wchar[] NewValue(){
    scope auto value = new AString();
    nsresult __result = inner.GetNewValue(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute DOMString attrName; */
  wchar[] AttrName(){
    scope auto value = new AString();
    nsresult __result = inner.GetAttrName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute unsigned short attrChange; */
  PRUint16 AttrChange(){
    PRUint16 value;
    nsresult __result = inner.GetAttrChange(&value);
    CheckException(__result);
    return value;
  }

  /* void initMutationEvent (in DOMString typeArg, in boolean canBubbleArg, in boolean cancelableArg, in nsIDOMNode relatedNodeArg, in DOMString prevValueArg, in DOMString newValueArg, in DOMString attrNameArg, in unsigned short attrChangeArg); */
  void InitMutationEvent(wchar[] typeArg, PRBool canBubbleArg, PRBool cancelableArg, nsIDOMNodeD relatedNodeArg, wchar[] prevValueArg, wchar[] newValueArg, wchar[] attrNameArg, PRUint16 attrChangeArg){
    scope auto _typeArg = new AString(typeArg);
    scope auto _prevValueArg = new AString(prevValueArg);
    scope auto _newValueArg = new AString(newValueArg);
    scope auto _attrNameArg = new AString(attrNameArg);
    nsresult __result = inner.InitMutationEvent(cast(nsAString*)_typeArg, canBubbleArg, cancelableArg, relatedNodeArg ? cast(nsIDOMNode)relatedNodeArg : null, cast(nsAString*)_prevValueArg, cast(nsAString*)_newValueArg, cast(nsAString*)_attrNameArg, attrChangeArg);
    CheckException(__result);
  }

private:
  nsIDOMMutationEvent inner;

}

