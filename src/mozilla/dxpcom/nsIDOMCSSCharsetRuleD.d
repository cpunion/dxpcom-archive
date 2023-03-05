/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCSSCharsetRule.idl
 */

module mozilla.dxpcom.nsIDOMCSSCharsetRuleD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMCSSCharsetRule;


public import mozilla.dxpcom.nsIDOMCSSCharsetRuleD;

public import mozilla.xpcom.nsIDOMCSSRule;
public import mozilla.dxpcom.nsIDOMCSSRuleD;


/* starting wrapper class:    nsIDOMCSSCharsetRule */
class nsIDOMCSSCharsetRuleD : public nsIDOMCSSRuleD {

  static const nsIID IID = NS_IDOMCSSCHARSETRULE_IID;


  alias nsIDOMCSSCharsetRule InnerType;

  this(nsIDOMCSSCharsetRule intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMCSSCharsetRule opCast() {
    return inner;
  }

  void opAssign(nsIDOMCSSCharsetRule value) {
    inner = value;
  }

  /* attribute DOMString encoding; */
  wchar[] Encoding(){
    scope auto value = new AString();
    nsresult __result = inner.GetEncoding(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Encoding(wchar[] aEncoding){
    scope auto value = new AString(aEncoding);
    nsresult __result = inner.SetEncoding(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIDOMCSSCharsetRule inner;

}

