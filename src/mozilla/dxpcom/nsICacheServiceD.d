/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICacheService.idl
 */

module mozilla.dxpcom.nsICacheServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICacheService;


public import mozilla.dxpcom.nsICacheServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsICache;
public import mozilla.dxpcom.nsICacheD;

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;

public import mozilla.xpcom.nsICacheListener;

public import mozilla.dxpcom.nsICacheListenerD;

public import mozilla.xpcom.nsICacheSession;

public import mozilla.dxpcom.nsICacheSessionD;

public import mozilla.xpcom.nsICacheVisitor;

public import mozilla.dxpcom.nsICacheVisitorD;


/* starting wrapper class:    nsICacheService */
class nsICacheServiceD : public nsISupportsD {

  static const nsIID IID = NS_ICACHESERVICE_IID;


  alias nsICacheService InnerType;

  this(nsICacheService intr){
    super(intr);
    this.inner = intr;
  }

  nsICacheService opCast() {
    return inner;
  }

  void opAssign(nsICacheService value) {
    inner = value;
  }

  /**
     * Create a cache session
     *
     * A cache session represents a client's access into the cache.  The cache
     * session is not "owned" by the cache service.  Hence, it is possible to
     * create duplicate cache sessions.  Entries created by a cache session
     * are invisible to other cache sessions, unless the cache sessions are
     * equivalent.
     *
     * @param clientID - Specifies the name of the client using the cache.
     * @param storagePolicy - Limits the storage policy for all entries
     *   accessed via the returned session.  As a result, devices excluded
     *   by the storage policy will not be searched when opening entries
     *   from the returned session.
     * @param streamBased - Indicates whether or not the data being cached
     *   can be represented as a stream.  The storagePolicy must be 
     *   consistent with the value of this field.  For example, a non-stream-
     *   based cache entry can only have a storage policy of STORE_IN_MEMORY.
     * @return new cache session.
     */
  /* nsICacheSession createSession (in string clientID, in nsCacheStoragePolicy storagePolicy, in boolean streamBased); */
  nsICacheSessionD  CreateSession(char*clientID, nsCacheStoragePolicy storagePolicy, PRBool streamBased){
    nsICacheSession _retval;
    nsresult __result = inner.CreateSession(clientID, storagePolicy, streamBased, &_retval);
    CheckException(__result);
    return new nsICacheSessionD(_retval);
  }

  /**
     * Visit entries stored in the cache.  Used to implement about:cache.
     */
  /* void visitEntries (in nsICacheVisitor visitor); */
  void VisitEntries(nsICacheVisitorD visitor){
    nsresult __result = inner.VisitEntries(visitor ? cast(nsICacheVisitor)visitor : null);
    CheckException(__result);
  }

  /**
     * Evicts all entries in all devices implied by the storage policy.
     */
  /* void evictEntries (in nsCacheStoragePolicy storagePolicy); */
  void EvictEntries(nsCacheStoragePolicy storagePolicy){
    nsresult __result = inner.EvictEntries(storagePolicy);
    CheckException(__result);
  }

private:
  nsICacheService inner;

}

