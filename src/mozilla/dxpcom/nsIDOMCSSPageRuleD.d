/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCSSPageRule.idl
 */

module mozilla.dxpcom.nsIDOMCSSPageRuleD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMCSSPageRule;


public import mozilla.dxpcom.nsIDOMCSSPageRuleD;

public import mozilla.xpcom.nsIDOMCSSRule;
public import mozilla.dxpcom.nsIDOMCSSRuleD;


/* starting wrapper class:    nsIDOMCSSPageRule */
class nsIDOMCSSPageRuleD : public nsIDOMCSSRuleD {

  static const nsIID IID = NS_IDOMCSSPAGERULE_IID;


  alias nsIDOMCSSPageRule InnerType;

  this(nsIDOMCSSPageRule intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMCSSPageRule opCast() {
    return inner;
  }

  void opAssign(nsIDOMCSSPageRule value) {
    inner = value;
  }

  /* attribute DOMString selectorText; */
  wchar[] SelectorText(){
    scope auto value = new AString();
    nsresult __result = inner.GetSelectorText(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void SelectorText(wchar[] aSelectorText){
    scope auto value = new AString(aSelectorText);
    nsresult __result = inner.SetSelectorText(cast(nsAString*)value);
    CheckException(__result);
  }

  /* readonly attribute nsIDOMCSSStyleDeclaration style; */
  nsIDOMCSSStyleDeclarationD  Style(){
    nsIDOMCSSStyleDeclaration value;
    nsresult __result = inner.GetStyle(&value);
    CheckException(__result);
    return new nsIDOMCSSStyleDeclarationD(value);
  }

private:
  nsIDOMCSSPageRule inner;

}

