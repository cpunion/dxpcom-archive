/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM inIDOMUtils.idl
 */

module mozilla.dxpcom.inIDOMUtilsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.inIDOMUtils;


public import mozilla.dxpcom.inIDOMUtilsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIArray;

public import mozilla.dxpcom.nsIArrayD;

public import mozilla.xpcom.nsISupportsArray;

public import mozilla.dxpcom.nsISupportsArrayD;

public import mozilla.xpcom.nsIDOMCharacterData;

public import mozilla.dxpcom.nsIDOMCharacterDataD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;

public import mozilla.xpcom.nsIDOMDocument;

public import mozilla.dxpcom.nsIDOMDocumentD;

public import mozilla.xpcom.nsIDOMCSSStyleRule;

public import mozilla.dxpcom.nsIDOMCSSStyleRuleD;

public import mozilla.xpcom.nsIDOMNode;

public import mozilla.dxpcom.nsIDOMNodeD;


/* starting wrapper class:    inIDOMUtils */
class inIDOMUtilsD : public nsISupportsD {

  static const nsIID IID = INIDOMUTILS_IID;


  alias inIDOMUtils InnerType;

  this(inIDOMUtils intr){
    super(intr);
    this.inner = intr;
  }

  inIDOMUtils opCast() {
    return inner;
  }

  void opAssign(inIDOMUtils value) {
    inner = value;
  }

  /* nsISupportsArray getCSSStyleRules (in nsIDOMElement aElement); */
  nsISupportsArrayD  GetCSSStyleRules(nsIDOMElementD aElement){
    nsISupportsArray _retval;
    nsresult __result = inner.GetCSSStyleRules(aElement ? cast(nsIDOMElement)aElement : null, &_retval);
    CheckException(__result);
    return new nsISupportsArrayD(_retval);
  }

  /* unsigned long getRuleLine (in nsIDOMCSSStyleRule aRule); */
  PRUint32 GetRuleLine(nsIDOMCSSStyleRuleD aRule){
    PRUint32 _retval;
    nsresult __result = inner.GetRuleLine(aRule ? cast(nsIDOMCSSStyleRule)aRule : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean isIgnorableWhitespace (in nsIDOMCharacterData aDataNode); */
  PRBool IsIgnorableWhitespace(nsIDOMCharacterDataD aDataNode){
    PRBool _retval;
    nsresult __result = inner.IsIgnorableWhitespace(aDataNode ? cast(nsIDOMCharacterData)aDataNode : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsIDOMNode getParentForNode (in nsIDOMNode aNode, in boolean aShowingAnonymousContent); */
  nsIDOMNodeD  GetParentForNode(nsIDOMNodeD aNode, PRBool aShowingAnonymousContent){
    nsIDOMNode _retval;
    nsresult __result = inner.GetParentForNode(aNode ? cast(nsIDOMNode)aNode : null, aShowingAnonymousContent, &_retval);
    CheckException(__result);
    return new nsIDOMNodeD(_retval);
  }

  /* nsIArray getBindingURLs (in nsIDOMElement aElement); */
  nsIArrayD  GetBindingURLs(nsIDOMElementD aElement){
    nsIArray _retval;
    nsresult __result = inner.GetBindingURLs(aElement ? cast(nsIDOMElement)aElement : null, &_retval);
    CheckException(__result);
    return new nsIArrayD(_retval);
  }

  /* long getContentState (in nsIDOMElement aElement); */
  PRInt32 GetContentState(nsIDOMElementD aElement){
    PRInt32 _retval;
    nsresult __result = inner.GetContentState(aElement ? cast(nsIDOMElement)aElement : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setContentState (in nsIDOMElement aElement, in long aState); */
  void SetContentState(nsIDOMElementD aElement, PRInt32 aState){
    nsresult __result = inner.SetContentState(aElement ? cast(nsIDOMElement)aElement : null, aState);
    CheckException(__result);
  }

private:
  inIDOMUtils inner;

}

