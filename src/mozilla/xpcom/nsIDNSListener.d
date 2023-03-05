/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDNSListener.idl
 */

module mozilla.xpcom.nsIDNSListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsICancelable; /* forward declaration */

public import mozilla.xpcom.nsIDNSRecord; /* forward declaration */


/* starting interface:    nsIDNSListener */
const char[] NS_IDNSLISTENER_IID_STR = "41466a9f-f027-487d-a96c-af39e629b8d2";

const nsIID NS_IDNSLISTENER_IID= 
  {0x41466a9f, 0xf027, 0x487d, 
    [ 0xa9, 0x6c, 0xaf, 0x39, 0xe6, 0x29, 0xb8, 0xd2 ]};

/**
 * nsIDNSListener
 */
extern(Windows)
interface nsIDNSListener : nsISupports {
  static const char[] IID_STR = NS_IDNSLISTENER_IID_STR;
  static const nsIID IID = NS_IDNSLISTENER_IID;

  /**
     * called when an asynchronous host lookup completes.
     *
     * @param aRequest
     *        the value returned from asyncResolve.
     * @param aRecord
     *        the DNS record corresponding to the hostname that was resolved.
     *        this parameter is null if there was an error.
     * @param aStatus
     *        if the lookup failed, this parameter gives the reason.
     */
  /* void onLookupComplete (in nsICancelable aRequest, in nsIDNSRecord aRecord, in nsresult aStatus); */
  nsresult OnLookupComplete(nsICancelable aRequest, nsIDNSRecord aRecord, nsresult aStatus);

}

