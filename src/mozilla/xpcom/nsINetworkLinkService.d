/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINetworkLinkService.idl
 */

module mozilla.xpcom.nsINetworkLinkService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsINetworkLinkService */
const char[] NS_INETWORKLINKSERVICE_IID_STR = "61618a52-ea91-4277-a4ab-ebe10d7b9a64";

const nsIID NS_INETWORKLINKSERVICE_IID= 
  {0x61618a52, 0xea91, 0x4277, 
    [ 0xa4, 0xab, 0xeb, 0xe1, 0x0d, 0x7b, 0x9a, 0x64 ]};

/**
 * Network link status monitoring service.
 */
extern(Windows)
interface nsINetworkLinkService : nsISupports {
  static const char[] IID_STR = NS_INETWORKLINKSERVICE_IID_STR;
  static const nsIID IID = NS_INETWORKLINKSERVICE_IID;

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
  nsresult GetIsLinkUp(PRBool *aIsLinkUp);

  /**
   * This is set to true when we believe that isLinkUp is accurate.
   */
  /* readonly attribute boolean linkStatusKnown; */
  nsresult GetLinkStatusKnown(PRBool *aLinkStatusKnown);

}

