/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLFormElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLFormElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLFormElement;


public import mozilla.dxpcom.nsIDOMHTMLFormElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLFormElement */
class nsIDOMHTMLFormElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLFORMELEMENT_IID;


  alias nsIDOMHTMLFormElement InnerType;

  this(nsIDOMHTMLFormElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLFormElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLFormElement value) {
    inner = value;
  }

  /**
 * The nsIDOMHTMLFormElement interface is the interface to a [X]HTML
 * form element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
  /* readonly attribute nsIDOMHTMLCollection elements; */
  nsIDOMHTMLCollectionD  Elements(){
    nsIDOMHTMLCollection value;
    nsresult __result = inner.GetElements(&value);
    CheckException(__result);
    return new nsIDOMHTMLCollectionD(value);
  }

  /* readonly attribute long length; */
  PRInt32 Length(){
    PRInt32 value;
    nsresult __result = inner.GetLength(&value);
    CheckException(__result);
    return value;
  }

  /* attribute DOMString name; */
  wchar[] Name(){
    scope auto value = new AString();
    nsresult __result = inner.GetName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Name(wchar[] aName){
    scope auto value = new AString(aName);
    nsresult __result = inner.SetName(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString acceptCharset; */
  wchar[] AcceptCharset(){
    scope auto value = new AString();
    nsresult __result = inner.GetAcceptCharset(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void AcceptCharset(wchar[] aAcceptCharset){
    scope auto value = new AString(aAcceptCharset);
    nsresult __result = inner.SetAcceptCharset(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString action; */
  wchar[] Action(){
    scope auto value = new AString();
    nsresult __result = inner.GetAction(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Action(wchar[] aAction){
    scope auto value = new AString(aAction);
    nsresult __result = inner.SetAction(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString enctype; */
  wchar[] Enctype(){
    scope auto value = new AString();
    nsresult __result = inner.GetEnctype(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Enctype(wchar[] aEnctype){
    scope auto value = new AString(aEnctype);
    nsresult __result = inner.SetEnctype(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString method; */
  wchar[] Method(){
    scope auto value = new AString();
    nsresult __result = inner.GetMethod(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Method(wchar[] aMethod){
    scope auto value = new AString(aMethod);
    nsresult __result = inner.SetMethod(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString target; */
  wchar[] Target(){
    scope auto value = new AString();
    nsresult __result = inner.GetTarget(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Target(wchar[] aTarget){
    scope auto value = new AString(aTarget);
    nsresult __result = inner.SetTarget(cast(nsAString*)value);
    CheckException(__result);
  }

  /* void submit (); */
  void Submit(){
    nsresult __result = inner.Submit();
    CheckException(__result);
  }

  /* void reset (); */
  void Reset(){
    nsresult __result = inner.Reset();
    CheckException(__result);
  }

private:
  nsIDOMHTMLFormElement inner;

}

