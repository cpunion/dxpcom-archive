/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMicrosummaryService.idl
 */

module mozilla.dxpcom.nsIMicrosummaryServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMicrosummaryService;


public import mozilla.dxpcom.nsIMicrosummaryServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMDocument;

public import mozilla.dxpcom.nsIDOMDocumentD;

public import mozilla.xpcom.nsIDOMNode;

public import mozilla.dxpcom.nsIDOMNodeD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;

public import mozilla.xpcom.nsIMicrosummaryService;

import mozilla.dxpcom.nsIMicrosummaryServiceD;


/* starting wrapper class:    nsIMicrosummaryObserver */
class nsIMicrosummaryObserverD : public nsISupportsD {

  static const nsIID IID = NS_IMICROSUMMARYOBSERVER_IID;


  alias nsIMicrosummaryObserver InnerType;

  this(nsIMicrosummaryObserver intr){
    super(intr);
    this.inner = intr;
  }

  nsIMicrosummaryObserver opCast() {
    return inner;
  }

  void opAssign(nsIMicrosummaryObserver value) {
    inner = value;
  }

  /**
     * Called when an observed microsummary updates its content.
     * Since an observer might watch multiple microsummaries at the same time,
     * the microsummary whose content has been updated gets passed
     * to this handler.
     * XXX Should this be onContentUpdated?
     *
     * @param microsummary
     *        the microsummary whose content has just been updated
     *
     */
  /* void onContentLoaded (in nsIMicrosummary microsummary); */
  void OnContentLoaded(nsIMicrosummaryD microsummary){
    nsresult __result = inner.OnContentLoaded(microsummary ? cast(nsIMicrosummary)microsummary : null);
    CheckException(__result);
  }

  /**
     * Called when an element is appended to a microsummary set.
     * XXX Should this be in a separate nsICollectionObserver interface?
     *
     * @param microsummary
     *        the microsummary that has just been appended to the set
     *
     */
  /* void onElementAppended (in nsIMicrosummary microsummary); */
  void OnElementAppended(nsIMicrosummaryD microsummary){
    nsresult __result = inner.OnElementAppended(microsummary ? cast(nsIMicrosummary)microsummary : null);
    CheckException(__result);
  }

private:
  nsIMicrosummaryObserver inner;

}


/* starting wrapper class:    nsIMicrosummaryGenerator */
class nsIMicrosummaryGeneratorD : public nsISupportsD {

  static const nsIID IID = NS_IMICROSUMMARYGENERATOR_IID;


  alias nsIMicrosummaryGenerator InnerType;

  this(nsIMicrosummaryGenerator intr){
    super(intr);
    this.inner = intr;
  }

  nsIMicrosummaryGenerator opCast() {
    return inner;
  }

  void opAssign(nsIMicrosummaryGenerator value) {
    inner = value;
  }

