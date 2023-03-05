/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCSSMediaRule.idl
 */

module mozilla.dxpcom.nsIDOMCSSMediaRuleD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMCSSMediaRule;


public import mozilla.dxpcom.nsIDOMCSSMediaRuleD;

public import mozilla.xpcom.nsIDOMCSSRule;
public import mozilla.dxpcom.nsIDOMCSSRuleD;


/* starting wrapper class:    nsIDOMCSSMediaRule */
class nsIDOMCSSMediaRuleD : public nsIDOMCSSRuleD {

  static const nsIID IID = NS_IDOMCSSMEDIARULE_IID;


  alias nsIDOMCSSMediaRule InnerType;

  this(nsIDOMCSSMediaRule intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMCSSMediaRule opCast() {
    return inner;
  }

  void opAssign(nsIDOMCSSMediaRule value) {
    inner = value;
  }

  /* readonly attribute nsIDOMMediaList media; */
  nsIDOMMediaListD  Media(){
    nsIDOMMediaList value;
    nsresult __result = inner.GetMedia(&value);
    CheckException(__result);
    return new nsIDOMMediaListD(value);
  }

  /* readonly attribute nsIDOMCSSRuleList cssRules; */
  nsIDOMCSSRuleListD  CssRules(){
    nsIDOMCSSRuleList value;
    nsresult __result = inner.GetCssRules(&value);
    CheckException(__result);
    return new nsIDOMCSSRuleListD(value);
  }

  /* unsigned long insertRule (in DOMString rule, in unsigned long index)  raises (DOMException); */
  PRUint32 InsertRule(wchar[] rule, PRUint32 index){
    scope auto _rule = new AString(rule);
    PRUint32 _retval;
    nsresult __result = inner.InsertRule(cast(nsAString*)_rule, index, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void deleteRule (in unsigned long index)  raises (DOMException); */
  void DeleteRule(PRUint32 index){
    nsresult __result = inner.DeleteRule(index);
    CheckException(__result);
  }

private:
  nsIDOMCSSMediaRule inner;

}

