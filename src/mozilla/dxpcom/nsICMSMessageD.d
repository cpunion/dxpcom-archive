/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICMSMessage.idl
 */

module mozilla.dxpcom.nsICMSMessageD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICMSMessage;


public import mozilla.dxpcom.nsICMSMessageD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIX509Cert;

public import mozilla.dxpcom.nsIX509CertD;

public import mozilla.xpcom.nsIArray;

public import mozilla.dxpcom.nsIArrayD;


/* starting wrapper class:    nsICMSMessage */
/**
 * nsICMSMessage
 *  Interface to a CMS Message
 */
class nsICMSMessageD : public nsISupportsD {

  static const nsIID IID = NS_ICMSMESSAGE_IID;


  alias nsICMSMessage InnerType;

  this(nsICMSMessage intr){
    super(intr);
    this.inner = intr;
  }

  nsICMSMessage opCast() {
    return inner;
  }

  void opAssign(nsICMSMessage value) {
    inner = value;
  }

  /* void contentIsSigned (out boolean aSigned); */
  void ContentIsSigned(out PRBool aSigned){
    nsresult __result = inner.ContentIsSigned(&aSigned);
    CheckException(__result);
  }

  /* void contentIsEncrypted (out boolean aEncrypted); */
  void ContentIsEncrypted(out PRBool aEncrypted){
    nsresult __result = inner.ContentIsEncrypted(&aEncrypted);
    CheckException(__result);
  }

  /* void getSignerCommonName (out string aName); */
  void GetSignerCommonName(out char*aName){
    nsresult __result = inner.GetSignerCommonName(&aName);
    CheckException(__result);
  }

  /* void getSignerEmailAddress (out string aEmail); */
  void GetSignerEmailAddress(out char*aEmail){
    nsresult __result = inner.GetSignerEmailAddress(&aEmail);
    CheckException(__result);
  }

  /* void getSignerCert (out nsIX509Cert scert); */
  void GetSignerCert(out nsIX509CertD scert){
    nsIX509Cert _scert;
    nsresult __result = inner.GetSignerCert(&_scert);
    CheckException(__result);
    scert = _scert ? new nsIX509CertD(_scert) : null;
  }

  /* void getEncryptionCert (out nsIX509Cert ecert); */
  void GetEncryptionCert(out nsIX509CertD ecert){
    nsIX509Cert _ecert;
    nsresult __result = inner.GetEncryptionCert(&_ecert);
    CheckException(__result);
    ecert = _ecert ? new nsIX509CertD(_ecert) : null;
  }

  /* void verifySignature (); */
  void VerifySignature(){
    nsresult __result = inner.VerifySignature();
    CheckException(__result);
  }

  /* void verifyDetachedSignature (in UnsignedCharPtr aDigestData, in unsigned long aDigestDataLen); */
  void VerifyDetachedSignature(char * aDigestData, PRUint32 aDigestDataLen){
    nsresult __result = inner.VerifyDetachedSignature(aDigestData, aDigestDataLen);
    CheckException(__result);
  }

  /* void CreateEncrypted (in nsIArray aRecipientCerts); */
  void CreateEncrypted(nsIArrayD aRecipientCerts){
    nsresult __result = inner.CreateEncrypted(aRecipientCerts ? cast(nsIArray)aRecipientCerts : null);
    CheckException(__result);
  }

  /* void CreateSigned (in nsIX509Cert scert, in nsIX509Cert ecert, in UnsignedCharPtr aDigestData, in unsigned long aDigestDataLen); */
  void CreateSigned(nsIX509CertD scert, nsIX509CertD ecert, char * aDigestData, PRUint32 aDigestDataLen){
    nsresult __result = inner.CreateSigned(scert ? cast(nsIX509Cert)scert : null, ecert ? cast(nsIX509Cert)ecert : null, aDigestData, aDigestDataLen);
    CheckException(__result);
  }

private:
  nsICMSMessage inner;

}

