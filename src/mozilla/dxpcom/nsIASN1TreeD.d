/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIASN1Tree.idl
 */

module mozilla.dxpcom.nsIASN1TreeD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIASN1Tree;


public import mozilla.dxpcom.nsIASN1TreeD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsITreeView;
public import mozilla.dxpcom.nsITreeViewD;
public import mozilla.xpcom.nsIX509Cert;
public import mozilla.dxpcom.nsIX509CertD;


/* starting wrapper class:    nsIASN1Tree */
class nsIASN1TreeD : public nsITreeViewD {

  static const nsIID IID = NS_IASN1TREE_IID;


  alias nsIASN1Tree InnerType;

  this(nsIASN1Tree intr){
    super(intr);
    this.inner = intr;
  }

  nsIASN1Tree opCast() {
    return inner;
  }

  void opAssign(nsIASN1Tree value) {
    inner = value;
  }

  /* void loadASN1Structure (in nsIASN1Object asn1Object); */
  void LoadASN1Structure(nsIASN1ObjectD asn1Object){
    nsresult __result = inner.LoadASN1Structure(asn1Object ? cast(nsIASN1Object)asn1Object : null);
    CheckException(__result);
  }

  /* AString getDisplayData (in unsigned long index); */
  wchar[] GetDisplayData(PRUint32 index){
    scope auto _retval = new AString;
    nsresult __result = inner.GetDisplayData(index, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsIASN1Tree inner;

}

