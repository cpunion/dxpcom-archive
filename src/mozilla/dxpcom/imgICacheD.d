/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM imgICache.idl
 */

module mozilla.dxpcom.imgICacheD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.imgICache;


public import mozilla.dxpcom.imgICacheD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.imgIRequest;

public import mozilla.dxpcom.imgIRequestD;

public import mozilla.xpcom.nsIProperties;

public import mozilla.dxpcom.nsIPropertiesD;


/* starting wrapper class:    imgICache */
/**
 * imgICache interface
 *
 * @author Stuart Parmenter <pavlov@netscape.com>
 * @version 0.1
 * @see imagelib2
 */
class imgICacheD : public nsISupportsD {

  static const nsIID IID = IMGICACHE_IID;


  alias imgICache InnerType;

  this(imgICache intr){
    super(intr);
    this.inner = intr;
  }

  imgICache opCast() {
    return inner;
  }

  void opAssign(imgICache value) {
    inner = value;
  }

  /**
   * Evict images from the cache.
   *
   * @param chrome If TRUE,  evict only chrome images.
   *               If FALSE, evict everything except chrome images.
   */
  /* void clearCache (in boolean chrome); */
  void ClearCache(PRBool chrome){
    nsresult __result = inner.ClearCache(chrome);
    CheckException(__result);
  }

  /**
   * Evict images from the cache.
   *
   * @param uri The URI to remove.
   * @return NS_OK if \a uri was removed from the cache.
   *         NS_ERROR_NOT_AVAILABLE if \a uri was unable to be removed from the cache.
   */
  /* void removeEntry (in nsIURI uri); */
  void RemoveEntry(nsIURID uri){
    nsresult __result = inner.RemoveEntry(uri ? cast(nsIURI)uri : null);
    CheckException(__result);
  }

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
  nsIPropertiesD  FindEntryProperties(nsIURID uri){
    nsIProperties _retval;
    nsresult __result = inner.FindEntryProperties(uri ? cast(nsIURI)uri : null, &_retval);
    CheckException(__result);
    return new nsIPropertiesD(_retval);
  }

private:
  imgICache inner;

}

