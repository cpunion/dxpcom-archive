/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILoadGroup.idl
 */

module mozilla.xpcom.nsILoadGroup;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIRequest;

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */

public import mozilla.xpcom.nsIRequestObserver; /* forward declaration */

public import mozilla.xpcom.nsIInterfaceRequestor; /* forward declaration */


/* starting interface:    nsILoadGroup */
const char[] NS_ILOADGROUP_IID_STR = "3de0a31c-feaf-400f-9f1e-4ef71f8b20cc";

const nsIID NS_ILOADGROUP_IID= 
  {0x3de0a31c, 0xfeaf, 0x400f, 
    [ 0x9f, 0x1e, 0x4e, 0xf7, 0x1f, 0x8b, 0x20, 0xcc ]};

extern(Windows)
interface nsILoadGroup : nsIRequest {
  static const char[] IID_STR = NS_ILOADGROUP_IID_STR;
  static const nsIID IID = NS_ILOADGROUP_IID;

  /**
 * A load group maintains a collection of nsIRequest objects. 
 *
 * @status FROZEN
 */
/**
     * The group observer is notified when requests are added to and removed
     * from this load group.  The groupObserver is weak referenced.
     */
  /* attribute nsIRequestObserver groupObserver; */
  nsresult GetGroupObserver(nsIRequestObserver  *aGroupObserver);
  nsresult SetGroupObserver(nsIRequestObserver  aGroupObserver);

  /**
     * Accesses the default load request for the group.  Each time a number
     * of requests are added to a group, the defaultLoadRequest may be set
     * to indicate that all of the requests are related to a base request.
     *
     * The load group inherits its load flags from the default load request.
     * If the default load request is NULL, then the group's load flags are
     * not changed.
     */
  /* attribute nsIRequest defaultLoadRequest; */
  nsresult GetDefaultLoadRequest(nsIRequest  *aDefaultLoadRequest);
  nsresult SetDefaultLoadRequest(nsIRequest  aDefaultLoadRequest);

  /**
     * Adds a new request to the group.  This will cause the default load
     * flags to be applied to the request.  If this is a foreground
     * request then the groupObserver's onStartRequest will be called.
     *
     * If the request is the default load request or if the default load
     * request is null, then the load group will inherit its load flags from
     * the request.
     */
  /* void addRequest (in nsIRequest aRequest, in nsISupports aContext); */
  nsresult AddRequest(nsIRequest aRequest, nsISupports aContext);

  /**
     * Removes a request from the group.  If this is a foreground request
     * then the groupObserver's onStopRequest will be called.
     */
  /* void removeRequest (in nsIRequest aRequest, in nsISupports aContext, in nsresult aStatus); */
  nsresult RemoveRequest(nsIRequest aRequest, nsISupports aContext, nsresult aStatus);

  /**
     * Returns the requests contained directly in this group.
     * Enumerator element type: nsIRequest.
     */
  /* readonly attribute nsISimpleEnumerator requests; */
  nsresult GetRequests(nsISimpleEnumerator  *aRequests);

  /**
     * Returns the count of "active" requests (ie. requests without the
     * LOAD_BACKGROUND bit set).
     */
  /* readonly attribute unsigned long activeCount; */
  nsresult GetActiveCount(PRUint32 *aActiveCount);

  /**
     * Notification callbacks for the load group.
     */
  /* attribute nsIInterfaceRequestor notificationCallbacks; */
  nsresult GetNotificationCallbacks(nsIInterfaceRequestor  *aNotificationCallbacks);
  nsresult SetNotificationCallbacks(nsIInterfaceRequestor  aNotificationCallbacks);

}

