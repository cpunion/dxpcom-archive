/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAnnotationService.idl
 */

module mozilla.dxpcom.nsIAnnotationServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAnnotationService;


public import mozilla.dxpcom.nsIAnnotationServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIVariant;

public import mozilla.dxpcom.nsIVariantD;


/* starting wrapper class:    nsIAnnotationObserver */
class nsIAnnotationObserverD : public nsISupportsD {

  static const nsIID IID = NS_IANNOTATIONOBSERVER_IID;


  alias nsIAnnotationObserver InnerType;

  this(nsIAnnotationObserver intr){
    super(intr);
    this.inner = intr;
  }

  nsIAnnotationObserver opCast() {
    return inner;
  }

  void opAssign(nsIAnnotationObserver value) {
    inner = value;
  }

  /**
     * Called when an annotation value is set. It could be a new annotation,
     * or it could be a new value for an existing annotation.
     */
  /* void onAnnotationSet (in nsIURI aURI, in AUTF8String aName); */
  void OnAnnotationSet(nsIURID aURI, char[] aName){
    scope auto _aName = new ACString(aName);
    nsresult __result = inner.OnAnnotationSet(aURI ? cast(nsIURI)aURI : null, cast(nsACString*)_aName);
    CheckException(__result);
  }

  /**
     * Called when an annotation is deleted. If aName is empty, then ALL
     * annotations for the given URI have been deleted. This is not called when
     * annotations are expired (normally happens when the app exits).
     */
  /* void onAnnotationRemoved (in nsIURI aURI, in AUTF8String aName); */
  void OnAnnotationRemoved(nsIURID aURI, char[] aName){
    scope auto _aName = new ACString(aName);
    nsresult __result = inner.OnAnnotationRemoved(aURI ? cast(nsIURI)aURI : null, cast(nsACString*)_aName);
    CheckException(__result);
  }

private:
  nsIAnnotationObserver inner;

}


/* starting wrapper class:    nsIAnnotationService */
class nsIAnnotationServiceD : public nsISupportsD {

  static const nsIID IID = NS_IANNOTATIONSERVICE_IID;


  alias nsIAnnotationService InnerType;

  this(nsIAnnotationService intr){
    super(intr);
    this.inner = intr;
  }

  nsIAnnotationService opCast() {
    return inner;
  }

  void opAssign(nsIAnnotationService value) {
    inner = value;
  }

  /**
     * Valid values for aExpiration, which sets the expiration policy for your
     * annotation. These times are measured since the last visit date of the
     * page in question. This means that if you set an annotation with anything
     * but session expiration, it will not expire so long as the user keeps
     * visiting the page from time to time.
     */
  enum { EXPIRE_SESSION = 0 }

  enum { EXPIRE_DAYS = 1 }

  enum { EXPIRE_WEEKS = 2 }

  enum { EXPIRE_MONTHS = 3 }

  enum { EXPIRE_NEVER = 4 }

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
  void SetAnnotationString(nsIURID aURI, char[] aName, wchar[] aValue, PRInt32 aFlags, PRInt32 aExpiration){
    scope auto _aName = new ACString(aName);
    scope auto _aValue = new AString(aValue);
    nsresult __result = inner.SetAnnotationString(aURI ? cast(nsIURI)aURI : null, cast(nsACString*)_aName, cast(nsAString*)_aValue, aFlags, aExpiration);
    CheckException(__result);
  }

  /**
     * Sets an annotation just like setAnnotationString, but takes an Int32 as
     * input.
     */
  /* void setAnnotationInt32 (in nsIURI aURI, in AUTF8String aName, in PRInt32 aValue, in PRInt32 aFlags, in PRInt32 aExpiration); */
  void SetAnnotationInt32(nsIURID aURI, char[] aName, PRInt32 aValue, PRInt32 aFlags, PRInt32 aExpiration){
    scope auto _aName = new ACString(aName);
    nsresult __result = inner.SetAnnotationInt32(aURI ? cast(nsIURI)aURI : null, cast(nsACString*)_aName, aValue, aFlags, aExpiration);
    CheckException(__result);
  }

