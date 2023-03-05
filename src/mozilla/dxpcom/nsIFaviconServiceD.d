/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFaviconService.idl
 */

module mozilla.dxpcom.nsIFaviconServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFaviconService;


public import mozilla.dxpcom.nsIFaviconServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIFaviconService */
class nsIFaviconServiceD : public nsISupportsD {

  static const nsIID IID = NS_IFAVICONSERVICE_IID;


  alias nsIFaviconService InnerType;

  this(nsIFaviconService intr){
    super(intr);
    this.inner = intr;
  }

  nsIFaviconService opCast() {
    return inner;
  }

  void opAssign(nsIFaviconService value) {
    inner = value;
  }

  /**
   * Declares that a given page uses a favicon with the given URI.
   *
   * You needn't have specified any data at this point. An entry linking the
   * favicon with the page will be create with no data. You can populate it
   * later with SetFaviconData.  However, any favicons not associated with a
   * visited web page, a bookmark, or a "place:" URI will be expired when
   * history cleanup is done * (typically at app shutdown, but also possibly
   * if the user clears their * cache or history).
   *
   * This will send out history notifications if the new favicon has any data.
   * This means that you should try to set data first if you have it, otherwise
   * the page might not get a notification sent for it since data setting does
   * not send notifications.
   *
   * @param aPage
   *        URI of the page whose favicon is being set.
   * @param aFavicon
   *        URI of the favicon to associate with the page.
   */
  /* void setFaviconUrlForPage (in nsIURI aPage, in nsIURI aFavicon); */
  void SetFaviconUrlForPage(nsIURID aPage, nsIURID aFavicon){
    nsresult __result = inner.SetFaviconUrlForPage(aPage ? cast(nsIURI)aPage : null, aFavicon ? cast(nsIURI)aFavicon : null);
    CheckException(__result);
  }

  /**
   * Same as SetFaviconUrlForPage except that this also attempts to set the
   * data by loading the favicon URI. An async request will be created for
   * this URI and if the data is available, it will asynchronously get
   * saved in the database without any further work from the caller.
   *
   * If the icon data already exists, we won't normally try to re-load the
   * icon from the net (or more likely the cache). If the icon is in the
   * failed favicon cache we won't do anything. Use forceReload to force
   * a reload of the data. This will remove the favicon from the failed
   * cache. If it then fails again, it will be re-added to the failed cache.
   *
   * SetFaviconUrlForPage and SetFaviconData will take any URL you provide
   * and save it. This function is intended for automatic usage, and will
   * only save favicons for "good" URLs, as defined by what gets added to
   * history. For "bad" URLs, this function will succeed and do nothing.
   * This function will also ignore favicons that are data URLs. Icons that
   * fail to load will automatically be added to the failed favicon cache.
   *
   * This function will not save favicons for non-bookmarked URLs when
   * history is disabled (expiration time is 0 days). The rest of the functions
   * here will always store favicons even when history is disabled.
   *
   * @param aPage
   *        URI of the page whose favicon is being set.
   * @param aFavicon
   *        URI of the favicon to associate with the page.
   * @param aForceReload
   *        Unset is normal behavior, we will only try to reload the favicon
   *        if we don't have it or if it has expired from the cache. If set,
   *        it will always try to reload the favicon.
   */
  /* void setAndLoadFaviconForPage (in nsIURI aPage, in nsIURI aFavicon, in boolean aForceReload); */
  void SetAndLoadFaviconForPage(nsIURID aPage, nsIURID aFavicon, PRBool aForceReload){
    nsresult __result = inner.SetAndLoadFaviconForPage(aPage ? cast(nsIURI)aPage : null, aFavicon ? cast(nsIURI)aFavicon : null, aForceReload);
    CheckException(__result);
  }

