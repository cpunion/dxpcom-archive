/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFeedResultService.idl
 */

module mozilla.dxpcom.nsIFeedResultServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFeedResultService;


public import mozilla.dxpcom.nsIFeedResultServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIRequest;

public import mozilla.dxpcom.nsIRequestD;

public import mozilla.xpcom.nsIFeedResult;

public import mozilla.dxpcom.nsIFeedResultD;


/* starting wrapper class:    nsIFeedResultService */
/**
 * nsIFeedResultService provides a globally-accessible object for retreiving
 * the results of feed processing.
 */
class nsIFeedResultServiceD : public nsISupportsD {

  static const nsIID IID = NS_IFEEDRESULTSERVICE_IID;


  alias nsIFeedResultService InnerType;

  this(nsIFeedResultService intr){
    super(intr);
    this.inner = intr;
  }

  nsIFeedResultService opCast() {
    return inner;
  }

  void opAssign(nsIFeedResultService value) {
    inner = value;
  }

  /**
   * When set to true, forces the preview page to be displayed, regardless
   * of the user's preferences.
   */
  /* attribute boolean forcePreviewPage; */
  PRBool ForcePreviewPage(){
    PRBool value;
    nsresult __result = inner.GetForcePreviewPage(&value);
    CheckException(__result);
    return value;
  }
  void ForcePreviewPage(PRBool aForcePreviewPage){
    nsresult __result = inner.SetForcePreviewPage(aForcePreviewPage);
    CheckException(__result);
  }

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
  void AddToClientReader(char[] uri, wchar[] title, wchar[] subtitle){
    scope auto _uri = new ACString(uri);
    scope auto _title = new AString(title);
    scope auto _subtitle = new AString(subtitle);
    nsresult __result = inner.AddToClientReader(cast(nsACString*)_uri, cast(nsAString*)_title, cast(nsAString*)_subtitle);
    CheckException(__result);
  }

  /**
   * Registers a Feed Result object with a globally accessible service
   * so that it can be accessed by a singleton method outside the usual
   * flow of control in document loading.
   *
   * @param   feedResult
   *          An object implementing nsIFeedResult representing the feed.
   */
  /* void addFeedResult (in nsIFeedResult feedResult); */
  void AddFeedResult(nsIFeedResultD feedResult){
    nsresult __result = inner.AddFeedResult(feedResult ? cast(nsIFeedResult)feedResult : null);
    CheckException(__result);
  }

  /**
   * Gets a Feed Handler object registered using addFeedResult.
   *
   * @param   uri
   *          The URI of the feed a handler is being requested for
   */
  /* nsIFeedResult getFeedResult (in nsIURI uri); */
  nsIFeedResultD  GetFeedResult(nsIURID uri){
    nsIFeedResult _retval;
    nsresult __result = inner.GetFeedResult(uri ? cast(nsIURI)uri : null, &_retval);
    CheckException(__result);
    return new nsIFeedResultD(_retval);
  }

  /**
   * Unregisters a Feed Handler object registered using addFeedResult.
   * @param   uri
   *          The feed URI the handler was registered under. This must be
   *          the same *instance* the feed was registered under.
   */
  /* void removeFeedResult (in nsIURI uri); */
  void RemoveFeedResult(nsIURID uri){
    nsresult __result = inner.RemoveFeedResult(uri ? cast(nsIURI)uri : null);
    CheckException(__result);
  }

private:
  nsIFeedResultService inner;

}

