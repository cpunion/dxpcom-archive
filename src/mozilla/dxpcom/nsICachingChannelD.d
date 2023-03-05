/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICachingChannel.idl
 */

module mozilla.dxpcom.nsICachingChannelD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICachingChannel;


public import mozilla.dxpcom.nsICachingChannelD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;


/* starting wrapper class:    nsICachingChannel */
/**
 * A channel may optionally implement this interface to allow clients
 * to affect its behavior with respect to how it uses the cache service.
 *
 * This interface provides:
 *   1) Support for "stream as file" semantics (for JAR and plugins).
 *   2) Support for "pinning" cached data in the cache (for printing and save-as).
 *   3) Support for uniquely identifying cached data in cases when the URL
 *      is insufficient (e.g., HTTP form submission).
 */
class nsICachingChannelD : public nsISupportsD {

  static const nsIID IID = NS_ICACHINGCHANNEL_IID;


  alias nsICachingChannel InnerType;

  this(nsICachingChannel intr){
    super(intr);
    this.inner = intr;
  }

  nsICachingChannel opCast() {
    return inner;
  }

  void opAssign(nsICachingChannel value) {
    inner = value;
  }

  /**
     * Set/get the cache token... uniquely identifies the data in the cache.
     * Holding a reference to this token prevents the cached data from being
     * removed.
     * 
     * A cache token retrieved from a particular instance of nsICachingChannel
     * could be set on another instance of nsICachingChannel provided the
     * underlying implementations are compatible.  The implementation of
     * nsICachingChannel would be expected to only read from the cache entry
     * identified by the cache token and not try to validate it.
     *
     * The cache token can be QI'd to a nsICacheEntryInfo if more detail
     * about the cache entry is needed (e.g., expiration time).
     */
  /* attribute nsISupports cacheToken; */
  nsISupportsD  CacheToken(){
    nsISupports value;
    nsresult __result = inner.GetCacheToken(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }
  void CacheToken(nsISupportsD  aCacheToken){
    nsISupports value;
    nsresult __result = inner.SetCacheToken(value);
    CheckException(__result);
  }

  /**
     * Set/get the cache key... uniquely identifies the data in the cache
     * for this channel.  Holding a reference to this key does NOT prevent
     * the cached data from being removed.
     * 
     * A cache key retrieved from a particular instance of nsICachingChannel
     * could be set on another instance of nsICachingChannel provided the
     * underlying implementations are compatible and provided the new 
     * channel instance was created with the same URI.  The implementation of
     * nsICachingChannel would be expected to use the cache entry identified
     * by the cache token.  Depending on the value of nsIRequest::loadFlags,
     * the cache entry may be validated, overwritten, or simply read.
     *
     * The cache key may be NULL indicating that the URI of the channel is
     * sufficient to locate the same cache entry.  Setting a NULL cache key
     * is likewise valid.
     */
  /* attribute nsISupports cacheKey; */
  nsISupportsD  CacheKey(){
    nsISupports value;
    nsresult __result = inner.GetCacheKey(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }
  void CacheKey(nsISupportsD  aCacheKey){
    nsISupports value;
    nsresult __result = inner.SetCacheKey(value);
    CheckException(__result);
  }

  /**
     * Specifies whether or not the data should be cached to a file.  This
     * may fail if the disk cache is not present.  The value of this attribute
     * is usually only settable during the processing of a channel's
     * OnStartRequest.  The default value of this attribute depends on the
     * particular implementation of nsICachingChannel.
     */
  /* attribute boolean cacheAsFile; */
  PRBool CacheAsFile(){
    PRBool value;
    nsresult __result = inner.GetCacheAsFile(&value);
    CheckException(__result);
    return value;
  }
  void CacheAsFile(PRBool aCacheAsFile){
    nsresult __result = inner.SetCacheAsFile(aCacheAsFile);
    CheckException(__result);
  }

  /**
     * Get the "file" where the cached data can be found.  This is valid for
     * as long as a reference to the cache token is held.  This may return
     * an error if cacheAsFile is false.
     */
  /* readonly attribute nsIFile cacheFile; */
  nsIFileD  CacheFile(){
    nsIFile value;
    nsresult __result = inner.GetCacheFile(&value);
    CheckException(__result);
    return new nsIFileD(value);
  }

  /**
     * TRUE if this channel's data is being loaded from the cache.  This value
     * is undefined before the channel fires its OnStartRequest notification
     * and after the channel fires its OnStopRequest notification.
     */
  /* boolean isFromCache (); */
  PRBool IsFromCache(){
    PRBool _retval;
    nsresult __result = inner.IsFromCache(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**************************************************************************
     * Caching channel specific load flags:
     */
/**
     * This load flag causes the local cache to be skipped when fetching a
     * request.  Unlike LOAD_BYPASS_CACHE, it does not force an end-to-end load
     * (i.e., it does not affect proxy caches).
     */
  enum { LOAD_BYPASS_LOCAL_CACHE = 268435456U }

  /**
     * This load flag causes the local cache to be skipped if the request
     * would otherwise block waiting to access the cache.
     */
  enum { LOAD_BYPASS_LOCAL_CACHE_IF_BUSY = 536870912U }

  /**
     * This load flag inhibits fetching from the net if the data in the cache
     * has been evicted.  An error of NS_ERROR_DOCUMENT_NOT_CACHED will be sent
     * to the listener's onStopRequest in this case.
     */
  enum { LOAD_ONLY_FROM_CACHE = 1073741824U }

  /**
     * This load flag controls what happens when a document would be loaded
     * from the cache to satisfy a call to AsyncOpen.  If this attribute is
     * set to TRUE, then the document will not be loaded from the cache.  A
     * stream listener can check nsICachingChannel::isFromCache to determine
     * if the AsyncOpen will actually result in data being streamed.
     *
     * If this flag has been set, and the request can be satisfied via the
     * cache, then the OnDataAvailable events will be skipped.  The listener
     * will only see OnStartRequest followed by OnStopRequest.
     */
  enum { LOAD_ONLY_IF_MODIFIED = 2147483648U }

private:
  nsICachingChannel inner;

}

