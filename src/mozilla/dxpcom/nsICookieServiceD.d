/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICookieService.idl
 */

module mozilla.dxpcom.nsICookieServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICookieService;


public import mozilla.dxpcom.nsICookieServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIPrompt;

public import mozilla.dxpcom.nsIPromptD;

public import mozilla.xpcom.nsIChannel;

public import mozilla.dxpcom.nsIChannelD;


/* starting wrapper class:    nsICookieService */
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
class nsICookieServiceD : public nsISupportsD {

  static const nsIID IID = NS_ICOOKIESERVICE_IID;


  alias nsICookieService InnerType;

  this(nsICookieService intr){
    super(intr);
    this.inner = intr;
  }

  nsICookieService opCast() {
    return inner;
  }

  void opAssign(nsICookieService value) {
    inner = value;
  }

  /* string getCookieString (in nsIURI aURI, in nsIChannel aChannel); */
  char* GetCookieString(nsIURID aURI, nsIChannelD aChannel){
    char* _retval;
    nsresult __result = inner.GetCookieString(aURI ? cast(nsIURI)aURI : null, aChannel ? cast(nsIChannel)aChannel : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* string getCookieStringFromHttp (in nsIURI aURI, in nsIURI aFirstURI, in nsIChannel aChannel); */
  char* GetCookieStringFromHttp(nsIURID aURI, nsIURID aFirstURI, nsIChannelD aChannel){
    char* _retval;
    nsresult __result = inner.GetCookieStringFromHttp(aURI ? cast(nsIURI)aURI : null, aFirstURI ? cast(nsIURI)aFirstURI : null, aChannel ? cast(nsIChannel)aChannel : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setCookieString (in nsIURI aURI, in nsIPrompt aPrompt, in string aCookie, in nsIChannel aChannel); */
  void SetCookieString(nsIURID aURI, nsIPromptD aPrompt, char*aCookie, nsIChannelD aChannel){
    nsresult __result = inner.SetCookieString(aURI ? cast(nsIURI)aURI : null, aPrompt ? cast(nsIPrompt)aPrompt : null, aCookie, aChannel ? cast(nsIChannel)aChannel : null);
    CheckException(__result);
  }

  /* void setCookieStringFromHttp (in nsIURI aURI, in nsIURI aFirstURI, in nsIPrompt aPrompt, in string aCookie, in string aServerTime, in nsIChannel aChannel); */
  void SetCookieStringFromHttp(nsIURID aURI, nsIURID aFirstURI, nsIPromptD aPrompt, char*aCookie, char*aServerTime, nsIChannelD aChannel){
    nsresult __result = inner.SetCookieStringFromHttp(aURI ? cast(nsIURI)aURI : null, aFirstURI ? cast(nsIURI)aFirstURI : null, aPrompt ? cast(nsIPrompt)aPrompt : null, aCookie, aServerTime, aChannel ? cast(nsIChannel)aChannel : null);
    CheckException(__result);
  }

  /**
   * This attribute really doesn't belong on this interface.  CVS blame will
   * tell you why it is here.  It remains until we can find a better home for
   * it.  Read the source if you want to know what it does :-(
   */
  /* readonly attribute boolean cookieIconIsVisible; */
  PRBool CookieIconIsVisible(){
    PRBool value;
    nsresult __result = inner.GetCookieIconIsVisible(&value);
    CheckException(__result);
    return value;
  }

private:
  nsICookieService inner;

}

