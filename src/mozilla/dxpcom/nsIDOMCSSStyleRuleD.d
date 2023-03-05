/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCSSStyleRule.idl
 */

module mozilla.dxpcom.nsIDOMCSSStyleRuleD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMCSSStyleRule;


public import mozilla.dxpcom.nsIDOMCSSStyleRuleD;

public import mozilla.xpcom.nsIDOMCSSRule;
public import mozilla.dxpcom.nsIDOMCSSRuleD;


/* starting wrapper class:    nsIDOMCSSStyleRule */
class nsIDOMCSSStyleRuleD : public nsIDOMCSSRuleD {

  static const nsIID IID = NS_IDOMCSSSTYLERULE_IID;


  alias nsIDOMCSSStyleRule InnerType;

  this(nsIDOMCSSStyleRule intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMCSSStyleRule opCast() {
    return inner;
  }

  void opAssign(nsIDOMCSSStyleRule value) {
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
  nsIDOMCSSStyleRule inner;

}

