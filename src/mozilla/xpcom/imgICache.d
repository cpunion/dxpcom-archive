/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM imgICache.idl
 */

module mozilla.xpcom.imgICache;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.imgIRequest; /* forward declaration */

public import mozilla.xpcom.nsIProperties; /* forward declaration */


/* starting interface:    imgICache */
const char[] IMGICACHE_IID_STR = "f1b74aae-5661-4753-a21c-66dd644afebc";

const nsIID IMGICACHE_IID= 
  {0xf1b74aae, 0x5661, 0x4753, 
    [ 0xa2, 0x1c, 0x66, 0xdd, 0x64, 0x4a, 0xfe, 0xbc ]};

/**
 * imgICache interface
 *
 * @author Stuart Parmenter <pavlov@netscape.com>
 * @version 0.1
 * @see imagelib2
 */
extern(Windows)
interface imgICache : nsISupports {
  static const char[] IID_STR = IMGICACHE_IID_STR;
  static const nsIID IID = IMGICACHE_IID;

  /**
   * Evict images from the cache.
   *
   * @param chrome If TRUE,  evict only chrome images.
   *               If FALSE, evict everything except chrome images.
   */
  /* void clearCache (in boolean chrome); */
  nsresult ClearCache(PRBool chrome);

  /**
   * Evict images from the cache.
   *
   * @param uri The URI to remove.
   * @return NS_OK if \a uri was removed from the cache.
   *         NS_ERROR_NOT_AVAILABLE if \a uri was unable to be removed from the cache.
   */
  /* void removeEntry (in nsIURI uri); */
  nsresult RemoveEntry(nsIURI uri);

  /**
   * Find Properties
   * Used to get properties such as 'type' and 'content-disposition'
   * 'type' is a nsISupportsCString containing the images' mime type such as 'image/png'
   * 'content-disposition' will be a nsISupportsCString containing the header
   * If you call this before any data has been loaded from a URI, it will succeed,
   * but come back empty.
   *
   * @param uri The URI to look up.
   * @returns NULL if the URL was not found in the cache
   */
  /* nsIProperties findEntryProperties (in nsIURI uri); */
  nsresult FindEntryProperties(nsIURI uri, nsIProperties *_retval);

}

