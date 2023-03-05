/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIX509Cert.idl
 */

module mozilla.xpcom.nsIX509Cert;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIArray; /* forward declaration */

public import mozilla.xpcom.nsIX509CertValidity; /* forward declaration */

public import mozilla.xpcom.nsIASN1Object; /* forward declaration */


/* starting interface:    nsIX509Cert */
const char[] NS_IX509CERT_IID_STR = "f0980f60-ee3d-11d4-998b-00b0d02354a0";

const nsIID NS_IX509CERT_IID= 
  {0xf0980f60, 0xee3d, 0x11d4, 
    [ 0x99, 0x8b, 0x00, 0xb0, 0xd0, 0x23, 0x54, 0xa0 ]};

/**
 * This represents a X.509 certificate.
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIX509Cert : nsISupports {
  static const char[] IID_STR = NS_IX509CERT_IID_STR;
  static const nsIID IID = NS_IX509CERT_IID;

  /**
   *  A nickname for the certificate.
   */
  /* readonly attribute AString nickname; */
  nsresult GetNickname(nsAString * aNickname);

  /**
   *  The primary email address of the certificate, if present.
   */
  /* readonly attribute AString emailAddress; */
  nsresult GetEmailAddress(nsAString * aEmailAddress);

  /**
   *  Obtain a list of all email addresses
   *  contained in the certificate.
   *
   *  @param length The number of strings in the returned array.
   *  @return An array of email addresses.
   */
  /* void getEmailAddresses (out unsigned long length, [array, size_is (length), retval] out wstring addresses); */
  nsresult GetEmailAddresses(PRUint32 *length, PRUnichar ***addresses);

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
  nsresult ContainsEmailAddress(nsAString * aEmailAddress, PRBool *_retval);

  /**
   *  The subject owning the certificate.
   */
  /* readonly attribute AString subjectName; */
  nsresult GetSubjectName(nsAString * aSubjectName);

  /**
   *  The subject's common name.
   */
  /* readonly attribute AString commonName; */
  nsresult GetCommonName(nsAString * aCommonName);

  /**
   *  The subject's organization.
   */
  /* readonly attribute AString organization; */
  nsresult GetOrganization(nsAString * aOrganization);

  /**
   *  The subject's organizational unit.
   */
  /* readonly attribute AString organizationalUnit; */
  nsresult GetOrganizationalUnit(nsAString * aOrganizationalUnit);

  /**
   *  The fingerprint of the certificate's public key,
   *  calculated using the SHA1 algorithm.
   */
  /* readonly attribute AString sha1Fingerprint; */
  nsresult GetSha1Fingerprint(nsAString * aSha1Fingerprint);

  /**
   *  The fingerprint of the certificate's public key,
   *  calculated using the MD5 algorithm.
   */
  /* readonly attribute AString md5Fingerprint; */
  nsresult GetMd5Fingerprint(nsAString * aMd5Fingerprint);

  /**
   *  A human readable name identifying the hardware or
   *  software token the certificate is stored on.
   */
  /* readonly attribute AString tokenName; */
  nsresult GetTokenName(nsAString * aTokenName);

  /**
   *  The subject identifying the issuer certificate.
   */
  /* readonly attribute AString issuerName; */
  nsresult GetIssuerName(nsAString * aIssuerName);

  /**
   *  The serial number the issuer assigned to this certificate.
   */
  /* readonly attribute AString serialNumber; */
  nsresult GetSerialNumber(nsAString * aSerialNumber);

  /**
   *  The issuer subject's common name.
   */
  /* readonly attribute AString issuerCommonName; */
  nsresult GetIssuerCommonName(nsAString * aIssuerCommonName);

  /**
   *  The issuer subject's organization.
   */
  /* readonly attribute AString issuerOrganization; */
  nsresult GetIssuerOrganization(nsAString * aIssuerOrganization);

  /**
   *  The issuer subject's organizational unit.
   */
  /* readonly attribute AString issuerOrganizationUnit; */
  nsresult GetIssuerOrganizationUnit(nsAString * aIssuerOrganizationUnit);

  /**
   *  The certificate used by the issuer to sign this certificate.
   */
  /* readonly attribute nsIX509Cert issuer; */
  nsresult GetIssuer(nsIX509Cert  *aIssuer);

  /**
   *  This certificate's validity period.
   */
  /* readonly attribute nsIX509CertValidity validity; */
  nsresult GetValidity(nsIX509CertValidity  *aValidity);

  /**
   *  A unique identifier of this certificate within the local storage.
   */
  /* readonly attribute string dbKey; */
  nsresult GetDbKey(char * *aDbKey);

  /**
   *  A human readable identifier to label this certificate.
   */
  /* readonly attribute string windowTitle; */
  nsresult GetWindowTitle(char * *aWindowTitle);

  /**
   *  Constants to classify the type of a certificate.
   */
  enum { UNKNOWN_CERT = 0U };

  enum { CA_CERT = 1U };

  enum { USER_CERT = 2U };

  enum { EMAIL_CERT = 4U };

  enum { SERVER_CERT = 8U };

  /**
   *  Constants for certificate verification results.
   */
  enum { VERIFIED_OK = 0U };

  enum { NOT_VERIFIED_UNKNOWN = 1U };

  enum { CERT_REVOKED = 2U };

  enum { CERT_EXPIRED = 4U };

  enum { CERT_NOT_TRUSTED = 8U };

  enum { ISSUER_NOT_TRUSTED = 16U };

  enum { ISSUER_UNKNOWN = 32U };

  enum { INVALID_CA = 64U };

  enum { USAGE_NOT_ALLOWED = 128U };

  /**
   *  Constants that describe the certified usages of a certificate.
   */
  enum { CERT_USAGE_SSLClient = 0U };

  enum { CERT_USAGE_SSLServer = 1U };

  enum { CERT_USAGE_SSLServerWithStepUp = 2U };

  enum { CERT_USAGE_SSLCA = 3U };

  enum { CERT_USAGE_EmailSigner = 4U };

  enum { CERT_USAGE_EmailRecipient = 5U };

  enum { CERT_USAGE_ObjectSigner = 6U };

  enum { CERT_USAGE_UserCertImport = 7U };

  enum { CERT_USAGE_VerifyCA = 8U };

  enum { CERT_USAGE_ProtectedObjectSigner = 9U };

  enum { CERT_USAGE_StatusResponder = 10U };

  enum { CERT_USAGE_AnyCA = 11U };

  /**
   *  Obtain a list of certificates that contains this certificate 
   *  and the issuing certificates of all involved issuers,
   *  up to the root issuer.
   *
   *  @return The chain of certifficates including the issuers.
   */
  /* nsIArray getChain (); */
  nsresult GetChain(nsIArray *_retval);

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
  nsresult GetUsagesArray(PRBool ignoreOcsp, PRUint32 *verified, PRUint32 *count, PRUnichar ***usages);

  /**
   *  Obtain a single comma separated human readable string describing
   *  the certificate's certified usages.
   *
   *  @param ignoreOcsp Do not use OCSP even if it is currently activated.
   *  @param verified The certificate verification result, see constants.
   *  @param purposes The string listing the usages.
   */
  /* void getUsagesString (in boolean ignoreOcsp, out PRUint32 verified, out AString usages); */
  nsresult GetUsagesString(PRBool ignoreOcsp, PRUint32 *verified, nsAString * usages);

  /**
   *  Verify the certificate for a particular usage.
   *
   *  @return The certificate verification result, see constants.
   */
  /* unsigned long verifyForUsage (in unsigned long usage); */
  nsresult VerifyForUsage(PRUint32 usage, PRUint32 *_retval);

  /**
   *  This is the attribute which describes the ASN1 layout
   *  of the certificate.  This can be used when doing a
   *  "pretty print" of the certificate's ASN1 structure.
   */
  /* readonly attribute nsIASN1Object ASN1Structure; */
  nsresult GetASN1Structure(nsIASN1Object  *aASN1Structure);

  /**
   *  Obtain a raw binary encoding of this certificate
   *  in DER format.
   *
   *  @param length The number of bytes in the binary encoding.
   *  @param data The bytes representing the DER encoded certificate.
   */
  /* void getRawDER (out unsigned long length, [array, size_is (length), retval] out octet data); */
  nsresult GetRawDER(PRUint32 *length, PRUint8 **data);

  /**
   *  Test whether two certificate instances represent the 
   *  same certificate.
   *
   *  @return Whether the certificates are equal
   */
  /* boolean equals (in nsIX509Cert other); */
  nsresult Equals(nsIX509Cert other, PRBool *_retval);

}

