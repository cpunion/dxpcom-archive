/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICacheVisitor.idl
 */

module mozilla.dxpcom.nsICacheVisitorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICacheVisitor;


public import mozilla.dxpcom.nsICacheVisitorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsICacheVisitor */
class nsICacheVisitorD : public nsISupportsD {

  static const nsIID IID = NS_ICACHEVISITOR_IID;


  alias nsICacheVisitor InnerType;

  this(nsICacheVisitor intr){
    super(intr);
    this.inner = intr;
  }

  nsICacheVisitor opCast() {
    return inner;
  }

  void opAssign(nsICacheVisitor value) {
    inner = value;
  }

  /**
     * Called to provide information about a cache device.
     *
     * @param deviceID - specifies the device being visited.
     * @param deviceInfo - specifies information about this device.
     *
     * @return true to start visiting all entries for this device.
     * @return false to advance to the next device.
     */
  /* boolean visitDevice (in string deviceID, in nsICacheDeviceInfo deviceInfo); */
  PRBool VisitDevice(char*deviceID, nsICacheDeviceInfoD deviceInfo){
    PRBool _retval;
    nsresult __result = inner.VisitDevice(deviceID, deviceInfo ? cast(nsICacheDeviceInfo)deviceInfo : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Called to provide information about a cache entry.
     *
     * @param deviceID - specifies the device being visited.
     * @param entryInfo - specifies information about this entry.
     * 
     * @return true to visit the next entry on the current device, or if the
     *   end of the device has been reached, advance to the next device.
     * @return false to advance to the next device.
     */
  /* boolean visitEntry (in string deviceID, in nsICacheEntryInfo entryInfo); */
  PRBool VisitEntry(char*deviceID, nsICacheEntryInfoD entryInfo){
    PRBool _retval;
    nsresult __result = inner.VisitEntry(deviceID, entryInfo ? cast(nsICacheEntryInfo)entryInfo : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsICacheVisitor inner;

}


/* starting wrapper class:    nsICacheDeviceInfo */
class nsICacheDeviceInfoD : public nsISupportsD {

  static const nsIID IID = NS_ICACHEDEVICEINFO_IID;


  alias nsICacheDeviceInfo InnerType;

  this(nsICacheDeviceInfo intr){
    super(intr);
    this.inner = intr;
  }

  nsICacheDeviceInfo opCast() {
    return inner;
  }

  void opAssign(nsICacheDeviceInfo value) {
    inner = value;
  }

  /**
     * Get a human readable description of the cache device.
     */
  /* readonly attribute string description; */
  char* Description(){
    char* value;
    nsresult __result = inner.GetDescription(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Get a usage report, statistics, miscellaneous data about
     * the cache device.
     */
  /* readonly attribute string usageReport; */
  char* UsageReport(){
    char* value;
    nsresult __result = inner.GetUsageReport(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Get the number of stored cache entries.
     */
  /* readonly attribute unsigned long entryCount; */
  PRUint32 EntryCount(){
    PRUint32 value;
    nsresult __result = inner.GetEntryCount(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Get the total size of the stored cache entries.
     */
  /* readonly attribute unsigned long totalSize; */
  PRUint32 TotalSize(){
    PRUint32 value;
    nsresult __result = inner.GetTotalSize(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Get the upper limit of the size of the data the cache can store.
     */
  /* readonly attribute unsigned long maximumSize; */
  PRUint32 MaximumSize(){
    PRUint32 value;
    nsresult __result = inner.GetMaximumSize(&value);
    CheckException(__result);
    return value;
  }

private:
  nsICacheDeviceInfo inner;

}


/* starting wrapper class:    nsICacheEntryInfo */
class nsICacheEntryInfoD : public nsISupportsD {

  static const nsIID IID = NS_ICACHEENTRYINFO_IID;


  alias nsICacheEntryInfo InnerType;

  this(nsICacheEntryInfo intr){
    super(intr);
    this.inner = intr;
  }

  nsICacheEntryInfo opCast() {
    return inner;
  }

  void opAssign(nsICacheEntryInfo value) {
    inner = value;
  }

  /**
     * Get the client id associated with this cache entry.
     */
  /* readonly attribute string clientID; */
  char* ClientID(){
    char* value;
    nsresult __result = inner.GetClientID(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Get the id for the device that stores this cache entry.
     */
  /* readonly attribute string deviceID; */
  char* DeviceID(){
    char* value;
    nsresult __result = inner.GetDeviceID(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Get the key identifying the cache entry.
     */
  /* readonly attribute ACString key; */
  char[] Key(){
    scope auto value = new ACString();
    nsresult __result = inner.GetKey(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
     * Get the number of times the cache entry has been opened.
     */
  /* readonly attribute long fetchCount; */
  PRInt32 FetchCount(){
    PRInt32 value;
    nsresult __result = inner.GetFetchCount(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Get the last time the cache entry was opened (in seconds since the Epoch).
     */
  /* readonly attribute PRUint32 lastFetched; */
  PRUint32 LastFetched(){
    PRUint32 value;
    nsresult __result = inner.GetLastFetched(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Get the last time the cache entry was modified (in seconds since the Epoch).
     */
  /* readonly attribute PRUint32 lastModified; */
  PRUint32 LastModified(){
    PRUint32 value;
    nsresult __result = inner.GetLastModified(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Get the expiration time of the cache entry (in seconds since the Epoch).
     */
  /* readonly attribute PRUint32 expirationTime; */
  PRUint32 ExpirationTime(){
    PRUint32 value;
    nsresult __result = inner.GetExpirationTime(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Get the cache entry data size.
     */
  /* readonly attribute unsigned long dataSize; */
  PRUint32 DataSize(){
    PRUint32 value;
    nsresult __result = inner.GetDataSize(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Find out whether or not the cache entry is stream based.
     */
  /* boolean isStreamBased (); */
  PRBool IsStreamBased(){
    PRBool _retval;
    nsresult __result = inner.IsStreamBased(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsICacheEntryInfo inner;

}

