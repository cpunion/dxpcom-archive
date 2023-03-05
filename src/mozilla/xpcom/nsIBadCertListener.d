/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBadCertListener.idl
 */

module mozilla.xpcom.nsIBadCertListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIX509Cert; /* forward declaration */

public import mozilla.xpcom.nsIInterfaceRequestor; /* forward declaration */


/* starting interface:    nsIBadCertListener */
const char[] NS_IBADCERTLISTENER_IID_STR = "86960956-edb0-11d4-998b-00b0d02354a0";

const nsIID NS_IBADCERTLISTENER_IID= 
  {0x86960956, 0xedb0, 0x11d4, 
    [ 0x99, 0x8b, 0x00, 0xb0, 0xd0, 0x23, 0x54, 0xa0 ]};

/**
 * Functions that display warnings for problems with web site trust.
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIBadCertListener : nsISupports {
  static const char[] IID_STR = NS_IBADCERTLISTENER_IID_STR;
  static const nsIID IID = NS_IBADCERTLISTENER_IID;

  /**
   *  No decision was made by the user, whether to trust a cert.
   */
  enum { UNINIT_ADD_FLAG = -1 };

  /**
   *  The user decided to add trust to a certificate temporarily
   *  for the current application session only.
   */
  enum { ADD_TRUSTED_FOR_SESSION = 1 };

  /**
   *  The user decided to add trust to a certificate permanently.
   */
  enum { ADD_TRUSTED_PERMANENTLY = 2 };

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
  nsresult ConfirmUnknownIssuer(nsIInterfaceRequestor socketInfo, nsIX509Cert cert, PRInt16 *certAddType, PRBool *_retval);

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
  nsresult ConfirmMismatchDomain(nsIInterfaceRequestor socketInfo, nsACString * targetURL, nsIX509Cert cert, PRBool *_retval);

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
  nsresult ConfirmCertExpired(nsIInterfaceRequestor socketInfo, nsIX509Cert cert, PRBool *_retval);

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
  nsresult NotifyCrlNextupdate(nsIInterfaceRequestor socketInfo, nsACString * targetURL, nsIX509Cert cert);

}

