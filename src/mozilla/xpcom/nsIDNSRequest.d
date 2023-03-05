/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDNSRequest.idl
 */

module mozilla.xpcom.nsIDNSRequest;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIDNSRequest */
const char[] NS_IDNSREQUEST_IID_STR = "3e538aea-d84b-4bf4-bae1-55f9969fe50e";

const nsIID NS_IDNSREQUEST_IID= 
  {0x3e538aea, 0xd84b, 0x4bf4, 
    [ 0xba, 0xe1, 0x55, 0xf9, 0x96, 0x9f, 0xe5, 0x0e ]};

/**
 * nsIDNSRequest
 */
extern(Windows)
interface nsIDNSRequest : nsISupports {
  static const char[] IID_STR = NS_IDNSREQUEST_IID_STR;
  static const nsIID IID = NS_IDNSREQUEST_IID;

  /**
     * called to cancel a pending asynchronous DNS request.  the listener will
     * passed to asyncResolve will be notified immediately with a status code
     * of NS_ERROR_ABORT.
     */
  /* void cancel (); */
  nsresult Cancel();

}

