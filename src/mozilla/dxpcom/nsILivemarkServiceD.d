/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILivemarkService.idl
 */

module mozilla.dxpcom.nsILivemarkServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsILivemarkService;


public import mozilla.dxpcom.nsILivemarkServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIRemoteContainer;
public import mozilla.dxpcom.nsIRemoteContainerD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsILivemarkService */
class nsILivemarkServiceD : public nsIRemoteContainerD {

  static const nsIID IID = NS_ILIVEMARKSERVICE_IID;


  alias nsILivemarkService InnerType;

  this(nsILivemarkService intr){
    super(intr);
    this.inner = intr;
  }

  nsILivemarkService opCast() {
    return inner;
  }

  void opAssign(nsILivemarkService value) {
    inner = value;
  }

  /**
   * Creates a new livemark
   * @param folder      The id of the parent folder
   * @param name        The name to show when displaying the livemark
   * @param siteURI     The URI of the site the livemark was created from
   * @param feedURI     The URI of the actual RSS feed
   * @param index       The index to insert at, or -1 to append
   * @returns the ID of the folder for the livemark
   */
  /* PRInt64 createLivemark (in PRInt64 folder, in AString name, in nsIURI siteURI, in nsIURI feedURI, in PRInt32 index); */
  PRInt64 CreateLivemark(PRInt64 folder, wchar[] name, nsIURID siteURI, nsIURID feedURI, PRInt32 index){
    scope auto _name = new AString(name);
    PRInt64 _retval;
    nsresult __result = inner.CreateLivemark(folder, cast(nsAString*)_name, siteURI ? cast(nsIURI)siteURI : null, feedURI ? cast(nsIURI)feedURI : null, index, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Determines whether the folder with the given folder ID identifies
   * a livemark container.
   *
   * @param folder    A folder ID
   *
   * @returns true if the given folder is a livemark folder, or
   *          false otherwise
   *
   * @throws NS_ERROR_INVALID_ARG if the folder ID isn't known
   */
  /* boolean isLivemark (in PRInt64 folder); */
  PRBool IsLivemark(PRInt64 folder){
    PRBool _retval;
    nsresult __result = inner.IsLivemark(folder, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Gets the URI of the website associated with a livemark container.
   *
   * @param container  The folder ID of a livemark container
   *
   * @returns nsIURI representing the URI of the website; if the livemark
   *          container doesn't have a valid site URI, null will be returned
   *
   * @throws NS_ERROR_INVALID_ARG if the folder ID isn't known or identifies
   *         a folder that isn't a livemark container
   * @throws NS_ERROR_MALFORMED_URI if the site URI annotation has
   *         somehow been corrupted (and can't be turned into an nsIURI)
   */
  /* nsIURI getSiteURI (in PRInt64 container); */
  nsIURID  GetSiteURI(PRInt64 container){
    nsIURI _retval;
    nsresult __result = inner.GetSiteURI(container, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /**
   * Sets the URI of the website associated with a livemark container.
   *
   * @param container  The folder ID of a livemark container
   * @param siteURI    nsIURI object representing the site URI, or null
   *                   to clear the site URI for this livemark container
   *
   * @throws NS_ERROR_INVALID_ARG if the folder ID isn't known or identifies
   *         a folder that isn't a livemark container; also if the siteURI
   *         argument isn't a valid nsIURI object (or null)
   */
  /* void setSiteURI (in PRInt64 container, in nsIURI siteURI); */
  void SetSiteURI(PRInt64 container, nsIURID siteURI){
    nsresult __result = inner.SetSiteURI(container, siteURI ? cast(nsIURI)siteURI : null);
    CheckException(__result);
  }

  /**
   * Gets the URI of the syndication feed associated with a livemark container.
   *
   * @param container  The folder ID of a livemark container
   *
   * @returns nsIURI representing the URI of the feed; if the livemark
   *          container doesn't have a valid feed URI, null will be returned
   *          of the nsIURI object returned will be the empty string.
   *
   * @throws NS_ERROR_INVALID_ARG if the folder ID isn't known or identifies
   *         a folder that isn't a livemark container
   * @throws NS_ERROR_MALFORMED_URI if the site URI annotation has
   *         somehow been corrupted (and can't be turned into an nsIURI)
   */
  /* nsIURI getFeedURI (in PRInt64 container); */
  nsIURID  GetFeedURI(PRInt64 container){
    nsIURI _retval;
    nsresult __result = inner.GetFeedURI(container, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /**
   * Sets the URI of the feed associated with a livemark container.
   *
   * NOTE: The caller is responsible for reloading the livemark after
   *       changing its feed URI (since the contents are likely to be different
   *       given a different feed).
   *
   * @param container  The folder ID of a livemark container
   * @param feedURI    nsIURI object representing the syndication feed URI
   *
   * @throws NS_ERROR_INVALID_ARG if the folder ID isn't known or identifies
   *         a folder that isn't a livemark container; also if the feedURI
   *         argument isn't a valid nsIURI object
   */
  /* void setFeedURI (in PRInt64 container, in nsIURI feedURI); */
  void SetFeedURI(PRInt64 container, nsIURID feedURI){
    nsresult __result = inner.SetFeedURI(container, feedURI ? cast(nsIURI)feedURI : null);
    CheckException(__result);
  }

  /**
	 * Reloads all livemark subscriptions, whether or not they've expired.
	 */
  /* void reloadAllLivemarks (); */
  void ReloadAllLivemarks(){
    nsresult __result = inner.ReloadAllLivemarks();
    CheckException(__result);
  }

  /**
	 * Reloads the livemark with this folder ID, whether or not it's expired.
	 * @param folderID		The ID of the folder to be reloaded
	 */
  /* void reloadLivemarkFolder (in PRInt64 folderID); */
  void ReloadLivemarkFolder(PRInt64 folderID){
    nsresult __result = inner.ReloadLivemarkFolder(folderID);
    CheckException(__result);
  }

private:
  nsILivemarkService inner;

}

