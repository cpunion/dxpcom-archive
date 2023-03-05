/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMicrosummaryService.idl
 */

module mozilla.xpcom.nsIMicrosummaryService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMDocument; /* forward declaration */

public import mozilla.xpcom.nsIDOMNode; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */

public import mozilla.xpcom.nsIMicrosummaryService;


/* starting interface:    nsIMicrosummaryObserver */
const char[] NS_IMICROSUMMARYOBSERVER_IID_STR = "cb284a83-1ca5-4000-9841-ce345ce84915";

const nsIID NS_IMICROSUMMARYOBSERVER_IID= 
  {0xcb284a83, 0x1ca5, 0x4000, 
    [ 0x98, 0x41, 0xce, 0x34, 0x5c, 0xe8, 0x49, 0x15 ]};

extern(Windows)
interface nsIMicrosummaryObserver : nsISupports {
  static const char[] IID_STR = NS_IMICROSUMMARYOBSERVER_IID_STR;
  static const nsIID IID = NS_IMICROSUMMARYOBSERVER_IID;

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
  nsresult OnContentLoaded(nsIMicrosummary microsummary);

  /**
     * Called when an element is appended to a microsummary set.
     * XXX Should this be in a separate nsICollectionObserver interface?
     *
     * @param microsummary
     *        the microsummary that has just been appended to the set
     *
     */
  /* void onElementAppended (in nsIMicrosummary microsummary); */
  nsresult OnElementAppended(nsIMicrosummary microsummary);

}


/* starting interface:    nsIMicrosummaryGenerator */
const char[] NS_IMICROSUMMARYGENERATOR_IID_STR = "67ffe6b0-d4db-485c-ba20-5e2e8319b78d";

const nsIID NS_IMICROSUMMARYGENERATOR_IID= 
  {0x67ffe6b0, 0xd4db, 0x485c, 
    [ 0xba, 0x20, 0x5e, 0x2e, 0x83, 0x19, 0xb7, 0x8d ]};

extern(Windows)
interface nsIMicrosummaryGenerator : nsISupports {
  static const char[] IID_STR = NS_IMICROSUMMARYGENERATOR_IID_STR;
  static const nsIID IID = NS_IMICROSUMMARYGENERATOR_IID;

  /* readonly attribute boolean loaded; */
  nsresult GetLoaded(PRBool *aLoaded);

  /* readonly attribute AUTF8String name; */
  nsresult GetName(nsACString * aName);

  /* readonly attribute nsIURI uri; */
  nsresult GetUri(nsIURI  *aUri);

  /* readonly attribute boolean needsPageContent; */
  nsresult GetNeedsPageContent(PRBool *aNeedsPageContent);

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
  nsresult GenerateMicrosummary(nsIDOMNode aPageContent, nsAString * _retval);

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
  nsresult CalculateUpdateInterval(nsIDOMNode aPageContent, PRInt32 *_retval);

}


/* starting interface:    nsIMicrosummary */
const char[] NS_IMICROSUMMARY_IID_STR = "1b1f232d-e65f-446a-9984-786578526072";

const nsIID NS_IMICROSUMMARY_IID= 
  {0x1b1f232d, 0xe65f, 0x446a, 
    [ 0x99, 0x84, 0x78, 0x65, 0x78, 0x52, 0x60, 0x72 ]};

extern(Windows)
interface nsIMicrosummary : nsISupports {
  static const char[] IID_STR = NS_IMICROSUMMARY_IID_STR;
  static const nsIID IID = NS_IMICROSUMMARY_IID;

  /* readonly attribute nsIURI pageURI; */
  nsresult GetPageURI(nsIURI  *aPageURI);

  /* attribute nsIMicrosummaryGenerator generator; */
  nsresult GetGenerator(nsIMicrosummaryGenerator  *aGenerator);
  nsresult SetGenerator(nsIMicrosummaryGenerator  aGenerator);

  /* readonly attribute AString content; */
  nsresult GetContent(nsAString * aContent);

  /* readonly attribute long updateInterval; */
  nsresult GetUpdateInterval(PRInt32 *aUpdateInterval);

  /**
     * Add a microsummary observer to this microsummary.
     *
     * @param observer
     *        the microsummary observer to add
     *
     */
  /* void addObserver (in nsIMicrosummaryObserver observer); */
  nsresult AddObserver(nsIMicrosummaryObserver observer);

