/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsPICertNotification.idl
 */

module mozilla.dxpcom.nsPICertNotificationD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsPICertNotification;


public import mozilla.dxpcom.nsPICertNotificationD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIPrincipal;

public import mozilla.dxpcom.nsIPrincipalD;


/* starting wrapper class:    nsPICertNotification */
class nsPICertNotificationD : public nsISupportsD {

  static const nsIID IID = NS_PICERTNOTIFICATION_IID;


  alias nsPICertNotification InnerType;

  this(nsPICertNotification intr){
    super(intr);
    this.inner = intr;
  }

  nsPICertNotification opCast() {
    return inner;
  }

  void opAssign(nsPICertNotification value) {
    inner = value;
  }

  /* void onCertAvailable (in nsIURI aURI, in nsISupports aContext, in PRUint32 aStatus, in nsIPrincipal aPrincipal); */
  void OnCertAvailable(nsIURID aURI, nsISupportsD aContext, PRUint32 aStatus, nsIPrincipalD aPrincipal){
    nsresult __result = inner.OnCertAvailable(aURI ? cast(nsIURI)aURI : null, aContext ? cast(nsISupports)aContext : null, aStatus, aPrincipal ? cast(nsIPrincipal)aPrincipal : null);
    CheckException(__result);
  }

private:
  nsPICertNotification inner;

}

