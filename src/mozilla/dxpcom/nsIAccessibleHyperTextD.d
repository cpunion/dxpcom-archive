/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessibleHyperText.idl
 */

module mozilla.dxpcom.nsIAccessibleHyperTextD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAccessibleHyperText;


public import mozilla.dxpcom.nsIAccessibleHyperTextD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIAccessibleHyperLink;
public import mozilla.dxpcom.nsIAccessibleHyperLinkD;


/* starting wrapper class:    nsIAccessibleHyperText */
class nsIAccessibleHyperTextD : public nsISupportsD {

  static const nsIID IID = NS_IACCESSIBLEHYPERTEXT_IID;


  alias nsIAccessibleHyperText InnerType;

  this(nsIAccessibleHyperText intr){
    super(intr);
    this.inner = intr;
  }

  nsIAccessibleHyperText opCast() {
    return inner;
  }

  void opAssign(nsIAccessibleHyperText value) {
    inner = value;
  }

  /* readonly attribute long links; */
  PRInt32 Links(){
    PRInt32 value;
    nsresult __result = inner.GetLinks(&value);
    CheckException(__result);
    return value;
  }

  /* nsIAccessibleHyperLink getLink (in long index); */
  nsIAccessibleHyperLinkD  GetLink(PRInt32 index){
    nsIAccessibleHyperLink _retval;
    nsresult __result = inner.GetLink(index, &_retval);
    CheckException(__result);
    return new nsIAccessibleHyperLinkD(_retval);
  }

  /* long getLinkIndex (in long charIndex); */
  PRInt32 GetLinkIndex(PRInt32 charIndex){
    PRInt32 _retval;
    nsresult __result = inner.GetLinkIndex(charIndex, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* long getSelectedLinkIndex (); */
  PRInt32 GetSelectedLinkIndex(){
    PRInt32 _retval;
    nsresult __result = inner.GetSelectedLinkIndex(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIAccessibleHyperText inner;

}

