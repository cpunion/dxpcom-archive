/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessibleHyperLink.idl
 */

module mozilla.dxpcom.nsIAccessibleHyperLinkD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAccessibleHyperLink;


public import mozilla.dxpcom.nsIAccessibleHyperLinkD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIAccessible;

public import mozilla.dxpcom.nsIAccessibleD;


/* starting wrapper class:    nsIAccessibleHyperLink */
class nsIAccessibleHyperLinkD : public nsISupportsD {

  static const nsIID IID = NS_IACCESSIBLEHYPERLINK_IID;


  alias nsIAccessibleHyperLink InnerType;

  this(nsIAccessibleHyperLink intr){
    super(intr);
    this.inner = intr;
  }

  nsIAccessibleHyperLink opCast() {
    return inner;
  }

  void opAssign(nsIAccessibleHyperLink value) {
    inner = value;
  }

  /* readonly attribute long anchors; */
  PRInt32 Anchors(){
    PRInt32 value;
    nsresult __result = inner.GetAnchors(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long startIndex; */
  PRInt32 StartIndex(){
    PRInt32 value;
    nsresult __result = inner.GetStartIndex(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long endIndex; */
  PRInt32 EndIndex(){
    PRInt32 value;
    nsresult __result = inner.GetEndIndex(&value);
    CheckException(__result);
    return value;
  }

  /* nsIURI getURI (in long i); */
  nsIURID  GetURI(PRInt32 i){
    nsIURI _retval;
    nsresult __result = inner.GetURI(i, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /* nsIAccessible getObject (in long i); */
  nsIAccessibleD  GetObject(PRInt32 i){
    nsIAccessible _retval;
    nsresult __result = inner.GetObject(i, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* boolean isValid (); */
  PRBool IsValid(){
    PRBool _retval;
    nsresult __result = inner.IsValid(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean isSelected (); */
  PRBool IsSelected(){
    PRBool _retval;
    nsresult __result = inner.IsSelected(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIAccessibleHyperLink inner;

}

