/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULPopupElement.idl
 */

module mozilla.dxpcom.nsIDOMXULPopupElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMXULPopupElement;


public import mozilla.dxpcom.nsIDOMXULPopupElementD;

public import mozilla.xpcom.nsIDOMElement;
public import mozilla.dxpcom.nsIDOMElementD;
public import mozilla.xpcom.nsIDOMXULElement;
public import mozilla.dxpcom.nsIDOMXULElementD;


/* starting wrapper class:    nsIDOMXULPopupElement */
class nsIDOMXULPopupElementD : public nsIDOMXULElementD {

  static const nsIID IID = NS_IDOMXULPOPUPELEMENT_IID;


  alias nsIDOMXULPopupElement InnerType;

  this(nsIDOMXULPopupElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMXULPopupElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMXULPopupElement value) {
    inner = value;
  }

  enum { BEFORE_START = 1U }

  enum { BEFORE_END = 2U }

  enum { AFTER_START = 3U }

  enum { AFTER_END = 4U }

  enum { START_BEFORE = 5U }

  enum { START_AFTER = 6U }

  enum { END_BEFORE = 7U }

  enum { END_AFTER = 8U }

  enum { OVERLAP = 9U }

  enum { AT_POINTER = 10U }

  enum { AFTER_POINTER = 11U }

  /* attribute DOMString position; */
  wchar[] Position(){
    scope auto value = new AString();
    nsresult __result = inner.GetPosition(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Position(wchar[] aPosition){
    scope auto value = new AString(aPosition);
    nsresult __result = inner.SetPosition(cast(nsAString*)value);
    CheckException(__result);
  }

  /* void showPopup (in unsigned short alignment, in nsIDOMElement target, in nsIDOMElement anchor); */
  void ShowPopup(PRUint16 alignment, nsIDOMElementD target, nsIDOMElementD anchor){
    nsresult __result = inner.ShowPopup(alignment, target ? cast(nsIDOMElement)target : null, anchor ? cast(nsIDOMElement)anchor : null);
    CheckException(__result);
  }

  /* void hidePopup (); */
  void HidePopup(){
    nsresult __result = inner.HidePopup();
    CheckException(__result);
  }

private:
  nsIDOMXULPopupElement inner;

}