  /**
     * Sets an annotation just like setAnnotationString, but takes an Int64 as
     * input.
     */
  /* void setAnnotationInt64 (in nsIURI aURI, in AUTF8String aName, in PRInt64 aValue, in PRInt32 aFlags, in PRInt32 aExpiration); */
  void SetAnnotationInt64(nsIURID aURI, char[] aName, PRInt64 aValue, PRInt32 aFlags, PRInt32 aExpiration){
    scope auto _aName = new ACString(aName);
    nsresult __result = inner.SetAnnotationInt64(aURI ? cast(nsIURI)aURI : null, cast(nsACString*)_aName, aValue, aFlags, aExpiration);
    CheckException(__result);
  }

  /**
     * Sets an annotation just like setAnnotationString, but takes a double as
     * input.
     */
  /* void setAnnotationDouble (in nsIURI aURI, in AUTF8String aName, in double aValue, in PRInt32 aFlags, in PRInt32 aExpiration); */
  void SetAnnotationDouble(nsIURID aURI, char[] aName, double aValue, PRInt32 aFlags, PRInt32 aExpiration){
    scope auto _aName = new ACString(aName);
    nsresult __result = inner.SetAnnotationDouble(aURI ? cast(nsIURI)aURI : null, cast(nsACString*)_aName, aValue, aFlags, aExpiration);
    CheckException(__result);
  }

  /* void setAnnotationBinary (in nsIURI aURI, in AUTF8String aName, [array, size_is (aDataLen), const] in octet aData, in PRUint32 aDataLen, in AUTF8String aMimeType, in PRInt32 aFlags, in PRInt32 aExpiration); */
  void SetAnnotationBinary(nsIURID aURI, char[] aName, PRUint8 *aData, PRUint32 aDataLen, char[] aMimeType, PRInt32 aFlags, PRInt32 aExpiration){
    scope auto _aName = new ACString(aName);
    scope auto _aMimeType = new ACString(aMimeType);
    nsresult __result = inner.SetAnnotationBinary(aURI ? cast(nsIURI)aURI : null, cast(nsACString*)_aName, aData, aDataLen, cast(nsACString*)_aMimeType, aFlags, aExpiration);
    CheckException(__result);
  }

