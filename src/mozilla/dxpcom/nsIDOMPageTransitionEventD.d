/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMPageTransitionEvent.idl
 */

module mozilla.dxpcom.nsIDOMPageTransitionEventD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMPageTransitionEvent;


public import mozilla.dxpcom.nsIDOMPageTransitionEventD;

public import mozilla.xpcom.nsIDOMEvent;
public import mozilla.dxpcom.nsIDOMEventD;


/* starting wrapper class:    nsIDOMPageTransitionEvent */
/**
 * The nsIDOMPageTransitionEvent interface is used for the pageshow and
 * pagehide events, which are generic events that apply to both page
 * load/unload and saving/restoring a document from session history.
 */
class nsIDOMPageTransitionEventD : public nsIDOMEventD {

  static const nsIID IID = NS_IDOMPAGETRANSITIONEVENT_IID;


  alias nsIDOMPageTransitionEvent InnerType;

  this(nsIDOMPageTransitionEvent intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMPageTransitionEvent opCast() {
    return inner;
  }

  void opAssign(nsIDOMPageTransitionEvent value) {
    inner = value;
  }

  /**
   * Set to true if the document has been or will be persisted across
   * firing of the event.  For example, if a document is being cached in
   * session history, |persisted| is true for the PageHide event.
   */
  /* readonly attribute boolean persisted; */
  PRBool Persisted(){
    PRBool value;
    nsresult __result = inner.GetPersisted(&value);
    CheckException(__result);
    return value;
  }

  /* void initPageTransitionEvent (in DOMString typeArg, in boolean canBubbleArg, in boolean canCancelArg, in boolean persisted); */
  void InitPageTransitionEvent(wchar[] typeArg, PRBool canBubbleArg, PRBool canCancelArg, PRBool persisted){
    scope auto _typeArg = new AString(typeArg);
    nsresult __result = inner.InitPageTransitionEvent(cast(nsAString*)_typeArg, canBubbleArg, canCancelArg, persisted);
    CheckException(__result);
  }

private:
  nsIDOMPageTransitionEvent inner;

}

