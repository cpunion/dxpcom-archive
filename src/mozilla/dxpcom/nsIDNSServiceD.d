/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDNSService.idl
 */

module mozilla.dxpcom.nsIDNSServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDNSService;


public import mozilla.dxpcom.nsIDNSServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsICancelable;

public import mozilla.dxpcom.nsICancelableD;

public import mozilla.xpcom.nsIEventTarget;

public import mozilla.dxpcom.nsIEventTargetD;

public import mozilla.xpcom.nsIDNSRecord;

public import mozilla.dxpcom.nsIDNSRecordD;

public import mozilla.xpcom.nsIDNSListener;

public import mozilla.dxpcom.nsIDNSListenerD;


/* starting wrapper class:    nsIDNSService */
/**
 * nsIDNSService
 */
class nsIDNSServiceD : public nsISupportsD {

  static const nsIID IID = NS_IDNSSERVICE_IID;


  alias nsIDNSService InnerType;

  this(nsIDNSService intr){
    super(intr);
    this.inner = intr;
  }

  nsIDNSService opCast() {
    return inner;
  }

  void opAssign(nsIDNSService value) {
    inner = value;
  }

  /**
     * kicks off an asynchronous host lookup.
     *
     * @param aHostName
     *        the hostname or IP-address-literal to resolve.
     * @param aFlags
     *        a bitwise OR of the RESOLVE_ prefixed constants defined below.
     * @param aListener
     *        the listener to be notified when the result is available.
     * @param aListenerEventTarget
     *        optional parameter (may be null).  if non-null, this parameter
     *        specifies the nsIEventTarget of the thread on which the listener's
     *        onLookupComplete should be called.  however, if this parameter is
     *        null, then onLookupComplete will be called on an unspecified
     *        thread (possibly recursively).
     *
     * @return An object that can be used to cancel the host lookup.
     */
  /* nsICancelable asyncResolve (in AUTF8String aHostName, in unsigned long aFlags, in nsIDNSListener aListener, in nsIEventTarget aListenerEventTarget); */
  nsICancelableD  AsyncResolve(char[] aHostName, PRUint32 aFlags, nsIDNSListenerD aListener, nsIEventTargetD aListenerEventTarget){
    scope auto _aHostName = new ACString(aHostName);
    nsICancelable _retval;
    nsresult __result = inner.AsyncResolve(cast(nsACString*)_aHostName, aFlags, aListener ? cast(nsIDNSListener)aListener : null, aListenerEventTarget ? cast(nsIEventTarget)aListenerEventTarget : null, &_retval);
    CheckException(__result);
    return new nsICancelableD(_retval);
  }

  /**
     * called to synchronously resolve a hostname.  warning this method may
     * block the calling thread for a long period of time.  it is extremely
     * unwise to call this function on the UI thread of an application.
     *
     * @param aHostName
     *        the hostname or IP-address-literal to resolve.
     * @param aFlags
     *        a bitwise OR of the RESOLVE_ prefixed constants defined below.
     *
     * @return DNS record corresponding to the given hostname.
     * @throws NS_ERROR_UNKNOWN_HOST if host could not be resolved.
     */
  /* nsIDNSRecord resolve (in AUTF8String aHostName, in unsigned long aFlags); */
  nsIDNSRecordD  Resolve(char[] aHostName, PRUint32 aFlags){
    scope auto _aHostName = new ACString(aHostName);
    nsIDNSRecord _retval;
    nsresult __result = inner.Resolve(cast(nsACString*)_aHostName, aFlags, &_retval);
    CheckException(__result);
    return new nsIDNSRecordD(_retval);
  }

  /**
     * @return the hostname of the operating system.
     */
  /* readonly attribute AUTF8String myHostName; */
  char[] MyHostName(){
    scope auto value = new ACString();
    nsresult __result = inner.GetMyHostName(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /*************************************************************************
     * Listed below are the various flags that may be OR'd together to form
     * the aFlags parameter passed to asyncResolve() and resolve().
     */
/**
     * if set, this flag suppresses the internal DNS lookup cache.
     */
  enum { RESOLVE_BYPASS_CACHE = 1U }

  /**
     * if set, the canonical name of the specified host will be queried.
     */
  enum { RESOLVE_CANONICAL_NAME = 2U }

private:
  nsIDNSService inner;

}

