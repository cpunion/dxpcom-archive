/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbAddressCollecter.idl
 */

module mozilla.dxpcom.nsIAbAddressCollecterD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAbAddressCollecter;


public import mozilla.dxpcom.nsIAbAddressCollecterD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIAbCard;

public import mozilla.dxpcom.nsIAbCardD;


/* starting wrapper class:    nsIAbAddressCollecter */
class nsIAbAddressCollecterD : public nsISupportsD {

  static const nsIID IID = NS_IABADDRESSCOLLECTER_IID;


  alias nsIAbAddressCollecter InnerType;

  this(nsIAbAddressCollecter intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbAddressCollecter opCast() {
    return inner;
  }

  void opAssign(nsIAbAddressCollecter value) {
    inner = value;
  }

  /* void collectAddress (in string aAddress, in boolean aCreateCard, in unsigned long aSendFormat); */
  void CollectAddress(char*aAddress, PRBool aCreateCard, PRUint32 aSendFormat){
    nsresult __result = inner.CollectAddress(aAddress, aCreateCard, aSendFormat);
    CheckException(__result);
  }

  /* void collectUnicodeAddress (in wstring aAddress, in boolean aCreateCard, in unsigned long aSendFormat); */
  void CollectUnicodeAddress(PRUnichar*aAddress, PRBool aCreateCard, PRUint32 aSendFormat){
    nsresult __result = inner.CollectUnicodeAddress(aAddress, aCreateCard, aSendFormat);
    CheckException(__result);
  }

  /* nsIAbCard getCardFromAttribute (in string aName, in string aValue); */
  nsIAbCardD  GetCardFromAttribute(char*aName, char*aValue){
    nsIAbCard _retval;
    nsresult __result = inner.GetCardFromAttribute(aName, aValue, &_retval);
    CheckException(__result);
    return new nsIAbCardD(_retval);
  }

private:
  nsIAbAddressCollecter inner;

}

