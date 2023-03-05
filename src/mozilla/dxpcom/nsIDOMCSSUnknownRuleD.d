/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCSSUnknownRule.idl
 */

module mozilla.dxpcom.nsIDOMCSSUnknownRuleD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMCSSUnknownRule;


public import mozilla.dxpcom.nsIDOMCSSUnknownRuleD;

public import mozilla.xpcom.nsIDOMCSSRule;
public import mozilla.dxpcom.nsIDOMCSSRuleD;


/* starting wrapper class:    nsIDOMCSSUnknownRule */
class nsIDOMCSSUnknownRuleD : public nsIDOMCSSRuleD {

  static const nsIID IID = NS_IDOMCSSUNKNOWNRULE_IID;


  alias nsIDOMCSSUnknownRule InnerType;

  this(nsIDOMCSSUnknownRule intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMCSSUnknownRule opCast() {
    return inner;
  }

  void opAssign(nsIDOMCSSUnknownRule value) {
    inner = value;
  }

private:
  nsIDOMCSSUnknownRule inner;

}

