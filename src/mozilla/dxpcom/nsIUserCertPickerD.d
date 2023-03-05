/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUserCertPicker.idl
 */

module mozilla.dxpcom.nsIUserCertPickerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIUserCertPicker;


public import mozilla.dxpcom.nsIUserCertPickerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIX509Cert;

public import mozilla.dxpcom.nsIX509CertD;

public import mozilla.xpcom.nsIInterfaceRequestor;

public import mozilla.dxpcom.nsIInterfaceRequestorD;


/* starting wrapper class:    nsIUserCertPicker */
class nsIUserCertPickerD : public nsISupportsD {

  static const nsIID IID = NS_IUSERCERTPICKER_IID;


  alias nsIUserCertPicker InnerType;

  this(nsIUserCertPicker intr){
    super(intr);
    this.inner = intr;
  }

  nsIUserCertPicker opCast() {
    return inner;
  }

  void opAssign(nsIUserCertPicker value) {
    inner = value;
  }

  /* nsIX509Cert pickByUsage (in nsIInterfaceRequestor ctx, in wstring selectedNickname, in long certUsage, in boolean allowInvalid, in boolean allowDuplicateNicknames, out boolean canceled); */
  nsIX509CertD  PickByUsage(nsIInterfaceRequestorD ctx, PRUnichar*selectedNickname, PRInt32 certUsage, PRBool allowInvalid, PRBool allowDuplicateNicknames, out PRBool canceled){
    nsIX509Cert _retval;
    nsresult __result = inner.PickByUsage(ctx ? cast(nsIInterfaceRequestor)ctx : null, selectedNickname, certUsage, allowInvalid, allowDuplicateNicknames, &canceled, &_retval);
    CheckException(__result);
    return new nsIX509CertD(_retval);
  }

private:
  nsIUserCertPicker inner;

}

