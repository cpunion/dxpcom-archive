/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFeedResult.idl
 */

module mozilla.dxpcom.nsIFeedResultD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFeedResult;


public import mozilla.dxpcom.nsIFeedResultD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIFeedContainer;

public import mozilla.dxpcom.nsIFeedContainerD;

public import mozilla.xpcom.nsIProperties;

public import mozilla.dxpcom.nsIPropertiesD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIFeedResult */
/**
 * The nsIFeedResult interface provides access to HTTP and parsing
 * metadata for a feed or entry.
 */
class nsIFeedResultD : public nsISupportsD {

  static const nsIID IID = NS_IFEEDRESULT_IID;


  alias nsIFeedResult InnerType;

  this(nsIFeedResult intr){
    super(intr);
    this.inner = intr;
  }

  nsIFeedResult opCast() {
    return inner;
  }

  void opAssign(nsIFeedResult value) {
    inner = value;
  }

  /** 
  * The Feed parser will set the bozo bit when a feed triggers a fatal
  * error during XML parsing. There may be entries and feed metadata
  * that were parsed before the error.  Thanks to Tim Bray for
  * suggesting this terminology.
  * <http://www.tbray.org/ongoing/When/200x/2004/01/11/PostelPilgrim>
  */
  /* attribute boolean bozo; */
  PRBool Bozo(){
    PRBool value;
    nsresult __result = inner.GetBozo(&value);
    CheckException(__result);
    return value;
  }
  void Bozo(PRBool aBozo){
    nsresult __result = inner.SetBozo(aBozo);
    CheckException(__result);
  }

  /**
  * The parsed feed or entry. 
  *
  * Will be null if a non-feed is processed.
  */
  /* attribute nsIFeedContainer doc; */
  nsIFeedContainerD  Doc(){
    nsIFeedContainer value;
    nsresult __result = inner.GetDoc(&value);
    CheckException(__result);
    return new nsIFeedContainerD(value);
  }
  void Doc(nsIFeedContainerD  aDoc){
    nsIFeedContainer value;
    nsresult __result = inner.SetDoc(value);
    CheckException(__result);
  }

  /** 
  * The address from which the feed was fetched. 
  */
  /* attribute nsIURI uri; */
  nsIURID  Uri(){
    nsIURI value;
    nsresult __result = inner.GetUri(&value);
    CheckException(__result);
    return new nsIURID(value);
  }
  void Uri(nsIURID  aUri){
    nsIURI value;
    nsresult __result = inner.SetUri(value);
    CheckException(__result);
  }

  /** 
  * Feed Version: 
  * atom, rss2, rss09, rss091, rss091userland, rss092, rss1, atom03, 
  * atomEntry, rssItem
  *
  * Will be null if a non-feed is processed.
  */
  /* attribute AString version; */
  wchar[] Version(){
    scope auto value = new AString();
    nsresult __result = inner.GetVersion(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Version(wchar[] aVersion){
    scope auto value = new AString(aVersion);
    nsresult __result = inner.SetVersion(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
  * An XSLT stylesheet available to transform the source of the
  * feed. Some feeds include this information in a processing
  * instruction. It's generally intended for clients with specific
  * feed capabilities.
  */
  /* attribute nsIURI stylesheet; */
  nsIURID  Stylesheet(){
    nsIURI value;
    nsresult __result = inner.GetStylesheet(&value);
    CheckException(__result);
    return new nsIURID(value);
  }
  void Stylesheet(nsIURID  aStylesheet){
    nsIURI value;
    nsresult __result = inner.SetStylesheet(value);
    CheckException(__result);
  }

  /**
  * HTTP response headers that accompanied the feed. 
  */
  /* attribute nsIProperties headers; */
  nsIPropertiesD  Headers(){
    nsIProperties value;
    nsresult __result = inner.GetHeaders(&value);
    CheckException(__result);
    return new nsIPropertiesD(value);
  }
  void Headers(nsIPropertiesD  aHeaders){
    nsIProperties value;
    nsresult __result = inner.SetHeaders(value);
    CheckException(__result);
  }

  /**
  * Registers a prefix used to access an extension in the feed/entry 
  */
  /* void registerExtensionPrefix (in AString namespace, in AString prefix); */
  void RegisterExtensionPrefix(wchar[] namespace, wchar[] prefix){
    scope auto _namespace = new AString(namespace);
    scope auto _prefix = new AString(prefix);
    nsresult __result = inner.RegisterExtensionPrefix(cast(nsAString*)_namespace, cast(nsAString*)_prefix);
    CheckException(__result);
  }

private:
  nsIFeedResult inner;

}

