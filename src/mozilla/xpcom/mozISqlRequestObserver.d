/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozISqlRequestObserver.idl
 */

module mozilla.xpcom.mozISqlRequestObserver;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.mozISqlRequest; /* forward declaration */


/* starting interface:    mozISqlRequestObserver */
const char[] MOZISQLREQUESTOBSERVER_IID_STR = "9e950bc0-e252-41ef-ac6f-3e3c4acd9dd8";

const nsIID MOZISQLREQUESTOBSERVER_IID= 
  {0x9e950bc0, 0xe252, 0x41ef, 
    [ 0xac, 0x6f, 0x3e, 0x3c, 0x4a, 0xcd, 0x9d, 0xd8 ]};

/**
 * This observer interface is used to listen to asynchronous SQL query or
 * update requests.
 *
 * @status UNDER_REVIEW
 */
extern(Windows)
interface mozISqlRequestObserver : nsISupports {
  static const char[] IID_STR = MOZISQLREQUESTOBSERVER_IID_STR;
  static const nsIID IID = MOZISQLREQUESTOBSERVER_IID;

  /**
   * This method will be called when the request is started.
   *
   * @param aRequest the request that has started
   * @param aContext a context that was supplied in the query/update call
   */
  /* void onStartRequest (in mozISqlRequest aRequest, in nsISupports aContext); */
  nsresult OnStartRequest(mozISqlRequest aRequest, nsISupports aContext);

  /**
   * This method will be called when the request has finished. This function
   * will be called in both success and error cases.
   *
   * @param aRequest the request that has started
   * @param aContext a context that was supplied in the query/update call
   */
  /* void onStopRequest (in mozISqlRequest aRequest, in nsISupports aContext); */
  nsresult OnStopRequest(mozISqlRequest aRequest, nsISupports aContext);

}

