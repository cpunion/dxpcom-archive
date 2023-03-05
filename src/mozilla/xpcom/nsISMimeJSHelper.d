/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISMimeJSHelper.idl
 */

module mozilla.xpcom.nsISMimeJSHelper;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIMsgCompFields; /* forward declaration */

public import mozilla.xpcom.nsIX509Cert; /* forward declaration */


/* starting interface:    nsISMimeJSHelper */
const char[] NS_ISMIMEJSHELPER_IID_STR = "a54e3c8f-a000-4901-898f-fafb297b1546";

const nsIID NS_ISMIMEJSHELPER_IID= 
  {0xa54e3c8f, 0xa000, 0x4901, 
    [ 0x89, 0x8f, 0xfa, 0xfb, 0x29, 0x7b, 0x15, 0x46 ]};

extern(Windows)
interface nsISMimeJSHelper : nsISupports {
  static const char[] IID_STR = NS_ISMIMEJSHELPER_IID_STR;
  static const nsIID IID = NS_ISMIMEJSHELPER_IID;

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
  nsresult GetRecipientCertsInfo(nsIMsgCompFields compFields, PRUint32 *count, PRUnichar ***emailAddresses, PRInt32 **certVerification, PRUnichar ***certIssuedInfos, PRUnichar ***certExpiresInfos, nsIX509Cert **certs, PRBool *canEncrypt);

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
  nsresult GetNoCertAddresses(nsIMsgCompFields compFields, PRUint32 *count, PRUnichar ***emailAddresses);

}

