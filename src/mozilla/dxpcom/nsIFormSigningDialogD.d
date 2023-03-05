/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFormSigningDialog.idl
 */

module mozilla.dxpcom.nsIFormSigningDialogD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFormSigningDialog;


public import mozilla.dxpcom.nsIFormSigningDialogD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIInterfaceRequestor;

public import mozilla.dxpcom.nsIInterfaceRequestorD;


/* starting wrapper class:    nsIFormSigningDialog */
/**
 * nsIFormSigningDialog
 * Provides UI for form signing.
 */
class nsIFormSigningDialogD : public nsISupportsD {

  static const nsIID IID = NS_IFORMSIGNINGDIALOG_IID;


  alias nsIFormSigningDialog InnerType;

  this(nsIFormSigningDialog intr){
    super(intr);
    this.inner = intr;
  }

  nsIFormSigningDialog opCast() {
    return inner;
  }

  void opAssign(nsIFormSigningDialog value) {
    inner = value;
  }

  /**
   *  confirmSignText
   *    UI shown when a web site calls crypto.signText,
   *    asking the user to confirm the confirm the signing request.
   *
   *  returns true if the user confirmed, false on cancel
   */
  /* boolean confirmSignText (in nsIInterfaceRequestor ctxt, in AString host, in AString signText, [array, size_is (count)] in wstring certNickList, [array, size_is (count)] in wstring certDetailsList, in PRUint32 count, out PRInt32 selectedIndex, out AString password); */
  PRBool ConfirmSignText(nsIInterfaceRequestorD ctxt, wchar[] host, wchar[] signText, PRUnichar**certNickList, PRUnichar**certDetailsList, PRUint32 count, out PRInt32 selectedIndex, wchar[] password){
    scope auto _host = new AString(host);
    scope auto _signText = new AString(signText);
    scope auto _password = new AString;
    PRBool _retval;
    nsresult __result = inner.ConfirmSignText(ctxt ? cast(nsIInterfaceRequestor)ctxt : null, cast(nsAString*)_host, cast(nsAString*)_signText, certNickList, certDetailsList, count, &selectedIndex, cast(nsAString*)_password, &_retval);
    CheckException(__result);
    password = _password.GetString();
    return _retval;
  }

private:
  nsIFormSigningDialog inner;

}

