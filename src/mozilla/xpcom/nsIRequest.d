/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRequest.idl
 */

module mozilla.xpcom.nsIRequest;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsILoadGroup; /* forward declaration */

alias PRUint32 nsLoadFlags;


/* starting interface:    nsIRequest */
const char[] NS_IREQUEST_IID_STR = "ef6bfbd2-fd46-48d8-96b7-9f8f0fd387fe";

const nsIID NS_IREQUEST_IID= 
  {0xef6bfbd2, 0xfd46, 0x48d8, 
    [ 0x96, 0xb7, 0x9f, 0x8f, 0x0f, 0xd3, 0x87, 0xfe ]};

/**
 * nsIRequest
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIRequest : nsISupports {
  static const char[] IID_STR = NS_IREQUEST_IID_STR;
  static const nsIID IID = NS_IREQUEST_IID;

  /**
     * The name of the request.  Often this is the URI of the request.
     */
  /* readonly attribute AUTF8String name; */
  nsresult GetName(nsACString * aName);

  /**
     * Indicates whether the request is pending. nsIRequest::isPending is
     * true when there is an outstanding asynchronous event that will make
     * the request no longer be pending.  Requests do not necessarily start
     * out pending; in some cases, requests have to be explicitly initiated
     * (e.g. nsIChannel implementations are only pending once asyncOpen
     * returns successfully).
     *
     * Requests can become pending multiple times during their lifetime.
     *
     * @return TRUE if the request has yet to reach completion.
     * @return FALSE if the request has reached completion (e.g., after
     *   OnStopRequest has fired).
     * @note Suspended requests are still considered pending.
     */
  /* boolean isPending (); */
  nsresult IsPending(PRBool *_retval);

  /**
     * The error status associated with the request.
     */
  /* readonly attribute nsresult status; */
  nsresult GetStatus(nsresult *aStatus);

  /**
     * Cancels the current request.  This will close any open input or
     * output streams and terminate any async requests.  Users should 
     * normally pass NS_BINDING_ABORTED, although other errors may also
     * be passed.  The error passed in will become the value of the 
     * status attribute.
     *
     * @param aStatus the reason for canceling this request.
     *
     * NOTE: most nsIRequest implementations expect aStatus to be a
     * failure code; however, some implementations may allow aStatus to
     * be a success code such as NS_OK.  In general, aStatus should be
     * a failure code.
     */
  /* void cancel (in nsresult aStatus); */
  nsresult Cancel(nsresult aStatus);

  /**
     * Suspends the current request.  This may have the effect of closing
     * any underlying transport (in order to free up resources), although
     * any open streams remain logically opened and will continue delivering
     * data when the transport is resumed. 
     *
     * NOTE: some implementations are unable to immediately suspend, and
     * may continue to deliver events already posted to an event queue. In
     * general, callers should be capable of handling events even after 
     * suspending a request.
     */
  /* void suspend (); */
  nsresult Suspend();

  /**
     * Resumes the current request.  This may have the effect of re-opening
     * any underlying transport and will resume the delivery of data to 
     * any open streams.
     */
  /* void resume (); */
  nsresult Resume();

  /**
     * The load group of this request.  While pending, the request is a 
     * member of the load group.  It is the responsibility of the request
     * to implement this policy.
     */
  /* attribute nsILoadGroup loadGroup; */
  nsresult GetLoadGroup(nsILoadGroup  *aLoadGroup);
  nsresult SetLoadGroup(nsILoadGroup  aLoadGroup);

  /**
     * The load flags of this request.  Bits 0-15 are reserved.
     *
     * When added to a load group, this request's load flags are merged with
     * the load flags of the load group.
     */
  /* attribute nsLoadFlags loadFlags; */
  nsresult GetLoadFlags(nsLoadFlags *aLoadFlags);
  nsresult SetLoadFlags(nsLoadFlags aLoadFlags);

  /**************************************************************************
     * Listed below are the various load flags which may be or'd together.
     */
/**
     * No special load flags:
     */
  enum { LOAD_NORMAL = 0U };

  /** 
     * Don't deliver status notifications to the nsIProgressEventSink, or keep 
     * this load from completing the nsILoadGroup it may belong to.
     */
  enum { LOAD_BACKGROUND = 1U };

  /**************************************************************************
     * The following flags control the flow of data into the cache.
     */
/**
     * This flag prevents caching of any kind.  It does not, however, prevent
     * cached content from being used to satisfy this request.
     */
  enum { INHIBIT_CACHING = 128U };

  /**
     * This flag prevents caching on disk (or other persistent media), which
     * may be needed to preserve privacy.  For HTTPS, this flag is set auto-
     * matically.
     */
  enum { INHIBIT_PERSISTENT_CACHING = 256U };

  /**************************************************************************
     * The following flags control what happens when the cache contains data
     * that could perhaps satisfy this request.  They are listed in descending
     * order of precidence.
     */
/**
     * Force an end-to-end download of content data from the origin server.
     * This flag is used for a shift-reload.
     */
  enum { LOAD_BYPASS_CACHE = 512U };

  /**
     * Load from the cache, bypassing protocol specific validation logic.  This
     * flag is used when browsing via history.  It is not recommended for normal
     * browsing as it may likely violate reasonable assumptions made by the 
     * server and confuse users.
     */
  enum { LOAD_FROM_CACHE = 1024U };

  /**
     * The following flags control the frequency of cached content validation
     * when neither LOAD_BYPASS_CACHE or LOAD_FROM_CACHE are set.  By default,
     * cached content is automatically validated if necessary before reuse.
     * 
     * VALIDATE_ALWAYS forces validation of any cached content independent of
     * its expiration time.
     * 
     * VALIDATE_NEVER disables validation of expired content.
     *
     * VALIDATE_ONCE_PER_SESSION disables validation of expired content, 
     * provided it has already been validated (at least once) since the start 
     * of this session.
     *
     * NOTE TO IMPLEMENTORS:
     *   These flags are intended for normal browsing, and they should therefore
     *   not apply to content that must be validated before each use.  Consider,
     *   for example, a HTTP response with a "Cache-control: no-cache" header.
     *   According to RFC2616, this response must be validated before it can
     *   be taken from a cache.  Breaking this requirement could result in 
     *   incorrect and potentially undesirable side-effects.
     */
  enum { VALIDATE_ALWAYS = 2048U };

  enum { VALIDATE_NEVER = 4096U };

  enum { VALIDATE_ONCE_PER_SESSION = 8192U };

}

