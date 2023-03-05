/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSmartCardEvent.idl
 */

module mozilla.dxpcom.nsIDOMSmartCardEventD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSmartCardEvent;


public import mozilla.dxpcom.nsIDOMSmartCardEventD;

public import mozilla.xpcom.nsIDOMEvent;
public import mozilla.dxpcom.nsIDOMEventD;


/* starting wrapper class:    nsIDOMSmartCardEvent */
class nsIDOMSmartCardEventD : public nsIDOMEventD {

  static const nsIID IID = NS_IDOMSMARTCARDEVENT_IID;


  alias nsIDOMSmartCardEvent InnerType;

  this(nsIDOMSmartCardEvent intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSmartCardEvent opCast() {
    return inner;
  }

  void opAssign(nsIDOMSmartCardEvent value) {
    inner = value;
  }

  /* readonly attribute DOMString tokenName; */
  wchar[] TokenName(){
    scope auto value = new AString();
    nsresult __result = inner.GetTokenName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* [noscript] void Init (in nsIDOMEvent event); */
  void Init(nsIDOMEventD event){
    nsresult __result = inner.Init(event ? cast(nsIDOMEvent)event : null);
    CheckException(__result);
  }

private:
  nsIDOMSmartCardEvent inner;

}

