/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBadCertListener.idl
 */

module mozilla.dxpcom.nsIBadCertListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIBadCertListener;


public import mozilla.dxpcom.nsIBadCertListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIX509Cert;

public import mozilla.dxpcom.nsIX509CertD;

public import mozilla.xpcom.nsIInterfaceRequestor;

public import mozilla.dxpcom.nsIInterfaceRequestorD;


/* starting wrapper class:    nsIBadCertListener */
/**
 * Functions that display warnings for problems with web site trust.
 *
 * @status FROZEN
 */
class nsIBadCertListenerD : public nsISupportsD {

  static const nsIID IID = NS_IBADCERTLISTENER_IID;


  alias nsIBadCertListener InnerType;

  this(nsIBadCertListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIBadCertListener opCast() {
    return inner;
  }

  void opAssign(nsIBadCertListener value) {
    inner = value;
  }

  /**
   *  No decision was made by the user, whether to trust a cert.
   */
  enum { UNINIT_ADD_FLAG = -1 }

  /**
   *  The user decided to add trust to a certificate temporarily
   *  for the current application session only.
   */
  enum { ADD_TRUSTED_FOR_SESSION = 1 }

  /**
   *  The user decided to add trust to a certificate permanently.
   */
  enum { ADD_TRUSTED_PERMANENTLY = 2 }

  /**
   *  Inform the user there are problems with the trust of a certificate,
   *  and request a decision from the user.
   *  The UI should offer the user a way to look at the certificate in detail.
   *  The following is a sample UI message to be shown to the user:
   *
   *    Unable to verify the identity of %S as a trusted site.
   *    Possible reasons for this error:
   *    - Your browser does not recognize the Certificate Authority 
   *      that issued the site's certificate.
   *    - The site's certificate is incomplete due to a 
   *      server misconfiguration.
   *    - You are connected to a site pretending to be %S, 
   *      possibly to obtain your confidential information.
   *    Please notify the site's webmaster about this problem.
   *    Before accepting this certificate, you should examine this site's 
   *      certificate carefully. Are you willing to to accept this certificate 
   *      for the purpose of identifying the Web site %S?
   *    o Accept this certificate permanently
   *    x Accept this certificate temporarily for this session
   *    o Do not accept this certificate and do not connect to this Web site
   *
   *  @param socketInfo A network communication context that can be used to obtain more information
   *                    about the active connection.
   *  @param cert The certificate that is not trusted and that is having the problem.
   *  @param certAddType The user's trust decision. See constants defined above.
   *
   *  @return true if the user decided to connect anyway, false if the user decided to not connect
   */
  /* boolean confirmUnknownIssuer (in nsIInterfaceRequestor socketInfo, in nsIX509Cert cert, out short certAddType); */
  PRBool ConfirmUnknownIssuer(nsIInterfaceRequestorD socketInfo, nsIX509CertD cert, out PRInt16 certAddType){
    PRBool _retval;
    nsresult __result = inner.ConfirmUnknownIssuer(socketInfo ? cast(nsIInterfaceRequestor)socketInfo : null, cert ? cast(nsIX509Cert)cert : null, &certAddType, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   *  Inform the user there are problems with the trust of a certificate,
   *  and request a decision from the user.
   *  The hostname mentioned in the server's certificate is not the hostname
   *  that was used as a destination address for the current connection.
   *
   *  @param socketInfo A network communication context that can be used to obtain more information
   *                    about the active connection.
   *  @param targetURL The URL that was used to open the current connection.
   *  @param cert The certificate that was presented by the server.
   *
   *  @return true if the user decided to connect anyway, false if the user decided to not connect
   */
  /* boolean confirmMismatchDomain (in nsIInterfaceRequestor socketInfo, in AUTF8String targetURL, in nsIX509Cert cert); */
  PRBool ConfirmMismatchDomain(nsIInterfaceRequestorD socketInfo, char[] targetURL, nsIX509CertD cert){
    scope auto _targetURL = new ACString(targetURL);
    PRBool _retval;
    nsresult __result = inner.ConfirmMismatchDomain(socketInfo ? cast(nsIInterfaceRequestor)socketInfo : null, cast(nsACString*)_targetURL, cert ? cast(nsIX509Cert)cert : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   *  Inform the user there are problems with the trust of a certificate,
   *  and request a decision from the user.
   *  The certificate presented by the server is no longer valid because 
   *  the validity period has expired.
   *
   *  @param socketInfo A network communication context that can be used to obtain more information
   *                    about the active connection.
   *  @param cert The certificate that was presented by the server.
   *
   *  @return true if the user decided to connect anyway, false if the user decided to not connect
   */
  /* boolean confirmCertExpired (in nsIInterfaceRequestor socketInfo, in nsIX509Cert cert); */
  PRBool ConfirmCertExpired(nsIInterfaceRequestorD socketInfo, nsIX509CertD cert){
    PRBool _retval;
    nsresult __result = inner.ConfirmCertExpired(socketInfo ? cast(nsIInterfaceRequestor)socketInfo : null, cert ? cast(nsIX509Cert)cert : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   *  Inform the user there are problems with the trust of a certificate,
   *  and request a decision from the user.
   *  The Certificate Authority (CA) that issued the server's certificate has issued a 
   *  Certificate Revocation List (CRL). 
   *  However, the application does not have a current version of the CA's CRL.
   *  Due to the application configuration, the application disallows the connection
   *  to the remote site.
   *
   *  @param socketInfo A network communication context that can be used to obtain more information
   *                    about the active connection.
   *  @param targetURL The URL that was used to open the current connection.
   *  @param cert The certificate that was presented by the server.
   */
  /* void notifyCrlNextupdate (in nsIInterfaceRequestor socketInfo, in AUTF8String targetURL, in nsIX509Cert cert); */
  void NotifyCrlNextupdate(nsIInterfaceRequestorD socketInfo, char[] targetURL, nsIX509CertD cert){
    scope auto _targetURL = new ACString(targetURL);
    nsresult __result = inner.NotifyCrlNextupdate(socketInfo ? cast(nsIInterfaceRequestor)socketInfo : null, cast(nsACString*)_targetURL, cert ? cast(nsIX509Cert)cert : null);
    CheckException(__result);
  }

private:
  nsIBadCertListener inner;

}

