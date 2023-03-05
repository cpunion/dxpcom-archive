/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIASN1PrintableItem.idl
 */

module mozilla.dxpcom.nsIASN1PrintableItemD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIASN1PrintableItem;


public import mozilla.dxpcom.nsIASN1PrintableItemD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIASN1Object;
public import mozilla.dxpcom.nsIASN1ObjectD;


/* starting wrapper class:    nsIASN1PrintableItem */
class nsIASN1PrintableItemD : public nsIASN1ObjectD {

  static const nsIID IID = NS_IASN1PRINTABLEITEM_IID;


  alias nsIASN1PrintableItem InnerType;

  this(nsIASN1PrintableItem intr){
    super(intr);
    this.inner = intr;
  }

  nsIASN1PrintableItem opCast() {
    return inner;
  }

  void opAssign(nsIASN1PrintableItem value) {
    inner = value;
  }

  /* [noscript] void setData (in charPtr data, in unsigned long len); */
  void SetData(char * data, PRUint32 len){
    nsresult __result = inner.SetData(data, len);
    CheckException(__result);
  }

  /* [noscript] void getData (out charPtr data, out unsigned long len); */
  void GetData(out char * data, out PRUint32 len){
    nsresult __result = inner.GetData(&data, &len);
    CheckException(__result);
  }

private:
  nsIASN1PrintableItem inner;

}