  /**
   * Stores the data of a given favicon. You must specify the MIME type
   * unless you're clearing the data.
   *
   * You can set the data even if you haven't called SetFaviconUrlForPage
   * yet. It will be stored but will not be associated with any page.
   * However, any favicons not associated with a visited web page, bookmark,
   * or "place:" URI will be expired when history cleanup is done. This might
   * be done at any time on a timer, so you should not let the message loop
   * run between calls or your icon may get deleted.
   *
   * It is best to set the favicon data, and then associate it with a page.
   * This will make the notifications more efficient since the icon will
   * already have data when the set favicon observer messages goes out.
   *
   * The expiration time is stored. This will be used if you call
   * SetAndLoadFaviconForPage to see whether the data needs reloading.
   *
   * Do not use this function for chrome: icon URLs. You should reference the
   * chrome image yourself. The GetFaviconLinkForIcon/Page will ignore any
   * associated data if the favicon URI is "chrome:" and just return the same
   * chrome URI.
   *
   * This function does NOT send out notifications that the data has changed.
   * Potentially, many pages could be referencing the favicon and they could
   * be visible in a history view or toolbar. But sending out those
   * notifications is very intensive. Those pages will keep the old icon
   * until they have been refreshed by other means.
   *
   * @param aFavicon
   *        URI of the favicon whose data is being set.
   * @param aData
   *        Binary contents of the favicon to save
   * @param aDataLength
   *        Length of binary data
   * @param aMimeType
   *        MIME type of the data to store. This is important so that we know
   *        what to report when the favicon is used.
   * @param aExpiration
   *        Time in microseconds since the epoch when this favicon expires.
   *        Until this time, we won't try to load it again.
   */
  /* void setFaviconData (in nsIURI aFavicon, [array, size_is (aDataLen), const] in octet aData, in unsigned long aDataLen, in AUTF8String aMimeType, in PRTime aExpiration); */
  void SetFaviconData(nsIURID aFavicon, PRUint8 *aData, PRUint32 aDataLen, char[] aMimeType, PRTime aExpiration){
    scope auto _aMimeType = new ACString(aMimeType);
    nsresult __result = inner.SetFaviconData(aFavicon ? cast(nsIURI)aFavicon : null, aData, aDataLen, cast(nsACString*)_aMimeType, aExpiration);
    CheckException(__result);
  }

  /**
   * Retrieves the given favicon data. Throws if we don't have data.
   *
   * If there is no data but we have an entry for this favicon, aDataLen will
   * be 0 and aData will be NULL.
   *
   * @param aFavicon
   *        URL of the favicon whose data is being read
   * @param aData
   *        Output parameter where the binary favicon data will be placed.
   *        This will be null if we have this URL but have no data associated
   *        with it.
   * @param aDataLen
   *        Output parameter where the size of the binary data will be placed.
   * @param aMimeType
   *        Output parameter where the MIME type will be placed.
   * @throws NS_ERROR_NOT_AVAILABLE
   *         Thrown when we have never heard of this favicon URL.
   */
  /* void getFaviconData (in nsIURI aFavicon, out AUTF8String aMimeType, out unsigned long aDataLen, [array, size_is (aDataLen), retval] out octet aData); */
  void GetFaviconData(nsIURID aFavicon, char[] aMimeType, out PRUint32 aDataLen, out PRUint8 *aData){
    scope auto _aMimeType = new ACString;
    nsresult __result = inner.GetFaviconData(aFavicon ? cast(nsIURI)aFavicon : null, cast(nsACString*)_aMimeType, &aDataLen, &aData);
    CheckException(__result);
    aMimeType = _aMimeType.GetString();
  }

