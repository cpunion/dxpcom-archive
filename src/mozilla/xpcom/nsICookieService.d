/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICookieService.idl
 */

module mozilla.xpcom.nsICookieService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIPrompt; /* forward declaration */

public import mozilla.xpcom.nsIChannel; /* forward declaration */


/* starting interface:    nsICookieService */
const char[] NS_ICOOKIESERVICE_IID_STR = "011c3190-1434-11d6-a618-0010a401eb10";

const nsIID NS_ICOOKIESERVICE_IID= 
  {0x011c3190, 0x1434, 0x11d6, 
    [ 0xa6, 0x18, 0x00, 0x10, 0xa4, 0x01, 0xeb, 0x10 ]};

/**
 * nsICookieService
 *
 * Provides methods for setting and getting cookies in the context of a
 * page load.  See nsICookieManager for methods to manipulate the cookie
 * database directly.  This separation of interface is mainly historical.
 *
 * This service broadcasts the following notifications when the cookie
 * list is changed, or a cookie is rejected:
 *
 * topic  : "cookie-changed"
 *          broadcast whenever the cookie list changes in some way. there
 *          are four possible data strings for this notification; one
 *          notification will be broadcast for each change, and will involve
 *          a single cookie.
 * subject: an nsICookie2 interface pointer representing the cookie object
 *          that changed.
 * data   : "deleted"
 *          a cookie was deleted. the subject is the deleted cookie.
 *          "added"
 *          a cookie was added. the subject is the added cookie.
 *          "changed"
 *          a cookie was changed. the subject is the new cookie.
 *          "cleared"
 *          the entire cookie list was cleared. the subject is null.
 *
 * topic  : "cookie-rejected"
 *          broadcast whenever a cookie was rejected from being set as a
 *          result of user prefs.
 * subject: an nsIURI interface pointer representing the URI that attempted
 *          to set the cookie.
 * data   : none.
 */
extern(Windows)
interface nsICookieService : nsISupports {
  static const char[] IID_STR = NS_ICOOKIESERVICE_IID_STR;
  static const nsIID IID = NS_ICOOKIESERVICE_IID;

  /* string getCookieString (in nsIURI aURI, in nsIChannel aChannel); */
  nsresult GetCookieString(nsIURI aURI, nsIChannel aChannel, char **_retval);

  /* string getCookieStringFromHttp (in nsIURI aURI, in nsIURI aFirstURI, in nsIChannel aChannel); */
  nsresult GetCookieStringFromHttp(nsIURI aURI, nsIURI aFirstURI, nsIChannel aChannel, char **_retval);

  /* void setCookieString (in nsIURI aURI, in nsIPrompt aPrompt, in string aCookie, in nsIChannel aChannel); */
  nsresult SetCookieString(nsIURI aURI, nsIPrompt aPrompt, char *aCookie, nsIChannel aChannel);

  /* void setCookieStringFromHttp (in nsIURI aURI, in nsIURI aFirstURI, in nsIPrompt aPrompt, in string aCookie, in string aServerTime, in nsIChannel aChannel); */
  nsresult SetCookieStringFromHttp(nsIURI aURI, nsIURI aFirstURI, nsIPrompt aPrompt, char *aCookie, char *aServerTime, nsIChannel aChannel);

  /**
   * This attribute really doesn't belong on this interface.  CVS blame will
   * tell you why it is here.  It remains until we can find a better home for
   * it.  Read the source if you want to know what it does :-(
   */
  /* readonly attribute boolean cookieIconIsVisible; */
  nsresult GetCookieIconIsVisible(PRBool *aCookieIconIsVisible);

}

