/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSearchValidityManager.idl
 */

module mozilla.dxpcom.nsIMsgSearchValidityManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgSearchValidityManager;


public import mozilla.dxpcom.nsIMsgSearchValidityManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIMsgSearchValidityTable;
public import mozilla.dxpcom.nsIMsgSearchValidityTableD;


/* starting wrapper class:    nsIMsgSearchValidityManager */
class nsIMsgSearchValidityManagerD : public nsISupportsD {

  static const nsIID IID = NS_IMSGSEARCHVALIDITYMANAGER_IID;


  alias nsIMsgSearchValidityManager InnerType;

  this(nsIMsgSearchValidityManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgSearchValidityManager opCast() {
    return inner;
  }

  void opAssign(nsIMsgSearchValidityManager value) {
    inner = value;
  }

  /* nsIMsgSearchValidityTable getTable (in nsMsgSearchValidityScope scope); */
  nsIMsgSearchValidityTableD  GetTable(nsMsgSearchValidityScope scope_){
    nsIMsgSearchValidityTable _retval;
    nsresult __result = inner.GetTable(scope_, &_retval);
    CheckException(__result);
    return new nsIMsgSearchValidityTableD(_retval);
  }

private:
  nsIMsgSearchValidityManager inner;

}

