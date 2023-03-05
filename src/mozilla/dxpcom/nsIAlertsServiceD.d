/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAlertsService.idl
 */

module mozilla.dxpcom.nsIAlertsServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAlertsService;


public import mozilla.dxpcom.nsIAlertsServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIObserver;
public import mozilla.dxpcom.nsIObserverD;


/* starting wrapper class:    nsIAlertsService */
class nsIAlertsServiceD : public nsISupportsD {

  static const nsIID IID = NS_IALERTSSERVICE_IID;


  alias nsIAlertsService InnerType;

  this(nsIAlertsService intr){
    super(intr);
    this.inner = intr;
  }

  nsIAlertsService opCast() {
    return inner;
  }

  void opAssign(nsIAlertsService value) {
    inner = value;
  }

  /* void showAlertNotification (in AString aImageUrl, in AString aAlertTitle, in AString aAlertText, in boolean alertTextClickable, in AString aAlertCookie, in nsIObserver aAlertListener); */
  void ShowAlertNotification(wchar[] aImageUrl, wchar[] aAlertTitle, wchar[] aAlertText, PRBool alertTextClickable, wchar[] aAlertCookie, nsIObserverD aAlertListener){
    scope auto _aImageUrl = new AString(aImageUrl);
    scope auto _aAlertTitle = new AString(aAlertTitle);
    scope auto _aAlertText = new AString(aAlertText);
    scope auto _aAlertCookie = new AString(aAlertCookie);
    nsresult __result = inner.ShowAlertNotification(cast(nsAString*)_aImageUrl, cast(nsAString*)_aAlertTitle, cast(nsAString*)_aAlertText, alertTextClickable, cast(nsAString*)_aAlertCookie, aAlertListener ? cast(nsIObserver)aAlertListener : null);
    CheckException(__result);
  }

private:
  nsIAlertsService inner;

}

