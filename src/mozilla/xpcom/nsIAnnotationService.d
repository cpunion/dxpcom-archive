/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAnnotationService.idl
 */

module mozilla.xpcom.nsIAnnotationService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIVariant; /* forward declaration */


/* starting interface:    nsIAnnotationObserver */
const char[] NS_IANNOTATIONOBSERVER_IID_STR = "d41c9510-2377-4728-b275-bdad6a0521f8";

const nsIID NS_IANNOTATIONOBSERVER_IID= 
  {0xd41c9510, 0x2377, 0x4728, 
    [ 0xb2, 0x75, 0xbd, 0xad, 0x6a, 0x05, 0x21, 0xf8 ]};

extern(Windows)
interface nsIAnnotationObserver : nsISupports {
  static const char[] IID_STR = NS_IANNOTATIONOBSERVER_IID_STR;
  static const nsIID IID = NS_IANNOTATIONOBSERVER_IID;

  /**
     * Called when an annotation value is set. It could be a new annotation,
     * or it could be a new value for an existing annotation.
     */
  /* void onAnnotationSet (in nsIURI aURI, in AUTF8String aName); */
  nsresult OnAnnotationSet(nsIURI aURI, nsACString * aName);

  /**
     * Called when an annotation is deleted. If aName is empty, then ALL
     * annotations for the given URI have been deleted. This is not called when
     * annotations are expired (normally happens when the app exits).
     */
  /* void onAnnotationRemoved (in nsIURI aURI, in AUTF8String aName); */
  nsresult OnAnnotationRemoved(nsIURI aURI, nsACString * aName);

}


/* starting interface:    nsIAnnotationService */
const char[] NS_IANNOTATIONSERVICE_IID_STR = "a857c97f-7705-4376-b374-bd8799f69d51";

const nsIID NS_IANNOTATIONSERVICE_IID= 
  {0xa857c97f, 0x7705, 0x4376, 
    [ 0xb3, 0x74, 0xbd, 0x87, 0x99, 0xf6, 0x9d, 0x51 ]};

extern(Windows)
interface nsIAnnotationService : nsISupports {
  static const char[] IID_STR = NS_IANNOTATIONSERVICE_IID_STR;
  static const nsIID IID = NS_IANNOTATIONSERVICE_IID;

  /**
     * Valid values for aExpiration, which sets the expiration policy for your
     * annotation. These times are measured since the last visit date of the
     * page in question. This means that if you set an annotation with anything
     * but session expiration, it will not expire so long as the user keeps
     * visiting the page from time to time.
     */
  enum { EXPIRE_SESSION = 0 };

  enum { EXPIRE_DAYS = 1 };

  enum { EXPIRE_WEEKS = 2 };

  enum { EXPIRE_MONTHS = 3 };

  enum { EXPIRE_NEVER = 4 };

  /**
     * Sets an annotation, overwriting any previous annotation with the same
     * URL/name. IT IS YOUR JOB TO NAMESPACE YOUR ANNOTATION NAMES.
     * Use the form "namespace/value", so your name would be like
     * "bills_extension/page_state" or "history/thumbnail".
     *
     * Do not use characters that are not valid in URLs such as spaces, ":",
     * commas, or most other symbols. You should stick to ASCII letters and
     * numbers plus "_", "-", and "/".
     *
     * aExpiration is one of EXPIRE_* above. aFlags should be 0 for now, some
     * flags will be defined in the future.
     *
     * NOTE: ALL ANNOTATIONS WILL GET DELETED WHEN THE PAGE IS REMOVED FROM
     * HISTORY, regardless of expiration date. This means that if you create an
     * annotation on a random unvisited URI, it will get deleted when the
     * browser shuts down.  Otherwise, things can exist in history as
     * annotations but the user has no way of knowing it, potentially violating
     * their privacy expectations about actions such as "Clear history." If
     * there is an important annotation that the user wants to keep, you should
     * make sure that URL is bookmarked. This will ensure the item is never
     * completely deleted from the history database.
     *
     * The annotation "favicon" is special. favicons are stored in the favicon
     * service, but are special cased in the protocol handler so they look like
     * annotations. Do not set favicons using this service, it will not work.
     */
  /* void setAnnotationString (in nsIURI aURI, in AUTF8String aName, in AString aValue, in PRInt32 aFlags, in PRInt32 aExpiration); */
  nsresult SetAnnotationString(nsIURI aURI, nsACString * aName, nsAString * aValue, PRInt32 aFlags, PRInt32 aExpiration);

