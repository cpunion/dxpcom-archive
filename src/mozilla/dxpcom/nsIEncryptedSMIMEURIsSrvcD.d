/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEncryptedSMIMEURIsSrvc.idl
 */

module mozilla.dxpcom.nsIEncryptedSMIMEURIsSrvcD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIEncryptedSMIMEURIsSrvc;


public import mozilla.dxpcom.nsIEncryptedSMIMEURIsSrvcD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIEncryptedSMIMEURIsService */
class nsIEncryptedSMIMEURIsServiceD : public nsISupportsD {

  static const nsIID IID = NS_IENCRYPTEDSMIMEURISSERVICE_IID;


  alias nsIEncryptedSMIMEURIsService InnerType;

  this(nsIEncryptedSMIMEURIsService intr){
    super(intr);
    this.inner = intr;
  }

  nsIEncryptedSMIMEURIsService opCast() {
    return inner;
  }

  void opAssign(nsIEncryptedSMIMEURIsService value) {
    inner = value;
  }

  /* void rememberEncrypted (in AUTF8String uri); */
  void RememberEncrypted(char[] uri){
    scope auto _uri = new ACString(uri);
    nsresult __result = inner.RememberEncrypted(cast(nsACString*)_uri);
    CheckException(__result);
  }

  /* void forgetEncrypted (in AUTF8String uri); */
  void ForgetEncrypted(char[] uri){
    scope auto _uri = new ACString(uri);
    nsresult __result = inner.ForgetEncrypted(cast(nsACString*)_uri);
    CheckException(__result);
  }

  /* boolean isEncrypted (in AUTF8String uri); */
  PRBool IsEncrypted(char[] uri){
    scope auto _uri = new ACString(uri);
    PRBool _retval;
    nsresult __result = inner.IsEncrypted(cast(nsACString*)_uri, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIEncryptedSMIMEURIsService inner;

}

