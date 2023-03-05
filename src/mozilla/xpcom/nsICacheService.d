/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICacheService.idl
 */

module mozilla.xpcom.nsICacheService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsICache;

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */

public import mozilla.xpcom.nsICacheListener; /* forward declaration */

public import mozilla.xpcom.nsICacheSession; /* forward declaration */

public import mozilla.xpcom.nsICacheVisitor; /* forward declaration */


/* starting interface:    nsICacheService */
const char[] NS_ICACHESERVICE_IID_STR = "de114eb4-29fc-4959-b2f7-2d03eb9bc771";

const nsIID NS_ICACHESERVICE_IID= 
  {0xde114eb4, 0x29fc, 0x4959, 
    [ 0xb2, 0xf7, 0x2d, 0x03, 0xeb, 0x9b, 0xc7, 0x71 ]};

extern(Windows)
interface nsICacheService : nsISupports {
  static const char[] IID_STR = NS_ICACHESERVICE_IID_STR;
  static const nsIID IID = NS_ICACHESERVICE_IID;

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
  nsresult CreateSession(char *clientID, nsCacheStoragePolicy storagePolicy, PRBool streamBased, nsICacheSession *_retval);

  /**
     * Visit entries stored in the cache.  Used to implement about:cache.
     */
  /* void visitEntries (in nsICacheVisitor visitor); */
  nsresult VisitEntries(nsICacheVisitor visitor);

  /**
     * Evicts all entries in all devices implied by the storage policy.
     */
  /* void evictEntries (in nsCacheStoragePolicy storagePolicy); */
  nsresult EvictEntries(nsCacheStoragePolicy storagePolicy);

}

