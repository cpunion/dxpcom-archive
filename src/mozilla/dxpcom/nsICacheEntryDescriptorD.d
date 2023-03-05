/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICacheEntryDescriptor.idl
 */

module mozilla.dxpcom.nsICacheEntryDescriptorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICacheEntryDescriptor;


public import mozilla.dxpcom.nsICacheEntryDescriptorD;

public import mozilla.xpcom.nsICacheVisitor;
public import mozilla.dxpcom.nsICacheVisitorD;
public import mozilla.xpcom.nsICache;
public import mozilla.dxpcom.nsICacheD;

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;

public import mozilla.xpcom.nsICacheListener;

public import mozilla.dxpcom.nsICacheListenerD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;

public import mozilla.xpcom.nsIOutputStream;

public import mozilla.dxpcom.nsIOutputStreamD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;


/* starting wrapper class:    nsICacheEntryDescriptor */
class nsICacheEntryDescriptorD : public nsICacheEntryInfoD {

  static const nsIID IID = NS_ICACHEENTRYDESCRIPTOR_IID;


  alias nsICacheEntryDescriptor InnerType;

  this(nsICacheEntryDescriptor intr){
    super(intr);
    this.inner = intr;
  }

  nsICacheEntryDescriptor opCast() {
    return inner;
  }

  void opAssign(nsICacheEntryDescriptor value) {
    inner = value;
  }

  /**
     * Set the time at which the cache entry should be considered invalid (in
     * seconds since the Epoch).
     */
  /* void setExpirationTime (in PRUint32 expirationTime); */
  void SetExpirationTime(PRUint32 expirationTime){
    nsresult __result = inner.SetExpirationTime(expirationTime);
    CheckException(__result);
  }

  /**
     * Set the cache entry data size.  This will fail if the cache entry
     * IS stream based.
     */
  /* void setDataSize (in unsigned long size); */
  void SetDataSize(PRUint32 size){
    nsresult __result = inner.SetDataSize(size);
    CheckException(__result);
  }

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
  nsIInputStreamD  OpenInputStream(PRUint32 offset){
    nsIInputStream _retval;
    nsresult __result = inner.OpenInputStream(offset, &_retval);
    CheckException(__result);
    return new nsIInputStreamD(_retval);
  }

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
  nsIOutputStreamD  OpenOutputStream(PRUint32 offset){
    nsIOutputStream _retval;
    nsresult __result = inner.OpenOutputStream(offset, &_retval);
    CheckException(__result);
    return new nsIOutputStreamD(_retval);
  }

  /**
     * Get/set the cache data element.  This will fail if the cache entry
     * IS stream based.  The cache entry holds a strong reference to this
     * object.  The object will be released when the cache entry is destroyed.
     */
  /* attribute nsISupports cacheElement; */
  nsISupportsD  CacheElement(){
    nsISupports value;
    nsresult __result = inner.GetCacheElement(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }
  void CacheElement(nsISupportsD  aCacheElement){
    nsISupports value;
    nsresult __result = inner.SetCacheElement(value);
    CheckException(__result);
  }

  /**
     * Get the access granted to this descriptor.  See nsICache.idl for the
     * definitions of the access modes and a thorough description of their
     * corresponding meanings.
     */
  /* readonly attribute nsCacheAccessMode accessGranted; */
  nsCacheAccessMode AccessGranted(){
    nsCacheAccessMode value;
    nsresult __result = inner.GetAccessGranted(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Get/set the storage policy of the cache entry.  See nsICache.idl for
     * the definitions of the storage policies.
     */
  /* attribute nsCacheStoragePolicy storagePolicy; */
  nsCacheStoragePolicy StoragePolicy(){
    nsCacheStoragePolicy value;
    nsresult __result = inner.GetStoragePolicy(&value);
    CheckException(__result);
    return value;
  }
  void StoragePolicy(nsCacheStoragePolicy aStoragePolicy){
    nsCacheStoragePolicy value;
    nsresult __result = inner.SetStoragePolicy(value);
    CheckException(__result);
  }

  /**
     * Get the disk file associated with the cache entry.
     */
  /* readonly attribute nsIFile file; */
  nsIFileD  File(){
    nsIFile value;
    nsresult __result = inner.GetFile(&value);
    CheckException(__result);
    return new nsIFileD(value);
  }

  /**
     * Get/set security info on the cache entry for this descriptor.  This fails
     * if the storage policy is not STORE_IN_MEMORY.
     */
  /* attribute nsISupports securityInfo; */
  nsISupportsD  SecurityInfo(){
    nsISupports value;
    nsresult __result = inner.GetSecurityInfo(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }
  void SecurityInfo(nsISupportsD  aSecurityInfo){
    nsISupports value;
    nsresult __result = inner.SetSecurityInfo(value);
    CheckException(__result);
  }

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
  void Doom(){
    nsresult __result = inner.Doom();
    CheckException(__result);
  }

  /* void doomAndFailPendingRequests (in nsresult status); */
  void DoomAndFailPendingRequests(nsresult status){
    nsresult __result = inner.DoomAndFailPendingRequests(status);
    CheckException(__result);
  }

  /**
     * A writer must validate this cache object before any readers are given
     * a descriptor to the object.
     */
  /* void markValid (); */
  void MarkValid(){
    nsresult __result = inner.MarkValid();
    CheckException(__result);
  }

  /**
     *  Explicitly close the descriptor (optional).
     */
  /* void close (); */
  void Close(){
    nsresult __result = inner.Close();
    CheckException(__result);
  }

  /**
     * Methods for accessing meta data.  Meta data is a table of key/value
     * string pairs.  The strings do not have to conform to any particular
     * charset, but they must be null terminated.
     */
  /* string getMetaDataElement (in string key); */
  char* GetMetaDataElement(char*key){
    char* _retval;
    nsresult __result = inner.GetMetaDataElement(key, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setMetaDataElement (in string key, in string value); */
  void SetMetaDataElement(char*key, char*value){
    nsresult __result = inner.SetMetaDataElement(key, value);
    CheckException(__result);
  }

  /**
     * Visitor will be called with key/value pair for each meta data element.
     */
  /* void visitMetaData (in nsICacheMetaDataVisitor visitor); */
  void VisitMetaData(nsICacheMetaDataVisitorD visitor){
    nsresult __result = inner.VisitMetaData(visitor ? cast(nsICacheMetaDataVisitor)visitor : null);
    CheckException(__result);
  }

private:
  nsICacheEntryDescriptor inner;

}


/* starting wrapper class:    nsICacheMetaDataVisitor */
class nsICacheMetaDataVisitorD : public nsISupportsD {

  static const nsIID IID = NS_ICACHEMETADATAVISITOR_IID;


  alias nsICacheMetaDataVisitor InnerType;

  this(nsICacheMetaDataVisitor intr){
    super(intr);
    this.inner = intr;
  }

  nsICacheMetaDataVisitor opCast() {
    return inner;
  }

  void opAssign(nsICacheMetaDataVisitor value) {
    inner = value;
  }

  /**
     * Called for each key/value pair in the meta data for a cache entry
     */
  /* boolean visitMetaDataElement (in string key, in string value); */
  PRBool VisitMetaDataElement(char*key, char*value){
    PRBool _retval;
    nsresult __result = inner.VisitMetaDataElement(key, value, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsICacheMetaDataVisitor inner;

}

