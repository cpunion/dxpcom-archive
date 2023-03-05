/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAtomService.idl
 */

module mozilla.dxpcom.nsIAtomServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAtomService;


public import mozilla.dxpcom.nsIAtomServiceD;

public import mozilla.xpcom.nsIAtom;
public import mozilla.dxpcom.nsIAtomD;


/* starting wrapper class:    nsIAtomService */
class nsIAtomServiceD : public nsISupportsD {

  static const nsIID IID = NS_IATOMSERVICE_IID;


  alias nsIAtomService InnerType;

  this(nsIAtomService intr){
    super(intr);
    this.inner = intr;
  }

  nsIAtomService opCast() {
    return inner;
  }

  void opAssign(nsIAtomService value) {
    inner = value;
  }

  /**
   * Version of NS_NewAtom that doesn't require linking against the
   * XPCOM library.  See nsIAtom.idl.
   */
  /* nsIAtom getAtom (in wstring value); */
  nsIAtomD  GetAtom(PRUnichar*value){
    nsIAtom _retval;
    nsresult __result = inner.GetAtom(value, &_retval);
    CheckException(__result);
    return new nsIAtomD(_retval);
  }

  /**
   * Version of NS_NewPermanentAtom that doesn't require linking against
   * the XPCOM library.  See nsIAtom.idl.
   */
  /* nsIAtom getPermanentAtom (in wstring value); */
  nsIAtomD  GetPermanentAtom(PRUnichar*value){
    nsIAtom _retval;
    nsresult __result = inner.GetPermanentAtom(value, &_retval);
    CheckException(__result);
    return new nsIAtomD(_retval);
  }

private:
  nsIAtomService inner;

}