  /**
     * Sets an annotation just like setAnnotationString, but takes an Int32 as
     * input.
     */
  /* void setAnnotationInt32 (in nsIURI aURI, in AUTF8String aName, in PRInt32 aValue, in PRInt32 aFlags, in PRInt32 aExpiration); */
  nsresult SetAnnotationInt32(nsIURI aURI, nsACString * aName, PRInt32 aValue, PRInt32 aFlags, PRInt32 aExpiration);

  /**
     * Sets an annotation just like setAnnotationString, but takes an Int64 as
     * input.
     */
  /* void setAnnotationInt64 (in nsIURI aURI, in AUTF8String aName, in PRInt64 aValue, in PRInt32 aFlags, in PRInt32 aExpiration); */
  nsresult SetAnnotationInt64(nsIURI aURI, nsACString * aName, PRInt64 aValue, PRInt32 aFlags, PRInt32 aExpiration);

  /**
     * Sets an annotation just like setAnnotationString, but takes a double as
     * input.
     */
  /* void setAnnotationDouble (in nsIURI aURI, in AUTF8String aName, in double aValue, in PRInt32 aFlags, in PRInt32 aExpiration); */
  nsresult SetAnnotationDouble(nsIURI aURI, nsACString * aName, double aValue, PRInt32 aFlags, PRInt32 aExpiration);

  /* void setAnnotationBinary (in nsIURI aURI, in AUTF8String aName, [array, size_is (aDataLen), const] in octet aData, in PRUint32 aDataLen, in AUTF8String aMimeType, in PRInt32 aFlags, in PRInt32 aExpiration); */
  nsresult SetAnnotationBinary(nsIURI aURI, nsACString * aName, PRUint8 *aData, PRUint32 aDataLen, nsACString * aMimeType, PRInt32 aFlags, PRInt32 aExpiration);

  /**
     * Retrieves the string value of a given annotation. Throws an error if the
     * annotation does not exist. If the annotation was set as a different
     * type than you are retrieving it as, the value will be converted as best
     * as we can. You aren't always guaranteed a good conversion, however,
     * and errors will not be thrown in this case. (For example, doubles will
     * lose precision when stringified.)
     */
  /* AString getAnnotationString (in nsIURI aURI, in AUTF8String aName); */
  nsresult GetAnnotationString(nsIURI aURI, nsACString * aName, nsAString * _retval);

  /**
     * Same as getAnnotationString but for ints. If the value doesn't look like
     * an int, returns 0. (this is current sqlite behavior when asking for an
     * int when there is not one, it will possibly change in the future if we
     * start caching stuff).
     */
  /* PRInt32 getAnnotationInt32 (in nsIURI aURI, in AUTF8String aName); */
  nsresult GetAnnotationInt32(nsIURI aURI, nsACString * aName, PRInt32 *_retval);

  /**
     * Same as getAnnotationString for Int64s. If the value doesn't look like
     * an int, returns 0. (this is current sqlite behavior when asking for an
     * int when there is not one, it will possibly change in the future if we
     * start caching stuff).
     */
  /* PRInt64 getAnnotationInt64 (in nsIURI aURI, in AUTF8String aName); */
  nsresult GetAnnotationInt64(nsIURI aURI, nsACString * aName, PRInt64 *_retval);

  /**
     * Same as getAnnotationString but returns a double-precision float. If the
     * value doesn't look like an float, returns 0. (this is current sqlite
     * behavior when asking for an number when there is not one, it will
     * possibly change in the future if we start caching stuff).
     */
  /* double getAnnotationDouble (in nsIURI aURI, in AUTF8String aName); */
  nsresult GetAnnotationDouble(nsIURI aURI, nsACString * aName, double *_retval);

  /**
     * Same as getAnnotationString but for binary data. This also returns the
     * MIME type.
     */
  /* void getAnnotationBinary (in nsIURI aURI, in AUTF8String aName, [array, size_is (aDataLen)] out octet aData, out PRUint32 aDataLen, out AUTF8String aMimeType); */
  nsresult GetAnnotationBinary(nsIURI aURI, nsACString * aName, PRUint8 **aData, PRUint32 *aDataLen, nsACString * aMimeType);

