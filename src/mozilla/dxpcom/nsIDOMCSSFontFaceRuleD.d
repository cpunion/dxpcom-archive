/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCSSFontFaceRule.idl
 */

module mozilla.dxpcom.nsIDOMCSSFontFaceRuleD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMCSSFontFaceRule;


public import mozilla.dxpcom.nsIDOMCSSFontFaceRuleD;

public import mozilla.xpcom.nsIDOMCSSRule;
public import mozilla.dxpcom.nsIDOMCSSRuleD;


/* starting wrapper class:    nsIDOMCSSFontFaceRule */
class nsIDOMCSSFontFaceRuleD : public nsIDOMCSSRuleD {

  static const nsIID IID = NS_IDOMCSSFONTFACERULE_IID;


  alias nsIDOMCSSFontFaceRule InnerType;

  this(nsIDOMCSSFontFaceRule intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMCSSFontFaceRule opCast() {
    return inner;
  }

  void opAssign(nsIDOMCSSFontFaceRule value) {
    inner = value;
  }

  /* readonly attribute nsIDOMCSSStyleDeclaration style; */
  nsIDOMCSSStyleDeclarationD  Style(){
    nsIDOMCSSStyleDeclaration value;
    nsresult __result = inner.GetStyle(&value);
    CheckException(__result);
    return new nsIDOMCSSStyleDeclarationD(value);
  }

private:
  nsIDOMCSSFontFaceRule inner;

}

