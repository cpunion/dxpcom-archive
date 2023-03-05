/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCSSImportRule.idl
 */

module mozilla.dxpcom.nsIDOMCSSImportRuleD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMCSSImportRule;


public import mozilla.dxpcom.nsIDOMCSSImportRuleD;

public import mozilla.xpcom.nsIDOMCSSRule;
public import mozilla.dxpcom.nsIDOMCSSRuleD;


/* starting wrapper class:    nsIDOMCSSImportRule */
class nsIDOMCSSImportRuleD : public nsIDOMCSSRuleD {

  static const nsIID IID = NS_IDOMCSSIMPORTRULE_IID;


  alias nsIDOMCSSImportRule InnerType;

  this(nsIDOMCSSImportRule intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMCSSImportRule opCast() {
    return inner;
  }

  void opAssign(nsIDOMCSSImportRule value) {
    inner = value;
  }

  /* readonly attribute DOMString href; */
  wchar[] Href(){
    scope auto value = new AString();
    nsresult __result = inner.GetHref(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute nsIDOMMediaList media; */
  nsIDOMMediaListD  Media(){
    nsIDOMMediaList value;
    nsresult __result = inner.GetMedia(&value);
    CheckException(__result);
    return new nsIDOMMediaListD(value);
  }

  /* readonly attribute nsIDOMCSSStyleSheet styleSheet; */
  nsIDOMCSSStyleSheetD  StyleSheet(){
    nsIDOMCSSStyleSheet value;
    nsresult __result = inner.GetStyleSheet(&value);
    CheckException(__result);
    return new nsIDOMCSSStyleSheetD(value);
  }

private:
  nsIDOMCSSImportRule inner;

}

