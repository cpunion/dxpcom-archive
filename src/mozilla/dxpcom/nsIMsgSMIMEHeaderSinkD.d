/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSMIMEHeaderSink.idl
 */

module mozilla.dxpcom.nsIMsgSMIMEHeaderSinkD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgSMIMEHeaderSink;


public import mozilla.dxpcom.nsIMsgSMIMEHeaderSinkD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIX509Cert;

public import mozilla.dxpcom.nsIX509CertD;


/* starting wrapper class:    nsIMsgSMIMEHeaderSink */
class nsIMsgSMIMEHeaderSinkD : public nsISupportsD {

  static const nsIID IID = NS_IMSGSMIMEHEADERSINK_IID;


  alias nsIMsgSMIMEHeaderSink InnerType;

  this(nsIMsgSMIMEHeaderSink intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgSMIMEHeaderSink opCast() {
    return inner;
  }

  void opAssign(nsIMsgSMIMEHeaderSink value) {
    inner = value;
  }

  /* void signedStatus (in long aNestingLevel, in long aSignatureStatus, in nsIX509Cert aSignerCert); */
  void SignedStatus(PRInt32 aNestingLevel, PRInt32 aSignatureStatus, nsIX509CertD aSignerCert){
    nsresult __result = inner.SignedStatus(aNestingLevel, aSignatureStatus, aSignerCert ? cast(nsIX509Cert)aSignerCert : null);
    CheckException(__result);
  }

  /* void encryptionStatus (in long aNestingLevel, in long aEncryptionStatus, in nsIX509Cert aReceipientCert); */
  void EncryptionStatus(PRInt32 aNestingLevel, PRInt32 aEncryptionStatus, nsIX509CertD aReceipientCert){
    nsresult __result = inner.EncryptionStatus(aNestingLevel, aEncryptionStatus, aReceipientCert ? cast(nsIX509Cert)aReceipientCert : null);
    CheckException(__result);
  }

  /* long maxWantedNesting (); */
  PRInt32 MaxWantedNesting(){
    PRInt32 _retval;
    nsresult __result = inner.MaxWantedNesting(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIMsgSMIMEHeaderSink inner;

}