  /**
     * Retrieves info about an existing annotation. aMimeType will be empty
     * if the value was not binary data.
     *
     * aStorageType will be one of mozIStorageValueArray.VALUE_TYPE_* and
     * indicates how the value is stored (if you want to determine whether
     * the data is binary, etc.)
     *
     * example JS:
     *   var flags = {}, exp = {}, mimeType = {};
     *   annotator.getAnnotationInfo(myURI, "foo", flags, exp, mimeType);
     *   // now you can use 'exp.value' and 'flags.value'
     */
  /* void getAnnotationInfo (in nsIURI aURI, in AUTF8String aName, out PRInt32 aFlags, out PRInt32 aExpiration, out AUTF8String aMimeType, out PRInt32 aStorageType); */
  nsresult GetAnnotationInfo(nsIURI aURI, nsACString * aName, PRInt32 *aFlags, PRInt32 *aExpiration, nsACString * aMimeType, PRInt32 *aStorageType);

  /**
     * Returns a list of all URIs having a given annotation.
     */
  /* void getPagesWithAnnotation (in AUTF8String name, out PRUint32 resultCount, [array, size_is (resultCount), retval] out nsIURI results); */
  nsresult GetPagesWithAnnotation(nsACString * name, PRUint32 *resultCount, nsIURI **results);

  /**
     * COMArray version of getPagesWithAnnotation for easier memory
     * management from C++ code;
     */
  /* [noscript] void GetPagesWithAnnotationCOMArray (in AUTF8String aName, in URIArray aResults); */
  nsresult GetPagesWithAnnotationCOMArray(nsACString * aName, nsCOMArray<nsIURI> * aResults);

  /**
     * Get the names of all annotations for this URI.
     *
     * example JS:
     *   var annotations = annotator.getPageAnnotations(myURI, {});
     * You probably don't want to use this from C++, use
     * GetPageAnnotationsTArray instead.
     */
  /* void getPageAnnotationNames (in nsIURI aURI, out PRUint32 count, [array, size_is (count), retval] out nsIVariant result); */
  nsresult GetPageAnnotationNames(nsIURI aURI, PRUint32 *count, nsIVariant **result);

  /**
     * TArray version of getPageAnnotationNames for ease of use in C++ code.
     */
  /* [noscript] void GetPageAnnotationNamesTArray (in nsIURI aURI, in CStringArray aResult); */
  nsresult GetPageAnnotationNamesTArray(nsIURI aURI, nsTArray<nsCString> * aResult);

  /**
     * Test for annotation existance.
     */
  /* boolean hasAnnotation (in nsIURI aURI, in AUTF8String aName); */
  nsresult HasAnnotation(nsIURI aURI, nsACString * aName, PRBool *_retval);

  /**
     * Removes a specific annotation. Succeeds even if the annotation is
     * not found.
     */
  /* void removeAnnotation (in nsIURI aURI, in AUTF8String aName); */
  nsresult RemoveAnnotation(nsIURI aURI, nsACString * aName);

  /**
     * Removes all annotations for the given page.
     * We may want some other similar functions to get annotations with given
     * flags (once we have flags defined).
     */
  /* void removePageAnnotations (in nsIURI aURI); */
  nsresult RemovePageAnnotations(nsIURI aURI);

  /**
     * Copies all annotations from the source to the destination URI. If the
     * destination already has an annotation with the same name as one on the
     * source, it will be overwritten if aOverwriteDest is set. Otherwise,
     * the destination URIs will be preferred.
     *
     * All the source annotations will stay as-is. If you don't want them
     * any more, use removePageAnnotations on that URI.
     */
  /* void copyAnnotations (in nsIURI aSourceURI, in nsIURI aDestURI, in boolean aOverwriteDest); */
  nsresult CopyAnnotations(nsIURI aSourceURI, nsIURI aDestURI, PRBool aOverwriteDest);

  /**
     * Adds an annotation observer. The annotation service will keep an owning
     * reference to the observer object.
     */
  /* void addObserver (in nsIAnnotationObserver aObserver); */
  nsresult AddObserver(nsIAnnotationObserver aObserver);

  /**
     * Removes an annotaton observer previously registered by addObserver.
     */
  /* void removeObserver (in nsIAnnotationObserver aObserver); */
  nsresult RemoveObserver(nsIAnnotationObserver aObserver);

  /**
     * Returns a URI that can be used to access the given binary annotation.
     * This function does NOT check that the annotation exists. Also, note that
     * you can only load URIs for annotations that have have a valid MIME type
     * set by setAnnotationBinary. No non-URI valid chars in name, especially
     * colon, which will mess up parsing.
     */
  /* nsIURI getAnnotationURI (in nsIURI aURI, in AUTF8String aName); */
  nsresult GetAnnotationURI(nsIURI aURI, nsACString * aName, nsIURI *_retval);

}

