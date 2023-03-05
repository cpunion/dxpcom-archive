/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIHttpActivityObserver.idl
 */

module mozilla.xpcom.nsIHttpActivityObserver;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIHttpActivityObserver */
const char[] NS_IHTTPACTIVITYOBSERVER_IID_STR = "412880c8-6c36-48d8-bf8f-84f91f892503";

const nsIID NS_IHTTPACTIVITYOBSERVER_IID= 
  {0x412880c8, 0x6c36, 0x48d8, 
    [ 0xbf, 0x8f, 0x84, 0xf9, 0x1f, 0x89, 0x25, 0x03 ]};

/**
 * nsIHttpActivityObserver
 *
 * This interface provides a way for http activities to be reported
 * to observers.
 */
extern(Windows)
interface nsIHttpActivityObserver : nsISupports {
  static const char[] IID_STR = NS_IHTTPACTIVITYOBSERVER_IID_STR;
  static const nsIID IID = NS_IHTTPACTIVITYOBSERVER_IID;

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
  nsresult ObserveActivity(nsISupports aHttpChannel, PRUint32 aActivityType, PRUint32 aActivitySubtype, PRTime aTimestamp, PRUint64 aExtraSizeData, nsACString * aExtraStringData);

  /**
     * This attribute is true when this interface is active and should
     * observe http activities. When false, observeActivity() should not
     * be called.
     */
  /* readonly attribute boolean isActive; */
  nsresult GetIsActive(PRBool *aIsActive);

  enum { ACTIVITY_TYPE_SOCKET_TRANSPORT = 1U };

  enum { ACTIVITY_TYPE_HTTP_TRANSACTION = 2U };

  enum { ACTIVITY_SUBTYPE_REQUEST_HEADER = 20481U };

  enum { ACTIVITY_SUBTYPE_REQUEST_BODY_SENT = 20482U };

  enum { ACTIVITY_SUBTYPE_RESPONSE_START = 20483U };

  enum { ACTIVITY_SUBTYPE_RESPONSE_HEADER = 20484U };

  enum { ACTIVITY_SUBTYPE_RESPONSE_COMPLETE = 20485U };

  enum { ACTIVITY_SUBTYPE_TRANSACTION_CLOSE = 20486U };

}

