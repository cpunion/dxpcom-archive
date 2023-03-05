/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRequestObserver.idl
 */

module mozilla.xpcom.nsIRequestObserver;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIRequest; /* forward declaration */


/* starting interface:    nsIRequestObserver */
const char[] NS_IREQUESTOBSERVER_IID_STR = "fd91e2e0-1481-11d3-9333-00104ba0fd40";

const nsIID NS_IREQUESTOBSERVER_IID= 
  {0xfd91e2e0, 0x1481, 0x11d3, 
    [ 0x93, 0x33, 0x00, 0x10, 0x4b, 0xa0, 0xfd, 0x40 ]};

/**
 * nsIRequestObserver
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIRequestObserver : nsISupports {
  static const char[] IID_STR = NS_IREQUESTOBSERVER_IID_STR;
  static const nsIID IID = NS_IREQUESTOBSERVER_IID;

  /**
     * Called to signify the beginning of an asynchronous request.
     *
     * @param aRequest request being observed
     * @param aContext user defined context
     *
     * An exception thrown from onStartRequest has the side-effect of
     * causing the request to be canceled.
     */
  /* void onStartRequest (in nsIRequest aRequest, in nsISupports aContext); */
  nsresult OnStartRequest(nsIRequest aRequest, nsISupports aContext);

  /**
     * Called to signify the end of an asynchronous request.  This
     * call is always preceded by a call to onStartRequest.
     *
     * @param aRequest request being observed
     * @param aContext user defined context
     * @param aStatusCode reason for stopping (NS_OK if completed successfully)
     *
     * An exception thrown from onStopRequest is generally ignored.
     */
  /* void onStopRequest (in nsIRequest aRequest, in nsISupports aContext, in nsresult aStatusCode); */
  nsresult OnStopRequest(nsIRequest aRequest, nsISupports aContext, nsresult aStatusCode);

}

