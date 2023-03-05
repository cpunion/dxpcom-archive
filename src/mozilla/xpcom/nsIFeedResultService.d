/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFeedResultService.idl
 */

module mozilla.xpcom.nsIFeedResultService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIRequest; /* forward declaration */

public import mozilla.xpcom.nsIFeedResult; /* forward declaration */


/* starting interface:    nsIFeedResultService */
const char[] NS_IFEEDRESULTSERVICE_IID_STR = "f3262589-48b2-4019-9947-90e5269bbfb9";

const nsIID NS_IFEEDRESULTSERVICE_IID= 
  {0xf3262589, 0x48b2, 0x4019, 
    [ 0x99, 0x47, 0x90, 0xe5, 0x26, 0x9b, 0xbf, 0xb9 ]};

/**
 * nsIFeedResultService provides a globally-accessible object for retreiving
 * the results of feed processing.
 */
extern(Windows)
interface nsIFeedResultService : nsISupports {
  static const char[] IID_STR = NS_IFEEDRESULTSERVICE_IID_STR;
  static const nsIID IID = NS_IFEEDRESULTSERVICE_IID;

  /**
   * When set to true, forces the preview page to be displayed, regardless
   * of the user's preferences.
   */
  /* attribute boolean forcePreviewPage; */
  nsresult GetForcePreviewPage(PRBool *aForcePreviewPage);
  nsresult SetForcePreviewPage(PRBool aForcePreviewPage);

  /**
   * Adds a URI to the user's specified external feed handler, or live 
   * bookmarks. 
   * @param   uri
   *          The uri of the feed to add.
   * @param   title
   *          The title of the feed to add.
   * @param   subtitle
   *          The subtitle of the feed to add.
   */
  /* void addToClientReader (in AUTF8String uri, in AString title, in AString subtitle); */
  nsresult AddToClientReader(nsACString * uri, nsAString * title, nsAString * subtitle);

  /**
   * Registers a Feed Result object with a globally accessible service
   * so that it can be accessed by a singleton method outside the usual
   * flow of control in document loading.
   *
   * @param   feedResult
   *          An object implementing nsIFeedResult representing the feed.
   */
  /* void addFeedResult (in nsIFeedResult feedResult); */
  nsresult AddFeedResult(nsIFeedResult feedResult);

  /**
   * Gets a Feed Handler object registered using addFeedResult.
   *
   * @param   uri
   *          The URI of the feed a handler is being requested for
   */
  /* nsIFeedResult getFeedResult (in nsIURI uri); */
  nsresult GetFeedResult(nsIURI uri, nsIFeedResult *_retval);

  /**
   * Unregisters a Feed Handler object registered using addFeedResult.
   * @param   uri
   *          The feed URI the handler was registered under. This must be
   *          the same *instance* the feed was registered under.
   */
  /* void removeFeedResult (in nsIURI uri); */
  nsresult RemoveFeedResult(nsIURI uri);

}

