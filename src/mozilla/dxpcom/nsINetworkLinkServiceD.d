/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINetworkLinkService.idl
 */

module mozilla.dxpcom.nsINetworkLinkServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsINetworkLinkService;


public import mozilla.dxpcom.nsINetworkLinkServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsINetworkLinkService */
/**
 * Network link status monitoring service.
 */
class nsINetworkLinkServiceD : public nsISupportsD {

  static const nsIID IID = NS_INETWORKLINKSERVICE_IID;


  alias nsINetworkLinkService InnerType;

  this(nsINetworkLinkService intr){
    super(intr);
    this.inner = intr;
  }

  nsINetworkLinkService opCast() {
    return inner;
  }

  void opAssign(nsINetworkLinkService value) {
    inner = value;
  }

  /**
   * This is set to true when the system is believed to have a usable
   * network connection.
   *
   * The link is only up when network connections can be established. For
   * example, the link is down during DHCP configuration (unless there
   * is another usable interface already configured).
   *
   * If the link status is not currently known, we generally assume that
   * it is up.
   */
  /* readonly attribute boolean isLinkUp; */
  PRBool IsLinkUp(){
    PRBool value;
    nsresult __result = inner.GetIsLinkUp(&value);
    CheckException(__result);
    return value;
  }

  /**
   * This is set to true when we believe that isLinkUp is accurate.
   */
  /* readonly attribute boolean linkStatusKnown; */
  PRBool LinkStatusKnown(){
    PRBool value;
    nsresult __result = inner.GetLinkStatusKnown(&value);
    CheckException(__result);
    return value;
  }

private:
  nsINetworkLinkService inner;

}

