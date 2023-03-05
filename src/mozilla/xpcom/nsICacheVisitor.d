/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICacheVisitor.idl
 */

module mozilla.xpcom.nsICacheVisitor;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsICacheVisitor */
const char[] NS_ICACHEVISITOR_IID_STR = "f8c08c4b-d778-49d1-a59b-866fdc500d95";

const nsIID NS_ICACHEVISITOR_IID= 
  {0xf8c08c4b, 0xd778, 0x49d1, 
    [ 0xa5, 0x9b, 0x86, 0x6f, 0xdc, 0x50, 0x0d, 0x95 ]};

extern(Windows)
interface nsICacheVisitor : nsISupports {
  static const char[] IID_STR = NS_ICACHEVISITOR_IID_STR;
  static const nsIID IID = NS_ICACHEVISITOR_IID;

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
  nsresult VisitDevice(char *deviceID, nsICacheDeviceInfo deviceInfo, PRBool *_retval);

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
  nsresult VisitEntry(char *deviceID, nsICacheEntryInfo entryInfo, PRBool *_retval);

}


/* starting interface:    nsICacheDeviceInfo */
const char[] NS_ICACHEDEVICEINFO_IID_STR = "31d1c294-1dd2-11b2-be3a-c79230dca297";

const nsIID NS_ICACHEDEVICEINFO_IID= 
  {0x31d1c294, 0x1dd2, 0x11b2, 
    [ 0xbe, 0x3a, 0xc7, 0x92, 0x30, 0xdc, 0xa2, 0x97 ]};

extern(Windows)
interface nsICacheDeviceInfo : nsISupports {
  static const char[] IID_STR = NS_ICACHEDEVICEINFO_IID_STR;
  static const nsIID IID = NS_ICACHEDEVICEINFO_IID;

  /**
     * Get a human readable description of the cache device.
     */
  /* readonly attribute string description; */
  nsresult GetDescription(char * *aDescription);

  /**
     * Get a usage report, statistics, miscellaneous data about
     * the cache device.
     */
  /* readonly attribute string usageReport; */
  nsresult GetUsageReport(char * *aUsageReport);

  /**
     * Get the number of stored cache entries.
     */
  /* readonly attribute unsigned long entryCount; */
  nsresult GetEntryCount(PRUint32 *aEntryCount);

  /**
     * Get the total size of the stored cache entries.
     */
  /* readonly attribute unsigned long totalSize; */
  nsresult GetTotalSize(PRUint32 *aTotalSize);

  /**
     * Get the upper limit of the size of the data the cache can store.
     */
  /* readonly attribute unsigned long maximumSize; */
  nsresult GetMaximumSize(PRUint32 *aMaximumSize);

}


/* starting interface:    nsICacheEntryInfo */
const char[] NS_ICACHEENTRYINFO_IID_STR = "fab51c92-95c3-4468-b317-7de4d7588254";

const nsIID NS_ICACHEENTRYINFO_IID= 
  {0xfab51c92, 0x95c3, 0x4468, 
    [ 0xb3, 0x17, 0x7d, 0xe4, 0xd7, 0x58, 0x82, 0x54 ]};

extern(Windows)
interface nsICacheEntryInfo : nsISupports {
  static const char[] IID_STR = NS_ICACHEENTRYINFO_IID_STR;
  static const nsIID IID = NS_ICACHEENTRYINFO_IID;

  /**
     * Get the client id associated with this cache entry.
     */
  /* readonly attribute string clientID; */
  nsresult GetClientID(char * *aClientID);

  /**
     * Get the id for the device that stores this cache entry.
     */
  /* readonly attribute string deviceID; */
  nsresult GetDeviceID(char * *aDeviceID);

  /**
     * Get the key identifying the cache entry.
     */
  /* readonly attribute ACString key; */
  nsresult GetKey(nsACString * aKey);

  /**
     * Get the number of times the cache entry has been opened.
     */
  /* readonly attribute long fetchCount; */
  nsresult GetFetchCount(PRInt32 *aFetchCount);

  /**
     * Get the last time the cache entry was opened (in seconds since the Epoch).
     */
  /* readonly attribute PRUint32 lastFetched; */
  nsresult GetLastFetched(PRUint32 *aLastFetched);

  /**
     * Get the last time the cache entry was modified (in seconds since the Epoch).
     */
  /* readonly attribute PRUint32 lastModified; */
  nsresult GetLastModified(PRUint32 *aLastModified);

  /**
     * Get the expiration time of the cache entry (in seconds since the Epoch).
     */
  /* readonly attribute PRUint32 expirationTime; */
  nsresult GetExpirationTime(PRUint32 *aExpirationTime);

  /**
     * Get the cache entry data size.
     */
  /* readonly attribute unsigned long dataSize; */
  nsresult GetDataSize(PRUint32 *aDataSize);

  /**
     * Find out whether or not the cache entry is stream based.
     */
  /* boolean isStreamBased (); */
  nsresult IsStreamBased(PRBool *_retval);

}

