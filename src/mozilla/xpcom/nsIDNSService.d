/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDNSService.idl
 */

module mozilla.xpcom.nsIDNSService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsICancelable; /* forward declaration */

public import mozilla.xpcom.nsIEventTarget; /* forward declaration */

public import mozilla.xpcom.nsIDNSRecord; /* forward declaration */

public import mozilla.xpcom.nsIDNSListener; /* forward declaration */


/* starting interface:    nsIDNSService */
const char[] NS_IDNSSERVICE_IID_STR = "5c8ec09d-bfbf-4eaf-8a36-0d84b5c8f35b";

const nsIID NS_IDNSSERVICE_IID= 
  {0x5c8ec09d, 0xbfbf, 0x4eaf, 
    [ 0x8a, 0x36, 0x0d, 0x84, 0xb5, 0xc8, 0xf3, 0x5b ]};

/**
 * nsIDNSService
 */
extern(Windows)
interface nsIDNSService : nsISupports {
  static const char[] IID_STR = NS_IDNSSERVICE_IID_STR;
  static const nsIID IID = NS_IDNSSERVICE_IID;

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
  nsresult AsyncResolve(nsACString * aHostName, PRUint32 aFlags, nsIDNSListener aListener, nsIEventTarget aListenerEventTarget, nsICancelable *_retval);

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
  nsresult Resolve(nsACString * aHostName, PRUint32 aFlags, nsIDNSRecord *_retval);

  /**
     * @return the hostname of the operating system.
     */
  /* readonly attribute AUTF8String myHostName; */
  nsresult GetMyHostName(nsACString * aMyHostName);

  /*************************************************************************
     * Listed below are the various flags that may be OR'd together to form
     * the aFlags parameter passed to asyncResolve() and resolve().
     */
/**
     * if set, this flag suppresses the internal DNS lookup cache.
     */
  enum { RESOLVE_BYPASS_CACHE = 1U };

  /**
     * if set, the canonical name of the specified host will be queried.
     */
  enum { RESOLVE_CANONICAL_NAME = 2U };

}

