/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUpdateNotification.idl
 */

module mozilla.dxpcom.nsIUpdateNotificationD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIUpdateNotification;


public import mozilla.dxpcom.nsIUpdateNotificationD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIUpdateNotification */
class nsIUpdateNotificationD : public nsISupportsD {

  static const nsIID IID = NS_IUPDATENOTIFICATION_IID;


  alias nsIUpdateNotification InnerType;

  this(nsIUpdateNotification intr){
    super(intr);
    this.inner = intr;
  }

  nsIUpdateNotification opCast() {
    return inner;
  }

  void opAssign(nsIUpdateNotification value) {
    inner = value;
  }

  /* void displayUpdateDialog (); */
  void DisplayUpdateDialog(){
    nsresult __result = inner.DisplayUpdateDialog();
    CheckException(__result);
  }

private:
  nsIUpdateNotification inner;

}

