/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICacheSession.idl
 */

module mozilla.xpcom.nsICacheSession;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsICache;

public import mozilla.xpcom.nsICacheEntryDescriptor; /* forward declaration */

public import mozilla.xpcom.nsICacheListener; /* forward declaration */


/* starting interface:    nsICacheSession */
const char[] NS_ICACHESESSION_IID_STR = "ae9e84b5-3e2d-457e-8fcd-5bbd2a8b832e";

const nsIID NS_ICACHESESSION_IID= 
  {0xae9e84b5, 0x3e2d, 0x457e, 
    [ 0x8f, 0xcd, 0x5b, 0xbd, 0x2a, 0x8b, 0x83, 0x2e ]};

extern(Windows)
interface nsICacheSession : nsISupports {
  static const char[] IID_STR = NS_ICACHESESSION_IID_STR;
  static const nsIID IID = NS_ICACHESESSION_IID;

  /**
     * Expired entries will be doomed or evicted if this attribute is set to
     * true.  If false, expired entries will be returned (useful for offline-
     * mode and clients, such as HTTP, that can update the valid lifetime of
     * cached content).  This attribute defaults to true.
     */
  /* attribute PRBool doomEntriesIfExpired; */
  nsresult GetDoomEntriesIfExpired(PRBool *aDoomEntriesIfExpired);
  nsresult SetDoomEntriesIfExpired(PRBool aDoomEntriesIfExpired);

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
  nsresult OpenCacheEntry(nsACString * key, nsCacheAccessMode accessRequested, PRBool blockingMode, nsICacheEntryDescriptor *_retval);

  /**
     * Asynchronous cache access. Does not block the calling thread.
     * Instead, the listener will be notified when the descriptor is
     * available.
     */
  /* void asyncOpenCacheEntry (in ACString key, in nsCacheAccessMode accessRequested, in nsICacheListener listener); */
  nsresult AsyncOpenCacheEntry(nsACString * key, nsCacheAccessMode accessRequested, nsICacheListener listener);

  /**
     * Evict all entries for this session's clientID according to its storagePolicy.
     */
  /* void evictEntries (); */
  nsresult EvictEntries();

  /**
     * Return whether any of the cache devices implied by the session storage policy
     * are currently enabled for instantiation if they don't already exist.
     */
  /* PRBool isStorageEnabled (); */
  nsresult IsStorageEnabled(PRBool *_retval);

}