  /* readonly attribute boolean loaded; */
  PRBool Loaded(){
    PRBool value;
    nsresult __result = inner.GetLoaded(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute AUTF8String name; */
  char[] Name(){
    scope auto value = new ACString();
    nsresult __result = inner.GetName(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute nsIURI uri; */
  nsIURID  Uri(){
    nsIURI value;
    nsresult __result = inner.GetUri(&value);
    CheckException(__result);
    return new nsIURID(value);
  }

  /* readonly attribute boolean needsPageContent; */
  PRBool NeedsPageContent(){
    PRBool value;
    nsresult __result = inner.GetNeedsPageContent(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Generate a microsummary by processing the generator template
     * against the page content.  If a generator doesn't need content,
     * pass null as the parameter to this method.
     *
     * XXX In the future, this should support returning rich text content,
     * so perhaps we should make it return a DOM node now and have the caller
     * convert that to text if it doesn't support rich content.
     *
     * @param   pageContent
     *          the content of the page being summarized
     * @returns the text result of processing the template
     *
     */
  /* AString generateMicrosummary (in nsIDOMNode aPageContent); */
  wchar[] GenerateMicrosummary(nsIDOMNodeD aPageContent){
    scope auto _retval = new AString;
    nsresult __result = inner.GenerateMicrosummary(aPageContent ? cast(nsIDOMNode)aPageContent : null, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
     * Calculate the interval until the microsummary should be updated for
     * the next time, depending on the page content. If the generator doesn't
     * specify an interval, null is returned.
     *
     * @param   pageContent
     *          the content of the page being summarized
     * @returns the interval in milliseconds until the next update request
     *
     */
  /* long calculateUpdateInterval (in nsIDOMNode aPageContent); */
  PRInt32 CalculateUpdateInterval(nsIDOMNodeD aPageContent){
    PRInt32 _retval;
    nsresult __result = inner.CalculateUpdateInterval(aPageContent ? cast(nsIDOMNode)aPageContent : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIMicrosummaryGenerator inner;

}


/* starting wrapper class:    nsIMicrosummary */
class nsIMicrosummaryD : public nsISupportsD {

  static const nsIID IID = NS_IMICROSUMMARY_IID;


  alias nsIMicrosummary InnerType;

  this(nsIMicrosummary intr){
    super(intr);
    this.inner = intr;
  }

  nsIMicrosummary opCast() {
    return inner;
  }

  void opAssign(nsIMicrosummary value) {
    inner = value;
  }

  /* readonly attribute nsIURI pageURI; */
  nsIURID  PageURI(){
    nsIURI value;
    nsresult __result = inner.GetPageURI(&value);
    CheckException(__result);
    return new nsIURID(value);
  }

  /* attribute nsIMicrosummaryGenerator generator; */
  nsIMicrosummaryGeneratorD  Generator(){
    nsIMicrosummaryGenerator value;
    nsresult __result = inner.GetGenerator(&value);
    CheckException(__result);
    return new nsIMicrosummaryGeneratorD(value);
  }
  void Generator(nsIMicrosummaryGeneratorD  aGenerator){
    nsIMicrosummaryGenerator value;
    nsresult __result = inner.SetGenerator(value);
    CheckException(__result);
  }

  /* readonly attribute AString content; */
  wchar[] Content(){
    scope auto value = new AString();
    nsresult __result = inner.GetContent(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute long updateInterval; */
  PRInt32 UpdateInterval(){
    PRInt32 value;
    nsresult __result = inner.GetUpdateInterval(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Add a microsummary observer to this microsummary.
     *
     * @param observer
     *        the microsummary observer to add
     *
     */
  /* void addObserver (in nsIMicrosummaryObserver observer); */
  void AddObserver(nsIMicrosummaryObserverD observer){
    nsresult __result = inner.AddObserver(observer ? cast(nsIMicrosummaryObserver)observer : null);
    CheckException(__result);
  }

  /**
     * Remove a microsummary observer from this microsummary.
     *
     * @param observer
     *        the microsummary observer to remove
     *
     */
  /* void removeObserver (in nsIMicrosummaryObserver observer); */
  void RemoveObserver(nsIMicrosummaryObserverD observer){
    nsresult __result = inner.RemoveObserver(observer ? cast(nsIMicrosummaryObserver)observer : null);
    CheckException(__result);
  }

  /**
     * Update the microsummary, first loading its generator and page content
     * as necessary.  If you want know when a microsummary finishes updating,
     * add an observer before calling this method.
     *
     */
  /* void update (); */
  void Update(){
    nsresult __result = inner.Update();
    CheckException(__result);
  }

private:
  nsIMicrosummary inner;

}


/* starting wrapper class:    nsIMicrosummarySet */
class nsIMicrosummarySetD : public nsISupportsD {

  static const nsIID IID = NS_IMICROSUMMARYSET_IID;


  alias nsIMicrosummarySet InnerType;

  this(nsIMicrosummarySet intr){
    super(intr);
    this.inner = intr;
  }

  nsIMicrosummarySet opCast() {
    return inner;
  }

  void opAssign(nsIMicrosummarySet value) {
    inner = value;
  }

  /**
     * Add a microsummary observer to this microsummary set.  Adding an observer
     * to a set is the equivalent of adding it to each constituent microsummary.
     *
     * @param observer
     *        the microsummary observer to add
     *
     */
  /* void addObserver (in nsIMicrosummaryObserver observer); */
  void AddObserver(nsIMicrosummaryObserverD observer){
    nsresult __result = inner.AddObserver(observer ? cast(nsIMicrosummaryObserver)observer : null);
    CheckException(__result);
  }

  /**
     * Remove a microsummary observer from this microsummary.
     *
     * @param observer
     *        the microsummary observer to remove
     *
     */
  /* void removeObserver (in nsIMicrosummaryObserver observer); */
  void RemoveObserver(nsIMicrosummaryObserverD observer){
    nsresult __result = inner.RemoveObserver(observer ? cast(nsIMicrosummaryObserver)observer : null);
    CheckException(__result);
  }

  /**
     * Retrieve a enumerator of microsummaries in the set.
     *
     * @returns an enumerator of nsIMicrosummary objects
     *
     */
  /* nsISimpleEnumerator Enumerate (); */
  nsISimpleEnumeratorD  Enumerate(){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.Enumerate(&_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

private:
  nsIMicrosummarySet inner;

}


/* starting wrapper class:    nsIMicrosummaryService */
class nsIMicrosummaryServiceD : public nsISupportsD {

  static const nsIID IID = NS_IMICROSUMMARYSERVICE_IID;


  alias nsIMicrosummaryService InnerType;

  this(nsIMicrosummaryService intr){
    super(intr);
    this.inner = intr;
  }

  nsIMicrosummaryService opCast() {
    return inner;
  }

  void opAssign(nsIMicrosummaryService value) {
    inner = value;
  }

  /**
     * Install the microsummary generator from the resource at the supplied URI.
     * Callable by content via the addMicrosummaryGenerator() sidebar method.
     *
     * @param   generatorURI
     *          the URI of the resource providing the generator
     *
     */
  /* void addGenerator (in nsIURI generatorURI); */
  void AddGenerator(nsIURID generatorURI){
    nsresult __result = inner.AddGenerator(generatorURI ? cast(nsIURI)generatorURI : null);
    CheckException(__result);
  }

  /**
     * Install the microsummary generator in the given XML definition.
     *
     * @param   xmlDefinition
     *          an nsIDOMDocument XML document defining the generator
     *
     * @returns the newly-installed nsIMicrosummaryGenerator object
     *
     */
  /* nsIMicrosummaryGenerator installGenerator (in nsIDOMDocument xmlDefinition); */
  nsIMicrosummaryGeneratorD  InstallGenerator(nsIDOMDocumentD xmlDefinition){
    nsIMicrosummaryGenerator _retval;
    nsresult __result = inner.InstallGenerator(xmlDefinition ? cast(nsIDOMDocument)xmlDefinition : null, &_retval);
    CheckException(__result);
    return new nsIMicrosummaryGeneratorD(_retval);
  }

  /**
     * Get the set of bookmarks with microsummaries.
     *
     * In the old RDF-based bookmarks datastore, bookmark IDs are nsIRDFResource
     * objects.  In the new Places-based datastore, they are nsIURI objects.
     *
     * @returns an nsISimpleEnumerator enumeration of bookmark IDs
     *
     */
  /* nsISimpleEnumerator getBookmarks (); */
  nsISimpleEnumeratorD  GetBookmarks(){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.GetBookmarks(&_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

  /**
     * Get the set of microsummaries available for a given page.  The set
     * might change after this method returns, since this method will trigger
     * an asynchronous load of the page in question (if it isn't already loaded)
     * to see if it references any page-specific microsummaries.
     *
     * If the caller passes a bookmark ID, and one of the microsummaries
     * is the current one for the bookmark, this method will retrieve content
     * from the datastore for that microsummary, which is useful when callers
     * want to display a list of microsummaries for a page that isn't loaded,
     * and they want to display the actual content of the selected microsummary
     * immediately (rather than after the content is asynchronously loaded).
     *
     * @param   pageURI
     *          the URI of the page for which to retrieve available microsummaries
     *
     * @param   bookmarkID (optional)
     *          the ID of the bookmark for which this method is being called
     *
     * @returns an nsIMicrosummarySet of nsIMicrosummaries for the given page
     *
     */
  /* nsIMicrosummarySet getMicrosummaries (in nsIURI pageURI, in nsISupports bookmarkID); */
  nsIMicrosummarySetD  GetMicrosummaries(nsIURID pageURI, nsISupportsD bookmarkID){
    nsIMicrosummarySet _retval;
    nsresult __result = inner.GetMicrosummaries(pageURI ? cast(nsIURI)pageURI : null, bookmarkID ? cast(nsISupports)bookmarkID : null, &_retval);
    CheckException(__result);
    return new nsIMicrosummarySetD(_retval);
  }

  /**
     * Get the current microsummary for the given bookmark.
     *
     * @param   bookmarkID
     *          the bookmark for which to get the current microsummary
     *
     * @returns the current microsummary for the bookmark, or null
     *          if the bookmark does not have a current microsummary
     *
     */
  /* nsIMicrosummary getMicrosummary (in nsISupports bookmarkID); */
  nsIMicrosummaryD  GetMicrosummary(nsISupportsD bookmarkID){
    nsIMicrosummary _retval;
    nsresult __result = inner.GetMicrosummary(bookmarkID ? cast(nsISupports)bookmarkID : null, &_retval);
    CheckException(__result);
    return new nsIMicrosummaryD(_retval);
  }

  /**
     * Set the current microsummary for the given bookmark.
     *
     * @param   bookmarkID
     *          the bookmark for which to set the current microsummary
     *
     * @param   microsummary
     *          the microsummary to set as the current one
     *
     */
  /* void setMicrosummary (in nsISupports bookmarkID, in nsIMicrosummary microsummary); */
  void SetMicrosummary(nsISupportsD bookmarkID, nsIMicrosummaryD microsummary){
    nsresult __result = inner.SetMicrosummary(bookmarkID ? cast(nsISupports)bookmarkID : null, microsummary ? cast(nsIMicrosummary)microsummary : null);
    CheckException(__result);
  }

  /**
     * Remove the current microsummary for the given bookmark.
     *
     * @param   bookmarkID
     *          the bookmark for which to remove the current microsummary
     *
     */
  /* void removeMicrosummary (in nsISupports bookmarkID); */
  void RemoveMicrosummary(nsISupportsD bookmarkID){
    nsresult __result = inner.RemoveMicrosummary(bookmarkID ? cast(nsISupports)bookmarkID : null);
    CheckException(__result);
  }

  /**
     * Whether or not the given bookmark has a current microsummary.
     *
     * @param   bookmarkID
     *          the bookmark for which to set the current microsummary
     *
     * @returns a boolean representing whether or not the given bookmark
     *          has a current microsummary
     *
     */
  /* boolean hasMicrosummary (in nsISupports bookmarkID); */
  PRBool HasMicrosummary(nsISupportsD bookmarkID){
    PRBool _retval;
    nsresult __result = inner.HasMicrosummary(bookmarkID ? cast(nsISupports)bookmarkID : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Whether or not the given microsummary is the current microsummary
     * for the given bookmark.
     *
     * @param   bookmarkID
     *          the bookmark to check
     *
     * @param   microsummary
     *          the microsummary to check
     *
     * @returns whether or not the microsummary is the current one
     *          for the bookmark
     *
     */
  /* boolean isMicrosummary (in nsISupports bookmarkID, in nsIMicrosummary microsummary); */
  PRBool IsMicrosummary(nsISupportsD bookmarkID, nsIMicrosummaryD microsummary){
    PRBool _retval;
    nsresult __result = inner.IsMicrosummary(bookmarkID ? cast(nsISupports)bookmarkID : null, microsummary ? cast(nsIMicrosummary)microsummary : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Refresh a microsummary, updating its value in the datastore and UI.
     * If this method can refresh the microsummary instantly, it will.
     * Otherwise, it'll asynchronously download the necessary information
     * (the generator and/or page) before refreshing the microsummary.
     *
     * Callers should check the "content" property of the returned microsummary
     * object to distinguish between sync and async refreshes.  If its value
     * is "null", then it's an async refresh, and the caller should register
     * itself as an nsIMicrosummaryObserver via nsIMicrosummary.addObserver()
     * to find out when the refresh completes.
     *
     * @param   bookmarkID
     *          the bookmark whose microsummary is being refreshed
     *
     * @returns the microsummary being refreshed
     *
     */
  /* nsIMicrosummary refreshMicrosummary (in nsISupports bookmarkID); */
  nsIMicrosummaryD  RefreshMicrosummary(nsISupportsD bookmarkID){
    nsIMicrosummary _retval;
    nsresult __result = inner.RefreshMicrosummary(bookmarkID ? cast(nsISupports)bookmarkID : null, &_retval);
    CheckException(__result);
    return new nsIMicrosummaryD(_retval);
  }

private:
  nsIMicrosummaryService inner;

}

