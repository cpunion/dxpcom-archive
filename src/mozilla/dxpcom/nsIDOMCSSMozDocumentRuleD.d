/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCSSMozDocumentRule.idl
 */

module mozilla.dxpcom.nsIDOMCSSMozDocumentRuleD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMCSSMozDocumentRule;


public import mozilla.dxpcom.nsIDOMCSSMozDocumentRuleD;

public import mozilla.xpcom.nsIDOMCSSRule;
public import mozilla.dxpcom.nsIDOMCSSRuleD;


/* starting wrapper class:    nsIDOMCSSMozDocumentRule */
/**
 * Modified version of nsIDOMCSSMediaRule for @-moz-document rules.
 */
class nsIDOMCSSMozDocumentRuleD : public nsIDOMCSSRuleD {

  static const nsIID IID = NS_IDOMCSSMOZDOCUMENTRULE_IID;


  alias nsIDOMCSSMozDocumentRule InnerType;

  this(nsIDOMCSSMozDocumentRule intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMCSSMozDocumentRule opCast() {
    return inner;
  }

  void opAssign(nsIDOMCSSMozDocumentRule value) {
    inner = value;
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
  nsIDOMCSSMozDocumentRule inner;

}

