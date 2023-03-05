/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICacheEntryDescriptor.idl
 */

module mozilla.xpcom.nsICacheEntryDescriptor;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsICacheVisitor;
public import mozilla.xpcom.nsICache;

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */

public import mozilla.xpcom.nsICacheListener; /* forward declaration */

public import mozilla.xpcom.nsIInputStream; /* forward declaration */

public import mozilla.xpcom.nsIOutputStream; /* forward declaration */

public import mozilla.xpcom.nsIFile; /* forward declaration */


/* starting interface:    nsICacheEntryDescriptor */
const char[] NS_ICACHEENTRYDESCRIPTOR_IID_STR = "49c1a11d-f5d2-4f09-8262-551e64908ada";

const nsIID NS_ICACHEENTRYDESCRIPTOR_IID= 
  {0x49c1a11d, 0xf5d2, 0x4f09, 
    [ 0x82, 0x62, 0x55, 0x1e, 0x64, 0x90, 0x8a, 0xda ]};

extern(Windows)
interface nsICacheEntryDescriptor : nsICacheEntryInfo {
  static const char[] IID_STR = NS_ICACHEENTRYDESCRIPTOR_IID_STR;
  static const nsIID IID = NS_ICACHEENTRYDESCRIPTOR_IID;

  /**
     * Set the time at which the cache entry should be considered invalid (in
     * seconds since the Epoch).
     */
  /* void setExpirationTime (in PRUint32 expirationTime); */
  nsresult SetExpirationTime(PRUint32 expirationTime);

  /**
     * Set the cache entry data size.  This will fail if the cache entry
     * IS stream based.
     */
  /* void setDataSize (in unsigned long size); */
  nsresult SetDataSize(PRUint32 size);

  /**
     * Open blocking input stream to cache data.  This will fail if the cache
     * entry IS NOT stream based.  Use the stream transport service to
     * asynchronously read this stream on a background thread.  The returned
     * stream MAY implement nsISeekableStream.
     *
     * @param offset
     *        read starting from this offset into the cached data.  an offset
     *        beyond the end of the stream has undefined consequences.
     *
     * @return blocking, unbuffered input stream.
     */
  /* nsIInputStream openInputStream (in unsigned long offset); */
  nsresult OpenInputStream(PRUint32 offset, nsIInputStream *_retval);

  /**
     * Open blocking output stream to cache data.  This will fail if the cache
     * entry IS NOT stream based.  Use the stream transport service to
     * asynchronously write to this stream on a background thread.  The returned
     * stream MAY implement nsISeekableStream.
     *
     * If opening an output stream to existing cached data, the data will be
     * truncated to the specified offset.
     *
     * @param offset
     *        write starting from this offset into the cached data.  an offset
     *        beyond the end of the stream has undefined consequences.
     *
     * @return blocking, unbuffered output stream.
     */
  /* nsIOutputStream openOutputStream (in unsigned long offset); */
  nsresult OpenOutputStream(PRUint32 offset, nsIOutputStream *_retval);

  /**
     * Get/set the cache data element.  This will fail if the cache entry
     * IS stream based.  The cache entry holds a strong reference to this
     * object.  The object will be released when the cache entry is destroyed.
     */
  /* attribute nsISupports cacheElement; */
  nsresult GetCacheElement(nsISupports  *aCacheElement);
  nsresult SetCacheElement(nsISupports  aCacheElement);

  /**
     * Get the access granted to this descriptor.  See nsICache.idl for the
     * definitions of the access modes and a thorough description of their
     * corresponding meanings.
     */
  /* readonly attribute nsCacheAccessMode accessGranted; */
  nsresult GetAccessGranted(nsCacheAccessMode *aAccessGranted);

  /**
     * Get/set the storage policy of the cache entry.  See nsICache.idl for
     * the definitions of the storage policies.
     */
  /* attribute nsCacheStoragePolicy storagePolicy; */
  nsresult GetStoragePolicy(nsCacheStoragePolicy *aStoragePolicy);
  nsresult SetStoragePolicy(nsCacheStoragePolicy aStoragePolicy);

  /**
     * Get the disk file associated with the cache entry.
     */
  /* readonly attribute nsIFile file; */
  nsresult GetFile(nsIFile  *aFile);

  /**
     * Get/set security info on the cache entry for this descriptor.  This fails
     * if the storage policy is not STORE_IN_MEMORY.
     */
  /* attribute nsISupports securityInfo; */
  nsresult GetSecurityInfo(nsISupports  *aSecurityInfo);
  nsresult SetSecurityInfo(nsISupports  aSecurityInfo);

  /**
     * Doom the cache entry this descriptor references in order to slate it for 
     * removal.  Once doomed a cache entry cannot be undoomed.
     *
     * A descriptor with WRITE access can doom the cache entry and choose to
     * fail pending requests.  This means that pending requests will not get
     * a cache descriptor.  This is meant as a tool for clients that wish to
     * instruct pending requests to skip the cache.
     */
  /* void doom (); */
  nsresult Doom();

  /* void doomAndFailPendingRequests (in nsresult status); */
  nsresult DoomAndFailPendingRequests(nsresult status);

  /**
     * A writer must validate this cache object before any readers are given
     * a descriptor to the object.
     */
  /* void markValid (); */
  nsresult MarkValid();

  /**
     *  Explicitly close the descriptor (optional).
     */
  /* void close (); */
  nsresult Close();

  /**
     * Methods for accessing meta data.  Meta data is a table of key/value
     * string pairs.  The strings do not have to conform to any particular
     * charset, but they must be null terminated.
     */
  /* string getMetaDataElement (in string key); */
  nsresult GetMetaDataElement(char *key, char **_retval);

  /* void setMetaDataElement (in string key, in string value); */
  nsresult SetMetaDataElement(char *key, char *value);

  /**
     * Visitor will be called with key/value pair for each meta data element.
     */
  /* void visitMetaData (in nsICacheMetaDataVisitor visitor); */
  nsresult VisitMetaData(nsICacheMetaDataVisitor visitor);

}


/* starting interface:    nsICacheMetaDataVisitor */
const char[] NS_ICACHEMETADATAVISITOR_IID_STR = "22f9a49c-3cf8-4c23-8006-54efb11ac562";

const nsIID NS_ICACHEMETADATAVISITOR_IID= 
  {0x22f9a49c, 0x3cf8, 0x4c23, 
    [ 0x80, 0x06, 0x54, 0xef, 0xb1, 0x1a, 0xc5, 0x62 ]};

extern(Windows)
interface nsICacheMetaDataVisitor : nsISupports {
  static const char[] IID_STR = NS_ICACHEMETADATAVISITOR_IID_STR;
  static const nsIID IID = NS_ICACHEMETADATAVISITOR_IID;

  /**
     * Called for each key/value pair in the meta data for a cache entry
     */
  /* boolean visitMetaDataElement (in string key, in string value); */
  nsresult VisitMetaDataElement(char *key, char *value, PRBool *_retval);

}