  /**
   * Retrieves the URL of the favicon for the given page.
   *
   * @param aPage
   *        URI of the page whose favicon is desired
   * @returns The URI of the favicon associated with that page. Returning a
   *          URI here does NOT mean that we have data for this favicon, only
   *          that we know what the favicon should be.
   * @throws NS_ERROR_NOT_AVAILABLE
   *         When the page is not found or it has no favicon.
   */
  /* nsIURI getFaviconForPage (in nsIURI aPage); */
  nsIURID  GetFaviconForPage(nsIURID aPage){
    nsIURI _retval;
    nsresult __result = inner.GetFaviconForPage(aPage ? cast(nsIURI)aPage : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /**
   * For a given page, this will give you a URI that, when displayed in chrome,
   * will result in the given page's favicon. Unlike the other get functions,
   * we needn't have heard of the page or its favicon: the default one will
   * be returned in this case.
   *
   * @see getFaviconLinkForIcon
   *      This function only adds the extra level of indirection, looking up
   *      the favicon based on the page URI and using the default if not found.
   *
   * @param aPage
   *        URI of the page whose favicon is desired
   * @returns A URI that will give you the icon image. This is NOT the URI of
   *          the icon as set on the page, but a URI that will give you the
   *          data out of the favicon service.  For a normal page with a
   *          favicon we've stored, this will be an annotation URI which will
   *          then cause the corresponding favicon data to be loaded from this
   *          service. For pages where we don't have a favicon, this will be a
   *          chrome URI of the default icon for a web page.
   */
  /* nsIURI getFaviconImageForPage (in nsIURI aPage); */
  nsIURID  GetFaviconImageForPage(nsIURID aPage){
    nsIURI _retval;
    nsresult __result = inner.GetFaviconImageForPage(aPage ? cast(nsIURI)aPage : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /**
   * For a given icon URI, this will return a URI that will result in the image.
   * In most cases, this is an annotation URI. For chrome, this will do nothing
   * and return the input URI. For NULL input, this will return the URI of
   * the default favicon.
   *
   * @param aIcon
   *        The URL of an icon in the favicon service. Can be NULL.
   * @returns A URI that will load the desired icon. This is NOT the URI of the
   *          icon as set on the page, but a URI that will give you the data
   *          out of the favicon service. For a normal page with a favicon
   *          we've stored, this will be an annotation URI which will then
   *          cause the corresponding favicon data to be loaded from this
   *          service. For pages where we don't have a favicon, this will be a
   *          chrome URI of the default icon for a web page. For chrome, the
   *          output will be the same as the input. For NULL input, this will
   *          be the URI of the default favicon.
   *
   *          No validity checking is done. If you pass an icon URI that we've
   *          never seen, you'll get back a URI that references an invalid
   *          icon. The moz-anno protocol handler's special case for "favicon"
   *          annotations will detect most invalid icons and it will resolve to
   *          the default icon, although without caching. For invalid chrome
   *          URIs, you'll get a broken image.
   */
  /* nsIURI getFaviconLinkForIcon (in nsIURI aIcon); */
  nsIURID  GetFaviconLinkForIcon(nsIURID aIcon){
    nsIURI _retval;
    nsresult __result = inner.GetFaviconLinkForIcon(aIcon ? cast(nsIURI)aIcon : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /**
   * Adds a given favicon's URI to the failed favicon cache.
   *
   * The lifespan of the favicon cache is up to the caching system. This cache
   * will also be written to if you use setAndLoadFaviconForPage and it
   * encounters an error.
   *
   * @see isFailedFavicon
   */
  /* void addFailedFavicon (in nsIURI aIcon); */
  void AddFailedFavicon(nsIURID aIcon){
    nsresult __result = inner.AddFailedFavicon(aIcon ? cast(nsIURI)aIcon : null);
    CheckException(__result);
  }

  /**
   * Removes the given favicon from the failed favicon cache. If the icon is
   * not in the cache, this function will silently succeed.
   */
  /* void removeFailedFavicon (in nsIURI aIcon); */
  void RemoveFailedFavicon(nsIURID aIcon){
    nsresult __result = inner.RemoveFailedFavicon(aIcon ? cast(nsIURI)aIcon : null);
    CheckException(__result);
  }

  /**
   * Checks to see if this favicon is in the failed favicon cache. Returns true
   * if the favicon is in the failed cache, meaning you probably shouldn't try
   * to load it. A false return value means that it's worth trying to load it.
   * This allows you to avoid trying to load "foo.com/favicon.ico" for every
   * page on a site that doesn't have a favicon.
   */
  /* boolean isFailedFavicon (in nsIURI aIcon); */
  PRBool IsFailedFavicon(nsIURID aIcon){
    PRBool _retval;
    nsresult __result = inner.IsFailedFavicon(aIcon ? cast(nsIURI)aIcon : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIFaviconService inner;

}

