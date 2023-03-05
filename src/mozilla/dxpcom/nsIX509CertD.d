/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIX509Cert.idl
 */

module mozilla.dxpcom.nsIX509CertD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIX509Cert;


public import mozilla.dxpcom.nsIX509CertD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIArray;

public import mozilla.dxpcom.nsIArrayD;

public import mozilla.xpcom.nsIX509CertValidity;

public import mozilla.dxpcom.nsIX509CertValidityD;

public import mozilla.xpcom.nsIASN1Object;

public import mozilla.dxpcom.nsIASN1ObjectD;


/* starting wrapper class:    nsIX509Cert */
/**
 * This represents a X.509 certificate.
 *
 * @status FROZEN
 */
class nsIX509CertD : public nsISupportsD {

  static const nsIID IID = NS_IX509CERT_IID;


  alias nsIX509Cert InnerType;

  this(nsIX509Cert intr){
    super(intr);
    this.inner = intr;
  }

  nsIX509Cert opCast() {
    return inner;
  }

  void opAssign(nsIX509Cert value) {
    inner = value;
  }

  /**
   *  A nickname for the certificate.
   */
  /* readonly attribute AString nickname; */
  wchar[] Nickname(){
    scope auto value = new AString();
    nsresult __result = inner.GetNickname(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   *  The primary email address of the certificate, if present.
   */
  /* readonly attribute AString emailAddress; */
  wchar[] EmailAddress(){
    scope auto value = new AString();
    nsresult __result = inner.GetEmailAddress(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   *  Obtain a list of all email addresses
   *  contained in the certificate.
   *
   *  @param length The number of strings in the returned array.
   *  @return An array of email addresses.
   */
  /* void getEmailAddresses (out unsigned long length, [array, size_is (length), retval] out wstring addresses); */
  void GetEmailAddresses(out PRUint32 length, out PRUnichar**addresses){
    nsresult __result = inner.GetEmailAddresses(&length, &addresses);
    CheckException(__result);
  }

  /**
   *  Check whether a given address is contained in the certificate.
   *  The comparison will convert the email address to lowercase.
   *  The behaviour for non ASCII characters is undefined.
   *
   *  @param aEmailAddress The address to search for.
   *                
   *  @return True if the address is contained in the certificate.
   */
  /* boolean containsEmailAddress (in AString aEmailAddress); */
  PRBool ContainsEmailAddress(wchar[] aEmailAddress){
    scope auto _aEmailAddress = new AString(aEmailAddress);
    PRBool _retval;
    nsresult __result = inner.ContainsEmailAddress(cast(nsAString*)_aEmailAddress, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   *  The subject owning the certificate.
   */
  /* readonly attribute AString subjectName; */
  wchar[] SubjectName(){
    scope auto value = new AString();
    nsresult __result = inner.GetSubjectName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   *  The subject's common name.
   */
  /* readonly attribute AString commonName; */
  wchar[] CommonName(){
    scope auto value = new AString();
    nsresult __result = inner.GetCommonName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   *  The subject's organization.
   */
  /* readonly attribute AString organization; */
  wchar[] Organization(){
    scope auto value = new AString();
    nsresult __result = inner.GetOrganization(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   *  The subject's organizational unit.
   */
  /* readonly attribute AString organizationalUnit; */
  wchar[] OrganizationalUnit(){
    scope auto value = new AString();
    nsresult __result = inner.GetOrganizationalUnit(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   *  The fingerprint of the certificate's public key,
   *  calculated using the SHA1 algorithm.
   */
  /* readonly attribute AString sha1Fingerprint; */
  wchar[] Sha1Fingerprint(){
    scope auto value = new AString();
    nsresult __result = inner.GetSha1Fingerprint(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   *  The fingerprint of the certificate's public key,
   *  calculated using the MD5 algorithm.
   */
  /* readonly attribute AString md5Fingerprint; */
  wchar[] Md5Fingerprint(){
    scope auto value = new AString();
    nsresult __result = inner.GetMd5Fingerprint(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   *  A human readable name identifying the hardware or
   *  software token the certificate is stored on.
   */
  /* readonly attribute AString tokenName; */
  wchar[] TokenName(){
    scope auto value = new AString();
    nsresult __result = inner.GetTokenName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   *  The subject identifying the issuer certificate.
   */
  /* readonly attribute AString issuerName; */
  wchar[] IssuerName(){
    scope auto value = new AString();
    nsresult __result = inner.GetIssuerName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   *  The serial number the issuer assigned to this certificate.
   */
  /* readonly attribute AString serialNumber; */
  wchar[] SerialNumber(){
    scope auto value = new AString();
    nsresult __result = inner.GetSerialNumber(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   *  The issuer subject's common name.
   */
  /* readonly attribute AString issuerCommonName; */
  wchar[] IssuerCommonName(){
    scope auto value = new AString();
    nsresult __result = inner.GetIssuerCommonName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   *  The issuer subject's organization.
   */
  /* readonly attribute AString issuerOrganization; */
  wchar[] IssuerOrganization(){
    scope auto value = new AString();
    nsresult __result = inner.GetIssuerOrganization(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   *  The issuer subject's organizational unit.
   */
  /* readonly attribute AString issuerOrganizationUnit; */
  wchar[] IssuerOrganizationUnit(){
    scope auto value = new AString();
    nsresult __result = inner.GetIssuerOrganizationUnit(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   *  The certificate used by the issuer to sign this certificate.
   */
  /* readonly attribute nsIX509Cert issuer; */
  nsIX509CertD  Issuer(){
    nsIX509Cert value;
    nsresult __result = inner.GetIssuer(&value);
    CheckException(__result);
    return new nsIX509CertD(value);
  }

  /**
   *  This certificate's validity period.
   */
  /* readonly attribute nsIX509CertValidity validity; */
  nsIX509CertValidityD  Validity(){
    nsIX509CertValidity value;
    nsresult __result = inner.GetValidity(&value);
    CheckException(__result);
    return new nsIX509CertValidityD(value);
  }

  /**
   *  A unique identifier of this certificate within the local storage.
   */
  /* readonly attribute string dbKey; */
  char* DbKey(){
    char* value;
    nsresult __result = inner.GetDbKey(&value);
    CheckException(__result);
    return value;
  }

  /**
   *  A human readable identifier to label this certificate.
   */
  /* readonly attribute string windowTitle; */
  char* WindowTitle(){
    char* value;
    nsresult __result = inner.GetWindowTitle(&value);
    CheckException(__result);
    return value;
  }

  /**
   *  Constants to classify the type of a certificate.
   */
  enum { UNKNOWN_CERT = 0U }

  enum { CA_CERT = 1U }

  enum { USER_CERT = 2U }

  enum { EMAIL_CERT = 4U }

  enum { SERVER_CERT = 8U }

  /**
   *  Constants for certificate verification results.
   */
  enum { VERIFIED_OK = 0U }

  enum { NOT_VERIFIED_UNKNOWN = 1U }

  enum { CERT_REVOKED = 2U }

  enum { CERT_EXPIRED = 4U }

  enum { CERT_NOT_TRUSTED = 8U }

  enum { ISSUER_NOT_TRUSTED = 16U }

  enum { ISSUER_UNKNOWN = 32U }

  enum { INVALID_CA = 64U }

  enum { USAGE_NOT_ALLOWED = 128U }

  /**
   *  Constants that describe the certified usages of a certificate.
   */
  enum { CERT_USAGE_SSLClient = 0U }

  enum { CERT_USAGE_SSLServer = 1U }

  enum { CERT_USAGE_SSLServerWithStepUp = 2U }

  enum { CERT_USAGE_SSLCA = 3U }

  enum { CERT_USAGE_EmailSigner = 4U }

  enum { CERT_USAGE_EmailRecipient = 5U }

  enum { CERT_USAGE_ObjectSigner = 6U }

  enum { CERT_USAGE_UserCertImport = 7U }

  enum { CERT_USAGE_VerifyCA = 8U }

  enum { CERT_USAGE_ProtectedObjectSigner = 9U }

  enum { CERT_USAGE_StatusResponder = 10U }

  enum { CERT_USAGE_AnyCA = 11U }

  /**
   *  Obtain a list of certificates that contains this certificate 
   *  and the issuing certificates of all involved issuers,
   *  up to the root issuer.
   *
   *  @return The chain of certifficates including the issuers.
   */
  /* nsIArray getChain (); */
  nsIArrayD  GetChain(){
    nsIArray _retval;
    nsresult __result = inner.GetChain(&_retval);
    CheckException(__result);
    return new nsIArrayD(_retval);
  }

  /**
   *  Obtain an array of human readable strings describing
   *  the certificate's certified usages.
   *
   *  @param ignoreOcsp Do not use OCSP even if it is currently activated.
   *  @param verified The certificate verification result, see constants.
   *  @param count The number of human readable usages returned.
   *  @param usages The array of human readable usages.
   */
  /* void getUsagesArray (in boolean ignoreOcsp, out PRUint32 verified, out PRUint32 count, [array, size_is (count)] out wstring usages); */
  void GetUsagesArray(PRBool ignoreOcsp, out PRUint32 verified, out PRUint32 count, out PRUnichar**usages){
    nsresult __result = inner.GetUsagesArray(ignoreOcsp, &verified, &count, &usages);
    CheckException(__result);
  }

  /**
   *  Obtain a single comma separated human readable string describing
   *  the certificate's certified usages.
   *
   *  @param ignoreOcsp Do not use OCSP even if it is currently activated.
   *  @param verified The certificate verification result, see constants.
   *  @param purposes The string listing the usages.
   */
  /* void getUsagesString (in boolean ignoreOcsp, out PRUint32 verified, out AString usages); */
  void GetUsagesString(PRBool ignoreOcsp, out PRUint32 verified, wchar[] usages){
    scope auto _usages = new AString;
    nsresult __result = inner.GetUsagesString(ignoreOcsp, &verified, cast(nsAString*)_usages);
    CheckException(__result);
    usages = _usages.GetString();
  }

  /**
   *  Verify the certificate for a particular usage.
   *
   *  @return The certificate verification result, see constants.
   */
  /* unsigned long verifyForUsage (in unsigned long usage); */
  PRUint32 VerifyForUsage(PRUint32 usage){
    PRUint32 _retval;
    nsresult __result = inner.VerifyForUsage(usage, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   *  This is the attribute which describes the ASN1 layout
   *  of the certificate.  This can be used when doing a
   *  "pretty print" of the certificate's ASN1 structure.
   */
  /* readonly attribute nsIASN1Object ASN1Structure; */
  nsIASN1ObjectD  ASN1Structure(){
    nsIASN1Object value;
    nsresult __result = inner.GetASN1Structure(&value);
    CheckException(__result);
    return new nsIASN1ObjectD(value);
  }

  /**
   *  Obtain a raw binary encoding of this certificate
   *  in DER format.
   *
   *  @param length The number of bytes in the binary encoding.
   *  @param data The bytes representing the DER encoded certificate.
   */
  /* void getRawDER (out unsigned long length, [array, size_is (length), retval] out octet data); */
  void GetRawDER(out PRUint32 length, out PRUint8 *data){
    nsresult __result = inner.GetRawDER(&length, &data);
    CheckException(__result);
  }

  /**
   *  Test whether two certificate instances represent the 
   *  same certificate.
   *
   *  @return Whether the certificates are equal
   */
  /* boolean equals (in nsIX509Cert other); */
  PRBool Equals(nsIX509CertD other){
    PRBool _retval;
    nsresult __result = inner.Equals(other ? cast(nsIX509Cert)other : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIX509Cert inner;

}