  /**
     * Retrieves the string value of a given annotation. Throws an error if the
     * annotation does not exist. If the annotation was set as a different
     * type than you are retrieving it as, the value will be converted as best
     * as we can. You aren't always guaranteed a good conversion, however,
     * and errors will not be thrown in this case. (For example, doubles will
     * lose precision when stringified.)
     */
  /* AString getAnnotationString (in nsIURI aURI, in AUTF8String aName); */
  wchar[] GetAnnotationString(nsIURID aURI, char[] aName){
    scope auto _aName = new ACString(aName);
    scope auto _retval = new AString;
    nsresult __result = inner.GetAnnotationString(aURI ? cast(nsIURI)aURI : null, cast(nsACString*)_aName, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
     * Same as getAnnotationString but for ints. If the value doesn't look like
     * an int, returns 0. (this is current sqlite behavior when asking for an
     * int when there is not one, it will possibly change in the future if we
     * start caching stuff).
     */
  /* PRInt32 getAnnotationInt32 (in nsIURI aURI, in AUTF8String aName); */
  PRInt32 GetAnnotationInt32(nsIURID aURI, char[] aName){
    scope auto _aName = new ACString(aName);
    PRInt32 _retval;
    nsresult __result = inner.GetAnnotationInt32(aURI ? cast(nsIURI)aURI : null, cast(nsACString*)_aName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Same as getAnnotationString for Int64s. If the value doesn't look like
     * an int, returns 0. (this is current sqlite behavior when asking for an
     * int when there is not one, it will possibly change in the future if we
     * start caching stuff).
     */
  /* PRInt64 getAnnotationInt64 (in nsIURI aURI, in AUTF8String aName); */
  PRInt64 GetAnnotationInt64(nsIURID aURI, char[] aName){
    scope auto _aName = new ACString(aName);
    PRInt64 _retval;
    nsresult __result = inner.GetAnnotationInt64(aURI ? cast(nsIURI)aURI : null, cast(nsACString*)_aName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Same as getAnnotationString but returns a double-precision float. If the
     * value doesn't look like an float, returns 0. (this is current sqlite
     * behavior when asking for an number when there is not one, it will
     * possibly change in the future if we start caching stuff).
     */
  /* double getAnnotationDouble (in nsIURI aURI, in AUTF8String aName); */
  double GetAnnotationDouble(nsIURID aURI, char[] aName){
    scope auto _aName = new ACString(aName);
    double _retval;
    nsresult __result = inner.GetAnnotationDouble(aURI ? cast(nsIURI)aURI : null, cast(nsACString*)_aName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Same as getAnnotationString but for binary data. This also returns the
     * MIME type.
     */
  /* void getAnnotationBinary (in nsIURI aURI, in AUTF8String aName, [array, size_is (aDataLen)] out octet aData, out PRUint32 aDataLen, out AUTF8String aMimeType); */
  void GetAnnotationBinary(nsIURID aURI, char[] aName, out PRUint8 *aData, out PRUint32 aDataLen, char[] aMimeType){
    scope auto _aName = new ACString(aName);
    scope auto _aMimeType = new ACString;
    nsresult __result = inner.GetAnnotationBinary(aURI ? cast(nsIURI)aURI : null, cast(nsACString*)_aName, &aData, &aDataLen, cast(nsACString*)_aMimeType);
    CheckException(__result);
    aMimeType = _aMimeType.GetString();
  }

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
  void GetAnnotationInfo(nsIURID aURI, char[] aName, out PRInt32 aFlags, out PRInt32 aExpiration, char[] aMimeType, out PRInt32 aStorageType){
    scope auto _aName = new ACString(aName);
    scope auto _aMimeType = new ACString;
    nsresult __result = inner.GetAnnotationInfo(aURI ? cast(nsIURI)aURI : null, cast(nsACString*)_aName, &aFlags, &aExpiration, cast(nsACString*)_aMimeType, &aStorageType);
    CheckException(__result);
    aMimeType = _aMimeType.GetString();
  }

  /**
     * Returns a list of all URIs having a given annotation.
     */
  /* void getPagesWithAnnotation (in AUTF8String name, out PRUint32 resultCount, [array, size_is (resultCount), retval] out nsIURI results); */
  void GetPagesWithAnnotation(char[] name, out PRUint32 resultCount, out nsIURID *results){
    scope auto _name = new ACString(name);
    nsIURI _results;
    nsresult __result = inner.GetPagesWithAnnotation(cast(nsACString*)_name, &resultCount, &_results);
    CheckException(__result);
    results = _results ? new nsIURID(_results) : null;
  }

  /**
     * COMArray version of getPagesWithAnnotation for easier memory
     * management from C++ code;
     */
  /* [noscript] void GetPagesWithAnnotationCOMArray (in AUTF8String aName, in URIArray aResults); */
  void GetPagesWithAnnotationCOMArray(char[] aName, nsCOMArray<nsIURI> * aResults){
    scope auto _aName = new ACString(aName);
    nsresult __result = inner.GetPagesWithAnnotationCOMArray(cast(nsACString*)_aName, aResults);
    CheckException(__result);
  }

  /**
     * Get the names of all annotations for this URI.
     *
     * example JS:
     *   var annotations = annotator.getPageAnnotations(myURI, {});
     * You probably don't want to use this from C++, use
     * GetPageAnnotationsTArray instead.
     */
  /* void getPageAnnotationNames (in nsIURI aURI, out PRUint32 count, [array, size_is (count), retval] out nsIVariant result); */
  void GetPageAnnotationNames(nsIURID aURI, out PRUint32 count, out nsIVariantD *result){
    nsIVariant _result;
    nsresult __result = inner.GetPageAnnotationNames(aURI ? cast(nsIURI)aURI : null, &count, &_result);
    CheckException(__result);
    result = _result ? new nsIVariantD(_result) : null;
  }

  /**
     * TArray version of getPageAnnotationNames for ease of use in C++ code.
     */
  /* [noscript] void GetPageAnnotationNamesTArray (in nsIURI aURI, in CStringArray aResult); */
  void GetPageAnnotationNamesTArray(nsIURID aURI, nsTArray<nsCString> * aResult){
    nsresult __result = inner.GetPageAnnotationNamesTArray(aURI ? cast(nsIURI)aURI : null, aResult);
    CheckException(__result);
  }

  /**
     * Test for annotation existance.
     */
  /* boolean hasAnnotation (in nsIURI aURI, in AUTF8String aName); */
  PRBool HasAnnotation(nsIURID aURI, char[] aName){
    scope auto _aName = new ACString(aName);
    PRBool _retval;
    nsresult __result = inner.HasAnnotation(aURI ? cast(nsIURI)aURI : null, cast(nsACString*)_aName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Removes a specific annotation. Succeeds even if the annotation is
     * not found.
     */
  /* void removeAnnotation (in nsIURI aURI, in AUTF8String aName); */
  void RemoveAnnotation(nsIURID aURI, char[] aName){
    scope auto _aName = new ACString(aName);
    nsresult __result = inner.RemoveAnnotation(aURI ? cast(nsIURI)aURI : null, cast(nsACString*)_aName);
    CheckException(__result);
  }

  /**
     * Removes all annotations for the given page.
     * We may want some other similar functions to get annotations with given
     * flags (once we have flags defined).
     */
  /* void removePageAnnotations (in nsIURI aURI); */
  void RemovePageAnnotations(nsIURID aURI){
    nsresult __result = inner.RemovePageAnnotations(aURI ? cast(nsIURI)aURI : null);
    CheckException(__result);
  }

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
  void CopyAnnotations(nsIURID aSourceURI, nsIURID aDestURI, PRBool aOverwriteDest){
    nsresult __result = inner.CopyAnnotations(aSourceURI ? cast(nsIURI)aSourceURI : null, aDestURI ? cast(nsIURI)aDestURI : null, aOverwriteDest);
    CheckException(__result);
  }

  /**
     * Adds an annotation observer. The annotation service will keep an owning
     * reference to the observer object.
     */
  /* void addObserver (in nsIAnnotationObserver aObserver); */
  void AddObserver(nsIAnnotationObserverD aObserver){
    nsresult __result = inner.AddObserver(aObserver ? cast(nsIAnnotationObserver)aObserver : null);
    CheckException(__result);
  }

  /**
     * Removes an annotaton observer previously registered by addObserver.
     */
  /* void removeObserver (in nsIAnnotationObserver aObserver); */
  void RemoveObserver(nsIAnnotationObserverD aObserver){
    nsresult __result = inner.RemoveObserver(aObserver ? cast(nsIAnnotationObserver)aObserver : null);
    CheckException(__result);
  }

  /**
     * Returns a URI that can be used to access the given binary annotation.
     * This function does NOT check that the annotation exists. Also, note that
     * you can only load URIs for annotations that have have a valid MIME type
     * set by setAnnotationBinary. No non-URI valid chars in name, especially
     * colon, which will mess up parsing.
     */
  /* nsIURI getAnnotationURI (in nsIURI aURI, in AUTF8String aName); */
  nsIURID  GetAnnotationURI(nsIURID aURI, char[] aName){
    scope auto _aName = new ACString(aName);
    nsIURI _retval;
    nsresult __result = inner.GetAnnotationURI(aURI ? cast(nsIURI)aURI : null, cast(nsACString*)_aName, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

private:
  nsIAnnotationService inner;

}

