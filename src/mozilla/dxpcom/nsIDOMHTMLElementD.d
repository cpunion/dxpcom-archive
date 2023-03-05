/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLElement;


public import mozilla.dxpcom.nsIDOMHTMLElementD;

public import mozilla.xpcom.nsIDOMElement;
public import mozilla.dxpcom.nsIDOMElementD;


/* starting wrapper class:    nsIDOMHTMLElement */
class nsIDOMHTMLElementD : public nsIDOMElementD {

  static const nsIID IID = NS_IDOMHTMLELEMENT_IID;


  alias nsIDOMHTMLElement InnerType;

  this(nsIDOMHTMLElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLElement value) {
    inner = value;
  }

  /**
 * The nsIDOMHTMLElement interface is the primary [X]HTML element
 * interface. It represents a single [X]HTML element in the document
 * tree.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
  /* attribute DOMString id; */
  wchar[] Id(){
    scope auto value = new AString();
    nsresult __result = inner.GetId(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Id(wchar[] aId){
    scope auto value = new AString(aId);
    nsresult __result = inner.SetId(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString title; */
  wchar[] Title(){
    scope auto value = new AString();
    nsresult __result = inner.GetTitle(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Title(wchar[] aTitle){
    scope auto value = new AString(aTitle);
    nsresult __result = inner.SetTitle(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString lang; */
  wchar[] Lang(){
    scope auto value = new AString();
    nsresult __result = inner.GetLang(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Lang(wchar[] aLang){
    scope auto value = new AString(aLang);
    nsresult __result = inner.SetLang(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString dir; */
  wchar[] Dir(){
    scope auto value = new AString();
    nsresult __result = inner.GetDir(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Dir(wchar[] aDir){
    scope auto value = new AString(aDir);
    nsresult __result = inner.SetDir(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString className; */
  wchar[] ClassName(){
    scope auto value = new AString();
    nsresult __result = inner.GetClassName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void ClassName(wchar[] aClassName){
    scope auto value = new AString(aClassName);
    nsresult __result = inner.SetClassName(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIDOMHTMLElement inner;

}

