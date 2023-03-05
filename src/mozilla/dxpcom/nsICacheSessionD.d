/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICacheSession.idl
 */

module mozilla.dxpcom.nsICacheSessionD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICacheSession;


public import mozilla.dxpcom.nsICacheSessionD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsICache;
public import mozilla.dxpcom.nsICacheD;

public import mozilla.xpcom.nsICacheEntryDescriptor;

public import mozilla.dxpcom.nsICacheEntryDescriptorD;

public import mozilla.xpcom.nsICacheListener;

public import mozilla.dxpcom.nsICacheListenerD;


/* starting wrapper class:    nsICacheSession */
class nsICacheSessionD : public nsISupportsD {

  static const nsIID IID = NS_ICACHESESSION_IID;


  alias nsICacheSession InnerType;

  this(nsICacheSession intr){
    super(intr);
    this.inner = intr;
  }

  nsICacheSession opCast() {
    return inner;
  }

  void opAssign(nsICacheSession value) {
    inner = value;
  }

  /**
     * Expired entries will be doomed or evicted if this attribute is set to
     * true.  If false, expired entries will be returned (useful for offline-
     * mode and clients, such as HTTP, that can update the valid lifetime of
     * cached content).  This attribute defaults to true.
     */
  /* attribute PRBool doomEntriesIfExpired; */
  PRBool DoomEntriesIfExpired(){
    PRBool value;
    nsresult __result = inner.GetDoomEntriesIfExpired(&value);
    CheckException(__result);
    return value;
  }
  void DoomEntriesIfExpired(PRBool aDoomEntriesIfExpired){
    PRBool value;
    nsresult __result = inner.SetDoomEntriesIfExpired(value);
    CheckException(__result);
  }

  /**
     * A cache session can only give out one descriptor with WRITE access
     * to a given cache entry at a time.  Until the client calls MarkValid on
     * its descriptor, other attempts to open the same cache entry will block.
     */
/**
     * Synchronous cache access.  This returns a unique descriptor each
     * time it is called, even if the same key is specified.  When
     * called by multiple threads for write access, only one writable
     * descriptor will be granted.  If 'blockingMode' is set to false, it will
     * return NS_ERROR_CACHE_WAIT_FOR_VALIDATION rather than block when another
     * descriptor has been given WRITE access but hasn't validated the entry yet.
     */
  /* nsICacheEntryDescriptor openCacheEntry (in ACString key, in nsCacheAccessMode accessRequested, in boolean blockingMode); */
  nsICacheEntryDescriptorD  OpenCacheEntry(char[] key, nsCacheAccessMode accessRequested, PRBool blockingMode){
    scope auto _key = new ACString(key);
    nsICacheEntryDescriptor _retval;
    nsresult __result = inner.OpenCacheEntry(cast(nsACString*)_key, accessRequested, blockingMode, &_retval);
    CheckException(__result);
    return new nsICacheEntryDescriptorD(_retval);
  }

  /**
     * Asynchronous cache access. Does not block the calling thread.
     * Instead, the listener will be notified when the descriptor is
     * available.
     */
  /* void asyncOpenCacheEntry (in ACString key, in nsCacheAccessMode accessRequested, in nsICacheListener listener); */
  void AsyncOpenCacheEntry(char[] key, nsCacheAccessMode accessRequested, nsICacheListenerD listener){
    scope auto _key = new ACString(key);
    nsresult __result = inner.AsyncOpenCacheEntry(cast(nsACString*)_key, accessRequested, listener ? cast(nsICacheListener)listener : null);
    CheckException(__result);
  }

  /**
     * Evict all entries for this session's clientID according to its storagePolicy.
     */
  /* void evictEntries (); */
  void EvictEntries(){
    nsresult __result = inner.EvictEntries();
    CheckException(__result);
  }

  /**
     * Return whether any of the cache devices implied by the session storage policy
     * are currently enabled for instantiation if they don't already exist.
     */
  /* PRBool isStorageEnabled (); */
  PRBool IsStorageEnabled(){
    PRBool _retval;
    nsresult __result = inner.IsStorageEnabled(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsICacheSession inner;

}

