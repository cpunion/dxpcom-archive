/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMenuRollup.idl
 */

module mozilla.dxpcom.nsIMenuRollupD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMenuRollup;


public import mozilla.dxpcom.nsIMenuRollupD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.dxpcom.nsISupportsArrayD;


/* starting wrapper class:    nsIMenuRollup */
class nsIMenuRollupD : public nsISupportsD {

  static const nsIID IID = NS_IMENUROLLUP_IID;


  alias nsIMenuRollup InnerType;

  this(nsIMenuRollup intr){
    super(intr);
    this.inner = intr;
  }

  nsIMenuRollup opCast() {
    return inner;
  }

  void opAssign(nsIMenuRollup value) {
    inner = value;
  }

  /* nsISupportsArray GetSubmenuWidgetChain (); */
  nsISupportsArrayD  GetSubmenuWidgetChain(){
    nsISupportsArray _retval;
    nsresult __result = inner.GetSubmenuWidgetChain(&_retval);
    CheckException(__result);
    return new nsISupportsArrayD(_retval);
  }

private:
  nsIMenuRollup inner;

}

