/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIURILoader.idl
 */

module mozilla.dxpcom.nsIURILoaderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIURILoader;


public import mozilla.dxpcom.nsIURILoaderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURIContentListener;

public import mozilla.dxpcom.nsIURIContentListenerD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsILoadGroup;

public import mozilla.dxpcom.nsILoadGroupD;

public import mozilla.xpcom.nsIProgressEventSink;

public import mozilla.dxpcom.nsIProgressEventSinkD;

public import mozilla.xpcom.nsIChannel;

public import mozilla.dxpcom.nsIChannelD;

public import mozilla.xpcom.nsIRequest;

public import mozilla.dxpcom.nsIRequestD;

public import mozilla.xpcom.nsIStreamListener;

public import mozilla.dxpcom.nsIStreamListenerD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;

public import mozilla.xpcom.nsIInterfaceRequestor;

public import mozilla.dxpcom.nsIInterfaceRequestorD;


/* starting wrapper class:    nsIURILoader */
/**
 * The uri dispatcher is responsible for taking uri's, determining
 * the content and routing the opened url to the correct content 
 * handler. 
 *
 * When you encounter a url you want to open, you typically call 
 * openURI, passing it the content listener for the window the uri is 
 * originating from. The uri dispatcher opens the url to discover the 
 * content type. It then gives the content listener first crack at 
 * handling the content. If it doesn't want it, the dispatcher tries
 * to hand it off one of the registered content listeners. This allows
 * running applications the chance to jump in and handle the content.
 *
 * If that also fails, then the uri dispatcher goes to the registry
 * looking for the preferred content handler for the content type
 * of the uri. The content handler may create an app instance
 * or it may hand the contents off to a platform specific plugin
 * or helper app. Or it may hand the url off to an OS registered 
 * application. 
 */
class nsIURILoaderD : public nsISupportsD {

  static const nsIID IID = NS_IURILOADER_IID;


  alias nsIURILoader InnerType;

  this(nsIURILoader intr){
    super(intr);
    this.inner = intr;
  }

  nsIURILoader opCast() {
    return inner;
  }

  void opAssign(nsIURILoader value) {
    inner = value;
  }

  /**
   * As applications such as messenger and the browser are instantiated,
   * they register content listener's with the uri dispatcher corresponding
   * to content windows within that application. 
   *
   * Note to self: we may want to optimize things a bit more by requiring
   * the content types the registered content listener cares about.
   *
   * @param aContentListener
   *        The listener to register. This listener must implement
   *        nsISupportsWeakReference.
   *
   * @see the nsIURILoader class description
   */
  /* void registerContentListener (in nsIURIContentListener aContentListener); */
  void RegisterContentListener(nsIURIContentListenerD aContentListener){
    nsresult __result = inner.RegisterContentListener(aContentListener ? cast(nsIURIContentListener)aContentListener : null);
    CheckException(__result);
  }

  /* void unRegisterContentListener (in nsIURIContentListener aContentListener); */
  void UnRegisterContentListener(nsIURIContentListenerD aContentListener){
    nsresult __result = inner.UnRegisterContentListener(aContentListener ? cast(nsIURIContentListener)aContentListener : null);
    CheckException(__result);
  }

  /**
   * OpenURI requires the following parameters.....
   * @param aChannel
   *        The channel that should be opened. This must not be asyncOpen'd yet!
   *        If a loadgroup is set on the channel, it will get replaced with a
   *        different one.
   * @param aIsContentPreferred
   *        Should the content be displayed in a container that prefers the
   *        content-type, or will any container do.
   * @param aWindowContext
   *        If you are running the url from a doc shell or a web shell, this is
   *        your window context. If you have a content listener you want to
   *        give first crack to, the uri loader needs to be able to get it
   *        from the window context. We will also be using the window context
   *        to get at the progress event sink interface.
   *        <b>Must not be null!</b>
   */
  /* void openURI (in nsIChannel aChannel, in boolean aIsContentPreferred, in nsIInterfaceRequestor aWindowContext); */
  void OpenURI(nsIChannelD aChannel, PRBool aIsContentPreferred, nsIInterfaceRequestorD aWindowContext){
    nsresult __result = inner.OpenURI(aChannel ? cast(nsIChannel)aChannel : null, aIsContentPreferred, aWindowContext ? cast(nsIInterfaceRequestor)aWindowContext : null);
    CheckException(__result);
  }

  /**
   * Stops an in progress load
   */
  /* void stop (in nsISupports aLoadCookie); */
  void Stop(nsISupportsD aLoadCookie){
    nsresult __result = inner.Stop(aLoadCookie ? cast(nsISupports)aLoadCookie : null);
    CheckException(__result);
  }

private:
  nsIURILoader inner;

}

