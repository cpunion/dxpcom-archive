/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIX509CertDB.idl
 */

module mozilla.dxpcom.nsIX509CertDBD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIX509CertDB;


public import mozilla.dxpcom.nsIX509CertDBD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIArray;

public import mozilla.dxpcom.nsIArrayD;

public import mozilla.xpcom.nsIX509Cert;

public import mozilla.dxpcom.nsIX509CertD;

public import mozilla.xpcom.nsILocalFile;

public import mozilla.dxpcom.nsILocalFileD;

public import mozilla.xpcom.nsIInterfaceRequestor;

public import mozilla.dxpcom.nsIInterfaceRequestorD;


/* starting wrapper class:    nsIX509CertDB */
/**
 * This represents a service to access and manipulate 
 * X.509 certificates stored in a database.
 *
 * @status FROZEN
 */
class nsIX509CertDBD : public nsISupportsD {

  static const nsIID IID = NS_IX509CERTDB_IID;


  alias nsIX509CertDB InnerType;

  this(nsIX509CertDB intr){
    super(intr);
    this.inner = intr;
  }

  nsIX509CertDB opCast() {
    return inner;
  }

  void opAssign(nsIX509CertDB value) {
    inner = value;
  }

  /**
   *  Constants that define which usages a certificate
   *  is trusted for.
   */
  enum { UNTRUSTED = 0U }

  enum { TRUSTED_SSL = 1U }

  enum { TRUSTED_EMAIL = 2U }

  enum { TRUSTED_OBJSIGN = 4U }

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
  nsIX509CertD  FindCertByNickname(nsISupportsD aToken, wchar[] aNickname){
    scope auto _aNickname = new AString(aNickname);
    nsIX509Cert _retval;
    nsresult __result = inner.FindCertByNickname(aToken ? cast(nsISupports)aToken : null, cast(nsAString*)_aNickname, &_retval);
    CheckException(__result);
    return new nsIX509CertD(_retval);
  }

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
  nsIX509CertD  FindCertByDBKey(char*aDBkey, nsISupportsD aToken){
    nsIX509Cert _retval;
    nsresult __result = inner.FindCertByDBKey(aDBkey, aToken ? cast(nsISupports)aToken : null, &_retval);
    CheckException(__result);
    return new nsIX509CertD(_retval);
  }

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
  void FindCertNicknames(nsISupportsD aToken, PRUint32 aType, out PRUint32 count, out PRUnichar**certNameList){
    nsresult __result = inner.FindCertNicknames(aToken ? cast(nsISupports)aToken : null, aType, &count, &certNameList);
    CheckException(__result);
  }

  /**
   *  Find the email encryption certificate by nickname.
   *
   *  @param aNickname The nickname to be used as the key
   *                   to find the certificate.
   *                
   *  @return The matching certificate if found.
   */
  /* nsIX509Cert findEmailEncryptionCert (in AString aNickname); */
  nsIX509CertD  FindEmailEncryptionCert(wchar[] aNickname){
    scope auto _aNickname = new AString(aNickname);
    nsIX509Cert _retval;
    nsresult __result = inner.FindEmailEncryptionCert(cast(nsAString*)_aNickname, &_retval);
    CheckException(__result);
    return new nsIX509CertD(_retval);
  }

  /**
   *  Find the email signing certificate by nickname.
   *
   *  @param aNickname The nickname to be used as the key
   *                   to find the certificate.
   *                
   *  @return The matching certificate if found.
   */
  /* nsIX509Cert findEmailSigningCert (in AString aNickname); */
  nsIX509CertD  FindEmailSigningCert(wchar[] aNickname){
    scope auto _aNickname = new AString(aNickname);
    nsIX509Cert _retval;
    nsresult __result = inner.FindEmailSigningCert(cast(nsAString*)_aNickname, &_retval);
    CheckException(__result);
    return new nsIX509CertD(_retval);
  }

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
  nsIX509CertD  FindCertByEmailAddress(nsISupportsD aToken, char*aEmailAddress){
    nsIX509Cert _retval;
    nsresult __result = inner.FindCertByEmailAddress(aToken ? cast(nsISupports)aToken : null, aEmailAddress, &_retval);
    CheckException(__result);
    return new nsIX509CertD(_retval);
  }

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
  void ImportCertificates(PRUint8 *data, PRUint32 length, PRUint32 type, nsIInterfaceRequestorD ctx){
    nsresult __result = inner.ImportCertificates(data, length, type, ctx ? cast(nsIInterfaceRequestor)ctx : null);
    CheckException(__result);
  }

