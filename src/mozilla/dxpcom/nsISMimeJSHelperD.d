/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISMimeJSHelper.idl
 */

module mozilla.dxpcom.nsISMimeJSHelperD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISMimeJSHelper;


public import mozilla.dxpcom.nsISMimeJSHelperD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIMsgCompFields;

public import mozilla.dxpcom.nsIMsgCompFieldsD;

public import mozilla.xpcom.nsIX509Cert;

public import mozilla.dxpcom.nsIX509CertD;


/* starting wrapper class:    nsISMimeJSHelper */
class nsISMimeJSHelperD : public nsISupportsD {

  static const nsIID IID = NS_ISMIMEJSHELPER_IID;


  alias nsISMimeJSHelper InnerType;

  this(nsISMimeJSHelper intr){
    super(intr);
    this.inner = intr;
  }

  nsISMimeJSHelper opCast() {
    return inner;
  }

  void opAssign(nsISMimeJSHelper value) {
    inner = value;
  }

  /**
   * Obtains detailed information about the certificate availability
   * status of email recipients.
   *
   * @param compFields - Attributes of the composed message
   *
   * @param count - The number of entries in returned arrays
   *
   * @param emailAddresses - The list of all recipient email addresses
   *
   * @param certVerification - The verification/validity status of recipient certs
   *
   * @param certIssuedInfos - If a recipient cert was found, when has it been issued?
   *
   * @param certExpiredInfos - If a recipient cert was found, when will it expire?
   *
   * @param certs - The recipient certificates, which can contain null for not found
   *
   * @param canEncrypt - whether valid certificates have been found for all recipients
   *
   * @exception NS_ERROR_FAILURE - unexptected failure
   *
   * @exception NS_ERROR_OUT_OF_MEMORY - could not create the out list
   *
   * @exception NS_ERROR_INVALID_ARG
   */
  /* void getRecipientCertsInfo (in nsIMsgCompFields compFields, out unsigned long count, [array, size_is (count)] out wstring emailAddresses, [array, size_is (count)] out long certVerification, [array, size_is (count)] out wstring certIssuedInfos, [array, size_is (count)] out wstring certExpiresInfos, [array, size_is (count)] out nsIX509Cert certs, out PRBool canEncrypt); */
  void GetRecipientCertsInfo(nsIMsgCompFieldsD compFields, out PRUint32 count, out PRUnichar**emailAddresses, out PRInt32 *certVerification, out PRUnichar**certIssuedInfos, out PRUnichar**certExpiresInfos, out nsIX509CertD *certs, out PRBool canEncrypt){
    nsIX509Cert _certs;
    nsresult __result = inner.GetRecipientCertsInfo(compFields ? cast(nsIMsgCompFields)compFields : null, &count, &emailAddresses, &certVerification, &certIssuedInfos, &certExpiresInfos, &_certs, &canEncrypt);
    CheckException(__result);
    certs = _certs ? new nsIX509CertD(_certs) : null;
  }

  /**
   * Obtains a list of email addresses where valid email recipient certificates
   * are not yet available.
   *
   * @param compFields - Attributes of the composed message
   *
   * @param count - The number of returned email addresses
   *
   * @param emailAddresses - The list of email addresses without valid certs
   *
   * @exception NS_ERROR_FAILURE - unexptected failure
   *
   * @exception NS_ERROR_OUT_OF_MEMORY - could not create the out list
   *
   * @exception NS_ERROR_INVALID_ARG
   */
  /* void getNoCertAddresses (in nsIMsgCompFields compFields, out unsigned long count, [array, size_is (count)] out wstring emailAddresses); */
  void GetNoCertAddresses(nsIMsgCompFieldsD compFields, out PRUint32 count, out PRUnichar**emailAddresses){
    nsresult __result = inner.GetNoCertAddresses(compFields ? cast(nsIMsgCompFields)compFields : null, &count, &emailAddresses);
    CheckException(__result);
  }

private:
  nsISMimeJSHelper inner;

}