  /**
     * Remove a microsummary observer from this microsummary.
     *
     * @param observer
     *        the microsummary observer to remove
     *
     */
  /* void removeObserver (in nsIMicrosummaryObserver observer); */
  nsresult RemoveObserver(nsIMicrosummaryObserver observer);

  /**
     * Update the microsummary, first loading its generator and page content
     * as necessary.  If you want know when a microsummary finishes updating,
     * add an observer before calling this method.
     *
     */
  /* void update (); */
  nsresult Update();

}


/* starting interface:    nsIMicrosummarySet */
const char[] NS_IMICROSUMMARYSET_IID_STR = "7111e88d-fecd-4b17-b7a9-1fa74e23153f";

const nsIID NS_IMICROSUMMARYSET_IID= 
  {0x7111e88d, 0xfecd, 0x4b17, 
    [ 0xb7, 0xa9, 0x1f, 0xa7, 0x4e, 0x23, 0x15, 0x3f ]};

extern(Windows)
interface nsIMicrosummarySet : nsISupports {
  static const char[] IID_STR = NS_IMICROSUMMARYSET_IID_STR;
  static const nsIID IID = NS_IMICROSUMMARYSET_IID;

  /**
     * Add a microsummary observer to this microsummary set.  Adding an observer
     * to a set is the equivalent of adding it to each constituent microsummary.
     *
     * @param observer
     *        the microsummary observer to add
     *
     */
  /* void addObserver (in nsIMicrosummaryObserver observer); */
  nsresult AddObserver(nsIMicrosummaryObserver observer);

  /**
     * Remove a microsummary observer from this microsummary.
     *
     * @param observer
     *        the microsummary observer to remove
     *
     */
  /* void removeObserver (in nsIMicrosummaryObserver observer); */
  nsresult RemoveObserver(nsIMicrosummaryObserver observer);

  /**
     * Retrieve a enumerator of microsummaries in the set.
     *
     * @returns an enumerator of nsIMicrosummary objects
     *
     */
  /* nsISimpleEnumerator Enumerate (); */
  nsresult Enumerate(nsISimpleEnumerator *_retval);

}


/* starting interface:    nsIMicrosummaryService */
const char[] NS_IMICROSUMMARYSERVICE_IID_STR = "edec7c28-4b06-4692-842f-8bf238e61ac1";

const nsIID NS_IMICROSUMMARYSERVICE_IID= 
  {0xedec7c28, 0x4b06, 0x4692, 
    [ 0x84, 0x2f, 0x8b, 0xf2, 0x38, 0xe6, 0x1a, 0xc1 ]};

extern(Windows)
interface nsIMicrosummaryService : nsISupports {
  static const char[] IID_STR = NS_IMICROSUMMARYSERVICE_IID_STR;
  static const nsIID IID = NS_IMICROSUMMARYSERVICE_IID;

  /**
     * Install the microsummary generator from the resource at the supplied URI.
     * Callable by content via the addMicrosummaryGenerator() sidebar method.
     *
     * @param   generatorURI
     *          the URI of the resource providing the generator
     *
     */
  /* void addGenerator (in nsIURI generatorURI); */
  nsresult AddGenerator(nsIURI generatorURI);

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
  nsresult InstallGenerator(nsIDOMDocument xmlDefinition, nsIMicrosummaryGenerator *_retval);

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
  nsresult GetBookmarks(nsISimpleEnumerator *_retval);

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
  nsresult GetMicrosummaries(nsIURI pageURI, nsISupports bookmarkID, nsIMicrosummarySet *_retval);

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
  nsresult GetMicrosummary(nsISupports bookmarkID, nsIMicrosummary *_retval);

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
  nsresult SetMicrosummary(nsISupports bookmarkID, nsIMicrosummary microsummary);

  /**
     * Remove the current microsummary for the given bookmark.
     *
     * @param   bookmarkID
     *          the bookmark for which to remove the current microsummary
     *
     */
  /* void removeMicrosummary (in nsISupports bookmarkID); */
  nsresult RemoveMicrosummary(nsISupports bookmarkID);

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
  nsresult HasMicrosummary(nsISupports bookmarkID, PRBool *_retval);

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
  nsresult IsMicrosummary(nsISupports bookmarkID, nsIMicrosummary microsummary, PRBool *_retval);

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
  nsresult RefreshMicrosummary(nsISupports bookmarkID, nsIMicrosummary *_retval);

}

