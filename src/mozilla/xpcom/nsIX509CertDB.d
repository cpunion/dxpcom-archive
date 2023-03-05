/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIX509CertDB.idl
 */

module mozilla.xpcom.nsIX509CertDB;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIArray; /* forward declaration */

public import mozilla.xpcom.nsIX509Cert; /* forward declaration */

public import mozilla.xpcom.nsILocalFile; /* forward declaration */

public import mozilla.xpcom.nsIInterfaceRequestor; /* forward declaration */


/* starting interface:    nsIX509CertDB */
const char[] NS_IX509CERTDB_IID_STR = "da48b3c0-1284-11d5-ac67-000064657374";

const nsIID NS_IX509CERTDB_IID= 
  {0xda48b3c0, 0x1284, 0x11d5, 
    [ 0xac, 0x67, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

/**
 * This represents a service to access and manipulate 
 * X.509 certificates stored in a database.
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIX509CertDB : nsISupports {
  static const char[] IID_STR = NS_IX509CERTDB_IID_STR;
  static const nsIID IID = NS_IX509CERTDB_IID;

  /**
   *  Constants that define which usages a certificate
   *  is trusted for.
   */
  enum { UNTRUSTED = 0U };

  enum { TRUSTED_SSL = 1U };

  enum { TRUSTED_EMAIL = 2U };

  enum { TRUSTED_OBJSIGN = 4U };

  /**
   *  Given a nickname and optionally a token,
   *  locate the matching certificate.
   *
   *  @param aToken Optionally limits the scope of 
   *                this function to a token device.
   *                Can be null to mean any token.
   *  @param aNickname The nickname to be used as the key
   *                   to find a certificate.
   *                
   *  @return The matching certificate if found.
   */
  /* nsIX509Cert findCertByNickname (in nsISupports aToken, in AString aNickname); */
  nsresult FindCertByNickname(nsISupports aToken, nsAString * aNickname, nsIX509Cert *_retval);

  /**
   *  Will find a certificate based on its dbkey
   *  retrieved by getting the dbKey attribute of
   *  the certificate.
   *
   *  @param aDBkey Database internal key, as obtained using
   *                attribute dbkey in nsIX509Cert.
   *  @param aToken Optionally limits the scope of 
   *                this function to a token device.
   *                Can be null to mean any token.
   */
  /* nsIX509Cert findCertByDBKey (in string aDBkey, in nsISupports aToken); */
  nsresult FindCertByDBKey(char *aDBkey, nsISupports aToken, nsIX509Cert *_retval);

  /**
   *  Obtain a list of certificate nicknames from the database.
   *  What the name is depends on type:
   *    user, ca, or server cert - the nickname
   *    email cert - the email address
   *
   *  @param aToken Optionally limits the scope of 
   *                this function to a token device.
   *                Can be null to mean any token.
   *  @param aType Type of certificate to obtain
   *               See certificate type constants in nsIX509Cert.
   *  @param count The number of nicknames in the returned array
   *  @param certNameList The returned array of certificate nicknames.
   */
  /* void findCertNicknames (in nsISupports aToken, in unsigned long aType, out unsigned long count, [array, size_is (count)] out wstring certNameList); */
  nsresult FindCertNicknames(nsISupports aToken, PRUint32 aType, PRUint32 *count, PRUnichar ***certNameList);

  /**
   *  Find the email encryption certificate by nickname.
   *
   *  @param aNickname The nickname to be used as the key
   *                   to find the certificate.
   *                
   *  @return The matching certificate if found.
   */
  /* nsIX509Cert findEmailEncryptionCert (in AString aNickname); */
  nsresult FindEmailEncryptionCert(nsAString * aNickname, nsIX509Cert *_retval);

  /**
   *  Find the email signing certificate by nickname.
   *
   *  @param aNickname The nickname to be used as the key
   *                   to find the certificate.
   *                
   *  @return The matching certificate if found.
   */
  /* nsIX509Cert findEmailSigningCert (in AString aNickname); */
  nsresult FindEmailSigningCert(nsAString * aNickname, nsIX509Cert *_retval);

  /**
   *  Find a certificate by email address.
   *
   *  @param aToken Optionally limits the scope of 
   *                this function to a token device.
   *                Can be null to mean any token.
   *  @param aEmailAddress The email address to be used as the key
   *                       to find the certificate.
   *                
   *  @return The matching certificate if found.
   */
  /* nsIX509Cert findCertByEmailAddress (in nsISupports aToken, in string aEmailAddress); */
  nsresult FindCertByEmailAddress(nsISupports aToken, char *aEmailAddress, nsIX509Cert *_retval);

  /**
   *  Use this to import a stream sent down as a mime type into
   *  the certificate database on the default token.
   *  The stream may consist of one or more certificates.
   *
   *  @param data The raw data to be imported
   *  @param length The length of the data to be imported
   *  @param type The type of the certificate, see constants in nsIX509Cert
   *  @param ctx A UI context.
   */
  /* void importCertificates ([array, size_is (length)] in octet data, in unsigned long length, in unsigned long type, in nsIInterfaceRequestor ctx); */
  nsresult ImportCertificates(PRUint8 *data, PRUint32 length, PRUint32 type, nsIInterfaceRequestor ctx);

  /**
   *  Import another person's email certificate into the database.
   *
   *  @param data The raw data to be imported
   *  @param length The length of the data to be imported
   *  @param ctx A UI context.
   */
  /* void importEmailCertificate ([array, size_is (length)] in octet data, in unsigned long length, in nsIInterfaceRequestor ctx); */
  nsresult ImportEmailCertificate(PRUint8 *data, PRUint32 length, nsIInterfaceRequestor ctx);

  /**
   *  Import a server machine's certificate into the database.
   *
   *  @param data The raw data to be imported
   *  @param length The length of the data to be imported
   *  @param ctx A UI context.
   */
  /* void importServerCertificate ([array, size_is (length)] in octet data, in unsigned long length, in nsIInterfaceRequestor ctx); */
  nsresult ImportServerCertificate(PRUint8 *data, PRUint32 length, nsIInterfaceRequestor ctx);

  /**
   *  Import a personal certificate into the database, assuming 
   *  the database already contains the private key for this certificate.
   *
   *  @param data The raw data to be imported
   *  @param length The length of the data to be imported
   *  @param ctx A UI context.
   */
  /* void importUserCertificate ([array, size_is (length)] in octet data, in unsigned long length, in nsIInterfaceRequestor ctx); */
  nsresult ImportUserCertificate(PRUint8 *data, PRUint32 length, nsIInterfaceRequestor ctx);

  /**
   *  Delete a certificate stored in the database.
   *
   *  @param aCert Delete this certificate.
   */
  /* void deleteCertificate (in nsIX509Cert aCert); */
  nsresult DeleteCertificate(nsIX509Cert aCert);

  /**
   *  Modify the trust that is stored and associated to a certificate within
   *  a database. Separate trust is stored for 
   *  One call manipulates the trust for one trust type only.
   *  See the trust type constants defined within this interface.
   *
   *  @param cert Change the stored trust of this certificate.
   *  @param type The type of the certificate. See nsIX509Cert.
   *  @param trust A bitmask. The new trust for the possible usages.
   *               See the trust constants defined within this interface.
   */
  /* void setCertTrust (in nsIX509Cert cert, in unsigned long type, in unsigned long trust); */
  nsresult SetCertTrust(nsIX509Cert cert, PRUint32 type, PRUint32 trust);

  /**
   *  Query whether a certificate is trusted for a particular use.
   *
   *  @param cert Obtain the stored trust of this certificate.
   *  @param certType The type of the certificate. See nsIX509Cert.
   *  @param trustType A single bit from the usages constants defined 
   *                   within this interface.
   *
   *  @return Returns true if the certificate is trusted for the given use.
   */
  /* boolean isCertTrusted (in nsIX509Cert cert, in unsigned long certType, in unsigned long trustType); */
  nsresult IsCertTrusted(nsIX509Cert cert, PRUint32 certType, PRUint32 trustType, PRBool *_retval);

  /**
   *  Import certificate(s) from file
   *
   *  @param aToken Optionally limits the scope of 
   *                this function to a token device.
   *                Can be null to mean any token.
   *  @param aFile Identifies a file that contains the certificate
   *               to be imported.
   *  @param aType Describes the type of certificate that is going to
   *               be imported. See type constants in nsIX509Cert.
   */
  /* void importCertsFromFile (in nsISupports aToken, in nsILocalFile aFile, in unsigned long aType); */
  nsresult ImportCertsFromFile(nsISupports aToken, nsILocalFile aFile, PRUint32 aType);

  /**
   *  Import a PKCS#12 file containing cert(s) and key(s) into the database.
   *
   *  @param aToken Optionally limits the scope of 
   *                this function to a token device.
   *                Can be null to mean any token.
   *  @param aFile Identifies a file that contains the data
   *               to be imported.
   */
  /* void importPKCS12File (in nsISupports aToken, in nsILocalFile aFile); */
  nsresult ImportPKCS12File(nsISupports aToken, nsILocalFile aFile);

  /**
   *  Export a set of certs and keys from the database to a PKCS#12 file.
   *
   *  @param aToken Optionally limits the scope of 
   *                this function to a token device.
   *                Can be null to mean any token.
   *  @param aFile Identifies a file that will be filled with the data
   *               to be exported.
   *  @param count The number of certificates to be exported.
   *  @param aCerts The array of all certificates to be exported.
   */
  /* void exportPKCS12File (in nsISupports aToken, in nsILocalFile aFile, in unsigned long count, [array, size_is (count)] in nsIX509Cert aCerts); */
  nsresult ExportPKCS12File(nsISupports aToken, nsILocalFile aFile, PRUint32 count, nsIX509Cert *aCerts);

  /**
   *  An array of all known OCSP responders within the scope of the 
   *  certificate database.
   *
   *  @return Array of OCSP responders, entries are QIable to nsIOCSPResponder.
   */
  /* nsIArray getOCSPResponders (); */
  nsresult GetOCSPResponders(nsIArray *_retval);

  /**
   *  Whether OCSP is enabled in preferences.
   */
  /* readonly attribute boolean isOcspOn; */
  nsresult GetIsOcspOn(PRBool *aIsOcspOn);

  /* nsIX509Cert constructX509FromBase64 (in string base64); */
  nsresult ConstructX509FromBase64(char *base64, nsIX509Cert *_retval);

}

