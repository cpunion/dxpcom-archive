/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILivemarkService.idl
 */

module mozilla.xpcom.nsILivemarkService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIRemoteContainer;

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsILivemarkService */
const char[] NS_ILIVEMARKSERVICE_IID_STR = "1e66ec55-87fa-45c2-a912-dd44afb06922";

const nsIID NS_ILIVEMARKSERVICE_IID= 
  {0x1e66ec55, 0x87fa, 0x45c2, 
    [ 0xa9, 0x12, 0xdd, 0x44, 0xaf, 0xb0, 0x69, 0x22 ]};

extern(Windows)
interface nsILivemarkService : nsIRemoteContainer {
  static const char[] IID_STR = NS_ILIVEMARKSERVICE_IID_STR;
  static const nsIID IID = NS_ILIVEMARKSERVICE_IID;

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
  nsresult CreateLivemark(PRInt64 folder, nsAString * name, nsIURI siteURI, nsIURI feedURI, PRInt32 index, PRInt64 *_retval);

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
  nsresult IsLivemark(PRInt64 folder, PRBool *_retval);

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
  nsresult GetSiteURI(PRInt64 container, nsIURI *_retval);

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
  nsresult SetSiteURI(PRInt64 container, nsIURI siteURI);

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
  nsresult GetFeedURI(PRInt64 container, nsIURI *_retval);

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
  nsresult SetFeedURI(PRInt64 container, nsIURI feedURI);

  /**
	 * Reloads all livemark subscriptions, whether or not they've expired.
	 */
  /* void reloadAllLivemarks (); */
  nsresult ReloadAllLivemarks();

  /**
	 * Reloads the livemark with this folder ID, whether or not it's expired.
	 * @param folderID		The ID of the folder to be reloaded
	 */
  /* void reloadLivemarkFolder (in PRInt64 folderID); */
  nsresult ReloadLivemarkFolder(PRInt64 folderID);

}