  /**
   *  Import another person's email certificate into the database.
   *
   *  @param data The raw data to be imported
   *  @param length The length of the data to be imported
   *  @param ctx A UI context.
   */
  /* void importEmailCertificate ([array, size_is (length)] in octet data, in unsigned long length, in nsIInterfaceRequestor ctx); */
  void ImportEmailCertificate(PRUint8 *data, PRUint32 length, nsIInterfaceRequestorD ctx){
    nsresult __result = inner.ImportEmailCertificate(data, length, ctx ? cast(nsIInterfaceRequestor)ctx : null);
    CheckException(__result);
  }

  /**
   *  Import a server machine's certificate into the database.
   *
   *  @param data The raw data to be imported
   *  @param length The length of the data to be imported
   *  @param ctx A UI context.
   */
  /* void importServerCertificate ([array, size_is (length)] in octet data, in unsigned long length, in nsIInterfaceRequestor ctx); */
  void ImportServerCertificate(PRUint8 *data, PRUint32 length, nsIInterfaceRequestorD ctx){
    nsresult __result = inner.ImportServerCertificate(data, length, ctx ? cast(nsIInterfaceRequestor)ctx : null);
    CheckException(__result);
  }

  /**
   *  Import a personal certificate into the database, assuming 
   *  the database already contains the private key for this certificate.
   *
   *  @param data The raw data to be imported
   *  @param length The length of the data to be imported
   *  @param ctx A UI context.
   */
  /* void importUserCertificate ([array, size_is (length)] in octet data, in unsigned long length, in nsIInterfaceRequestor ctx); */
  void ImportUserCertificate(PRUint8 *data, PRUint32 length, nsIInterfaceRequestorD ctx){
    nsresult __result = inner.ImportUserCertificate(data, length, ctx ? cast(nsIInterfaceRequestor)ctx : null);
    CheckException(__result);
  }

  /**
   *  Delete a certificate stored in the database.
   *
   *  @param aCert Delete this certificate.
   */
  /* void deleteCertificate (in nsIX509Cert aCert); */
  void DeleteCertificate(nsIX509CertD aCert){
    nsresult __result = inner.DeleteCertificate(aCert ? cast(nsIX509Cert)aCert : null);
    CheckException(__result);
  }

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
  void SetCertTrust(nsIX509CertD cert, PRUint32 type, PRUint32 trust){
    nsresult __result = inner.SetCertTrust(cert ? cast(nsIX509Cert)cert : null, type, trust);
    CheckException(__result);
  }

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
  PRBool IsCertTrusted(nsIX509CertD cert, PRUint32 certType, PRUint32 trustType){
    PRBool _retval;
    nsresult __result = inner.IsCertTrusted(cert ? cast(nsIX509Cert)cert : null, certType, trustType, &_retval);
    CheckException(__result);
    return _retval;
  }

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
  void ImportCertsFromFile(nsISupportsD aToken, nsILocalFileD aFile, PRUint32 aType){
    nsresult __result = inner.ImportCertsFromFile(aToken ? cast(nsISupports)aToken : null, aFile ? cast(nsILocalFile)aFile : null, aType);
    CheckException(__result);
  }

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
  void ImportPKCS12File(nsISupportsD aToken, nsILocalFileD aFile){
    nsresult __result = inner.ImportPKCS12File(aToken ? cast(nsISupports)aToken : null, aFile ? cast(nsILocalFile)aFile : null);
    CheckException(__result);
  }

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
  void ExportPKCS12File(nsISupportsD aToken, nsILocalFileD aFile, PRUint32 count, nsIX509CertD *aCerts){
    nsresult __result = inner.ExportPKCS12File(aToken ? cast(nsISupports)aToken : null, aFile ? cast(nsILocalFile)aFile : null, count, aCerts ? cast(nsIX509Cert)aCerts : null);
    CheckException(__result);
  }

  /**
   *  An array of all known OCSP responders within the scope of the 
   *  certificate database.
   *
   *  @return Array of OCSP responders, entries are QIable to nsIOCSPResponder.
   */
  /* nsIArray getOCSPResponders (); */
  nsIArrayD  GetOCSPResponders(){
    nsIArray _retval;
    nsresult __result = inner.GetOCSPResponders(&_retval);
    CheckException(__result);
    return new nsIArrayD(_retval);
  }

  /**
   *  Whether OCSP is enabled in preferences.
   */
  /* readonly attribute boolean isOcspOn; */
  PRBool IsOcspOn(){
    PRBool value;
    nsresult __result = inner.GetIsOcspOn(&value);
    CheckException(__result);
    return value;
  }

  /* nsIX509Cert constructX509FromBase64 (in string base64); */
  nsIX509CertD  ConstructX509FromBase64(char*base64){
    nsIX509Cert _retval;
    nsresult __result = inner.ConstructX509FromBase64(base64, &_retval);
    CheckException(__result);
    return new nsIX509CertD(_retval);
  }

private:
  nsIX509CertDB inner;

}

