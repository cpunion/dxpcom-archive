/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICertificateDialogs.idl
 */

module mozilla.dxpcom.nsICertificateDialogsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICertificateDialogs;


public import mozilla.dxpcom.nsICertificateDialogsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIInterfaceRequestor;

public import mozilla.dxpcom.nsIInterfaceRequestorD;

public import mozilla.xpcom.nsIX509Cert;

public import mozilla.dxpcom.nsIX509CertD;

public import mozilla.xpcom.nsICRLInfo;

public import mozilla.dxpcom.nsICRLInfoD;


/* starting wrapper class:    nsICertificateDialogs */
/**
 * Functions that implement user interface dialogs to manage certificates.
 *
 * @status FROZEN
 */
class nsICertificateDialogsD : public nsISupportsD {

  static const nsIID IID = NS_ICERTIFICATEDIALOGS_IID;


  alias nsICertificateDialogs InnerType;

  this(nsICertificateDialogs intr){
    super(intr);
    this.inner = intr;
  }

  nsICertificateDialogs opCast() {
    return inner;
  }

  void opAssign(nsICertificateDialogs value) {
    inner = value;
  }

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
  PRBool ConfirmDownloadCACert(nsIInterfaceRequestorD ctx, nsIX509CertD cert, out PRUint32 trust){
    PRBool _retval;
    nsresult __result = inner.ConfirmDownloadCACert(ctx ? cast(nsIInterfaceRequestor)ctx : null, cert ? cast(nsIX509Cert)cert : null, &trust, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   *  UI shown when a web site has delivered a CA certificate to
   *  be imported, but the certificate is already contained in the
   *  user's storage.
   *
   *  @param ctx A user interface context.
   */
  /* void notifyCACertExists (in nsIInterfaceRequestor ctx); */
  void NotifyCACertExists(nsIInterfaceRequestorD ctx){
    nsresult __result = inner.NotifyCACertExists(ctx ? cast(nsIInterfaceRequestor)ctx : null);
    CheckException(__result);
  }

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
  PRBool SetPKCS12FilePassword(nsIInterfaceRequestorD ctx, wchar[] password){
    scope auto _password = new AString;
    PRBool _retval;
    nsresult __result = inner.SetPKCS12FilePassword(ctx ? cast(nsIInterfaceRequestor)ctx : null, cast(nsAString*)_password, &_retval);
    CheckException(__result);
    password = _password.GetString();
    return _retval;
  }

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
  PRBool GetPKCS12FilePassword(nsIInterfaceRequestorD ctx, wchar[] password){
    scope auto _password = new AString;
    PRBool _retval;
    nsresult __result = inner.GetPKCS12FilePassword(ctx ? cast(nsIInterfaceRequestor)ctx : null, cast(nsAString*)_password, &_retval);
    CheckException(__result);
    password = _password.GetString();
    return _retval;
  }

  /**
   *  UI shown when a certificate needs to be shown to the user.
   *  The implementation should try to display as many attributes
   *  as possible.
   *
   *  @param ctx A user interface context.
   *  @param cert The certificate to be shown to the user.
   */
  /* void viewCert (in nsIInterfaceRequestor ctx, in nsIX509Cert cert); */
  void ViewCert(nsIInterfaceRequestorD ctx, nsIX509CertD cert){
    nsresult __result = inner.ViewCert(ctx ? cast(nsIInterfaceRequestor)ctx : null, cert ? cast(nsIX509Cert)cert : null);
    CheckException(__result);
  }

  /**
   *  UI shown after a Certificate Revocation List (CRL) has been
   *  successfully imported.
   *
   *  @param ctx A user interface context.
   *  @param crl Information describing the CRL that was imported.
   */
  /* void crlImportStatusDialog (in nsIInterfaceRequestor ctx, in nsICRLInfo crl); */
  void CrlImportStatusDialog(nsIInterfaceRequestorD ctx, nsICRLInfoD crl){
    nsresult __result = inner.CrlImportStatusDialog(ctx ? cast(nsIInterfaceRequestor)ctx : null, crl ? cast(nsICRLInfo)crl : null);
    CheckException(__result);
  }

private:
  nsICertificateDialogs inner;

}

