/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIHttpActivityObserver.idl
 */

module mozilla.dxpcom.nsIHttpActivityObserverD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIHttpActivityObserver;


public import mozilla.dxpcom.nsIHttpActivityObserverD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIHttpActivityObserver */
/**
 * nsIHttpActivityObserver
 *
 * This interface provides a way for http activities to be reported
 * to observers.
 */
class nsIHttpActivityObserverD : public nsISupportsD {

  static const nsIID IID = NS_IHTTPACTIVITYOBSERVER_IID;


  alias nsIHttpActivityObserver InnerType;

  this(nsIHttpActivityObserver intr){
    super(intr);
    this.inner = intr;
  }

  nsIHttpActivityObserver opCast() {
    return inner;
  }

  void opAssign(nsIHttpActivityObserver value) {
    inner = value;
  }

  /**
     * observe activity from the http transport
     *
     * @param aHttpChannel
     *        nsISupports interface for the the http channel that
     *        generated this activity
     * @param aActivityType
     *        The value of this aActivityType will be one of
     *          ACTIVITY_TYPE_SOCKET_TRANSPORT or
     *          ACTIVITY_TYPE_HTTP_TRANSACTION
     * @param aActivitySubtype
     *        The value of this aActivitySubtype, will be depend
     *        on the value of aActivityType. When aActivityType
     *        is ACTIVITY_TYPE_SOCKET_TRANSPORT
     *          aActivitySubtype will be one of the
     *          nsISocketTransport::STATUS_???? values defined in
     *          nsISocketTransport.idl
     *        OR when aActivityType
     *        is ACTIVITY_TYPE_HTTP_TRANSACTION
     *          aActivitySubtype will be one of the
     *          nsIHttpActivityObserver::ACTIVITY_SUBTYPE_???? values
     *          defined below
     * @param aTimestamp
     *        microseconds past the epoch of Jan 1, 1970
     * @param aExtraSizeData
     *        Any extra size data optionally available with
     *        this activity
     * @param aExtraStringData
     *        Any extra string data optionally available with
     *        this activity
     */
  /* void observeActivity (in nsISupports aHttpChannel, in PRUint32 aActivityType, in PRUint32 aActivitySubtype, in PRTime aTimestamp, in PRUint64 aExtraSizeData, in ACString aExtraStringData); */
  void ObserveActivity(nsISupportsD aHttpChannel, PRUint32 aActivityType, PRUint32 aActivitySubtype, PRTime aTimestamp, PRUint64 aExtraSizeData, char[] aExtraStringData){
    scope auto _aExtraStringData = new ACString(aExtraStringData);
    nsresult __result = inner.ObserveActivity(aHttpChannel ? cast(nsISupports)aHttpChannel : null, aActivityType, aActivitySubtype, aTimestamp, aExtraSizeData, cast(nsACString*)_aExtraStringData);
    CheckException(__result);
  }

  /**
     * This attribute is true when this interface is active and should
     * observe http activities. When false, observeActivity() should not
     * be called.
     */
  /* readonly attribute boolean isActive; */
  PRBool IsActive(){
    PRBool value;
    nsresult __result = inner.GetIsActive(&value);
    CheckException(__result);
    return value;
  }

  enum { ACTIVITY_TYPE_SOCKET_TRANSPORT = 1U }

  enum { ACTIVITY_TYPE_HTTP_TRANSACTION = 2U }

  enum { ACTIVITY_SUBTYPE_REQUEST_HEADER = 20481U }

  enum { ACTIVITY_SUBTYPE_REQUEST_BODY_SENT = 20482U }

  enum { ACTIVITY_SUBTYPE_RESPONSE_START = 20483U }

  enum { ACTIVITY_SUBTYPE_RESPONSE_HEADER = 20484U }

  enum { ACTIVITY_SUBTYPE_RESPONSE_COMPLETE = 20485U }

  enum { ACTIVITY_SUBTYPE_TRANSACTION_CLOSE = 20486U }

private:
  nsIHttpActivityObserver inner;

}

