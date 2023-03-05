/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCSSStyleSheet.idl
 */

module mozilla.dxpcom.nsIDOMCSSStyleSheetD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMCSSStyleSheet;


public import mozilla.dxpcom.nsIDOMCSSStyleSheetD;

public import mozilla.xpcom.nsIDOMStyleSheet;
public import mozilla.dxpcom.nsIDOMStyleSheetD;


/* starting wrapper class:    nsIDOMCSSStyleSheet */
class nsIDOMCSSStyleSheetD : public nsIDOMStyleSheetD {

  static const nsIID IID = NS_IDOMCSSSTYLESHEET_IID;


  alias nsIDOMCSSStyleSheet InnerType;

  this(nsIDOMCSSStyleSheet intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMCSSStyleSheet opCast() {
    return inner;
  }

  void opAssign(nsIDOMCSSStyleSheet value) {
    inner = value;
  }

  /**
 * The nsIDOMCSSStyleSheet interface is a datatype for a CSS style
 * sheet in the Document Object Model.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-Style
 *
 * @status FROZEN
 */
  /* readonly attribute nsIDOMCSSRule ownerRule; */
  nsIDOMCSSRuleD  OwnerRule(){
    nsIDOMCSSRule value;
    nsresult __result = inner.GetOwnerRule(&value);
    CheckException(__result);
    return new nsIDOMCSSRuleD(value);
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
  nsIDOMCSSStyleSheet inner;

}

