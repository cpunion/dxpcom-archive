/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAlertsService.idl
 */

module mozilla.xpcom.nsIAlertsService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIObserver;


/* starting interface:    nsIAlertsService */
const char[] NS_IALERTSSERVICE_IID_STR = "3a3c2953-01ee-4d9c-a102-5aa0d7bd444c";

const nsIID NS_IALERTSSERVICE_IID= 
  {0x3a3c2953, 0x01ee, 0x4d9c, 
    [ 0xa1, 0x02, 0x5a, 0xa0, 0xd7, 0xbd, 0x44, 0x4c ]};

extern(Windows)
interface nsIAlertsService : nsISupports {
  static const char[] IID_STR = NS_IALERTSSERVICE_IID_STR;
  static const nsIID IID = NS_IALERTSSERVICE_IID;

  /* void showAlertNotification (in AString aImageUrl, in AString aAlertTitle, in AString aAlertText, in boolean alertTextClickable, in AString aAlertCookie, in nsIObserver aAlertListener); */
  nsresult ShowAlertNotification(nsAString * aImageUrl, nsAString * aAlertTitle, nsAString * aAlertText, PRBool alertTextClickable, nsAString * aAlertCookie, nsIObserver aAlertListener);

}

