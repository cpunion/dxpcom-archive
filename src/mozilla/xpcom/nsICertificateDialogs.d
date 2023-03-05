/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICertificateDialogs.idl
 */

module mozilla.xpcom.nsICertificateDialogs;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIInterfaceRequestor; /* forward declaration */

public import mozilla.xpcom.nsIX509Cert; /* forward declaration */

public import mozilla.xpcom.nsICRLInfo; /* forward declaration */


/* starting interface:    nsICertificateDialogs */
const char[] NS_ICERTIFICATEDIALOGS_IID_STR = "a03ca940-09be-11d5-ac5d-000064657374";

const nsIID NS_ICERTIFICATEDIALOGS_IID= 
  {0xa03ca940, 0x09be, 0x11d5, 
    [ 0xac, 0x5d, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

/**
 * Functions that implement user interface dialogs to manage certificates.
 *
 * @status FROZEN
 */
extern(Windows)
interface nsICertificateDialogs : nsISupports {
  static const char[] IID_STR = NS_ICERTIFICATEDIALOGS_IID_STR;
  static const nsIID IID = NS_ICERTIFICATEDIALOGS_IID;

  /**
   *  UI shown when a user is asked to download a new CA cert.
   *  Provides user with ability to choose trust settings for the cert.
   *  Asks the user to grant permission to import the certificate.
   *
   *  @param ctx A user interface context.
   *  @param cert The certificate that is about to get installed.
   *  @param trust a bit mask of trust flags, 
   *               see nsIX509CertDB for possible values.
   *
   *  @return true if the user allows to import the certificate.
   */
  /* boolean confirmDownloadCACert (in nsIInterfaceRequestor ctx, in nsIX509Cert cert, out unsigned long trust); */
  nsresult ConfirmDownloadCACert(nsIInterfaceRequestor ctx, nsIX509Cert cert, PRUint32 *trust, PRBool *_retval);

  /**
   *  UI shown when a web site has delivered a CA certificate to
   *  be imported, but the certificate is already contained in the
   *  user's storage.
   *
   *  @param ctx A user interface context.
   */
  /* void notifyCACertExists (in nsIInterfaceRequestor ctx); */
  nsresult NotifyCACertExists(nsIInterfaceRequestor ctx);

  /**
   *  UI shown when a user's personal certificate is going to be
   *  exported to a backup file.
   *  The implementation of this dialog should make sure 
   *  to prompt the user to type the password twice in order to
   *  confirm correct input.
   *  The wording in the dialog should also motivate the user 
   *  to enter a strong password.
   *
   *  @param ctx A user interface context.
   *  @param password The password provided by the user.
   *
   *  @return false if the user requests to cancel.
   */
  /* boolean setPKCS12FilePassword (in nsIInterfaceRequestor ctx, out AString password); */
  nsresult SetPKCS12FilePassword(nsIInterfaceRequestor ctx, nsAString * password, PRBool *_retval);

  /**
   *  UI shown when a user is about to restore a personal
   *  certificate from a backup file.
   *  The user is requested to enter the password
   *  that was used in the past to protect that backup file.
   *
   *  @param ctx A user interface context.
   *  @param password The password provided by the user.
   *
   *  @return false if the user requests to cancel.
   */
  /* boolean getPKCS12FilePassword (in nsIInterfaceRequestor ctx, out AString password); */
  nsresult GetPKCS12FilePassword(nsIInterfaceRequestor ctx, nsAString * password, PRBool *_retval);

  /**
   *  UI shown when a certificate needs to be shown to the user.
   *  The implementation should try to display as many attributes
   *  as possible.
   *
   *  @param ctx A user interface context.
   *  @param cert The certificate to be shown to the user.
   */
  /* void viewCert (in nsIInterfaceRequestor ctx, in nsIX509Cert cert); */
  nsresult ViewCert(nsIInterfaceRequestor ctx, nsIX509Cert cert);

  /**
   *  UI shown after a Certificate Revocation List (CRL) has been
   *  successfully imported.
   *
   *  @param ctx A user interface context.
   *  @param crl Information describing the CRL that was imported.
   */
  /* void crlImportStatusDialog (in nsIInterfaceRequestor ctx, in nsICRLInfo crl); */
  nsresult CrlImportStatusDialog(nsIInterfaceRequestor ctx, nsICRLInfo crl);

}

