/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILoadGroup.idl
 */

module mozilla.dxpcom.nsILoadGroupD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsILoadGroup;


public import mozilla.dxpcom.nsILoadGroupD;

public import mozilla.xpcom.nsIRequest;
public import mozilla.dxpcom.nsIRequestD;

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;

public import mozilla.xpcom.nsIRequestObserver;

public import mozilla.dxpcom.nsIRequestObserverD;

public import mozilla.xpcom.nsIInterfaceRequestor;

public import mozilla.dxpcom.nsIInterfaceRequestorD;


/* starting wrapper class:    nsILoadGroup */
class nsILoadGroupD : public nsIRequestD {

  static const nsIID IID = NS_ILOADGROUP_IID;


  alias nsILoadGroup InnerType;

  this(nsILoadGroup intr){
    super(intr);
    this.inner = intr;
  }

  nsILoadGroup opCast() {
    return inner;
  }

  void opAssign(nsILoadGroup value) {
    inner = value;
  }

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
  nsIRequestObserverD  GroupObserver(){
    nsIRequestObserver value;
    nsresult __result = inner.GetGroupObserver(&value);
    CheckException(__result);
    return new nsIRequestObserverD(value);
  }
  void GroupObserver(nsIRequestObserverD  aGroupObserver){
    nsIRequestObserver value;
    nsresult __result = inner.SetGroupObserver(value);
    CheckException(__result);
  }

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
  nsIRequestD  DefaultLoadRequest(){
    nsIRequest value;
    nsresult __result = inner.GetDefaultLoadRequest(&value);
    CheckException(__result);
    return new nsIRequestD(value);
  }
  void DefaultLoadRequest(nsIRequestD  aDefaultLoadRequest){
    nsIRequest value;
    nsresult __result = inner.SetDefaultLoadRequest(value);
    CheckException(__result);
  }

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
  void AddRequest(nsIRequestD aRequest, nsISupportsD aContext){
    nsresult __result = inner.AddRequest(aRequest ? cast(nsIRequest)aRequest : null, aContext ? cast(nsISupports)aContext : null);
    CheckException(__result);
  }

  /**
     * Removes a request from the group.  If this is a foreground request
     * then the groupObserver's onStopRequest will be called.
     */
  /* void removeRequest (in nsIRequest aRequest, in nsISupports aContext, in nsresult aStatus); */
  void RemoveRequest(nsIRequestD aRequest, nsISupportsD aContext, nsresult aStatus){
    nsresult __result = inner.RemoveRequest(aRequest ? cast(nsIRequest)aRequest : null, aContext ? cast(nsISupports)aContext : null, aStatus);
    CheckException(__result);
  }

  /**
     * Returns the requests contained directly in this group.
     * Enumerator element type: nsIRequest.
     */
  /* readonly attribute nsISimpleEnumerator requests; */
  nsISimpleEnumeratorD  Requests(){
    nsISimpleEnumerator value;
    nsresult __result = inner.GetRequests(&value);
    CheckException(__result);
    return new nsISimpleEnumeratorD(value);
  }

  /**
     * Returns the count of "active" requests (ie. requests without the
     * LOAD_BACKGROUND bit set).
     */
  /* readonly attribute unsigned long activeCount; */
  PRUint32 ActiveCount(){
    PRUint32 value;
    nsresult __result = inner.GetActiveCount(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Notification callbacks for the load group.
     */
  /* attribute nsIInterfaceRequestor notificationCallbacks; */
  nsIInterfaceRequestorD  NotificationCallbacks(){
    nsIInterfaceRequestor value;
    nsresult __result = inner.GetNotificationCallbacks(&value);
    CheckException(__result);
    return new nsIInterfaceRequestorD(value);
  }
  void NotificationCallbacks(nsIInterfaceRequestorD  aNotificationCallbacks){
    nsIInterfaceRequestor value;
    nsresult __result = inner.SetNotificationCallbacks(value);
    CheckException(__result);
  }

private:
  nsILoadGroup inner;

}

