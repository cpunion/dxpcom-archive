/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsPIEditorTransaction.idl
 */

module mozilla.dxpcom.nsPIEditorTransactionD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsPIEditorTransaction;


public import mozilla.dxpcom.nsPIEditorTransactionD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsPIEditorTransaction */
class nsPIEditorTransactionD : public nsISupportsD {

  static const nsIID IID = NS_PIEDITORTRANSACTION_IID;


  alias nsPIEditorTransaction InnerType;

  this(nsPIEditorTransaction intr){
    super(intr);
    this.inner = intr;
  }

  nsPIEditorTransaction opCast() {
    return inner;
  }

  void opAssign(nsPIEditorTransaction value) {
    inner = value;
  }

  /* readonly attribute DOMString txnDescription; */
  wchar[] TxnDescription(){
    scope auto value = new AString();
    nsresult __result = inner.GetTxnDescription(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

private:
  nsPIEditorTransaction inner;

}

