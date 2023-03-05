/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIURILoader.idl
 */

module mozilla.xpcom.nsIURILoader;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURIContentListener; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsILoadGroup; /* forward declaration */

public import mozilla.xpcom.nsIProgressEventSink; /* forward declaration */

public import mozilla.xpcom.nsIChannel; /* forward declaration */

public import mozilla.xpcom.nsIRequest; /* forward declaration */

public import mozilla.xpcom.nsIStreamListener; /* forward declaration */

public import mozilla.xpcom.nsIInputStream; /* forward declaration */

public import mozilla.xpcom.nsIInterfaceRequestor; /* forward declaration */


/* starting interface:    nsIURILoader */
const char[] NS_IURILOADER_IID_STR = "5cf6420c-74f3-4a7c-bc1d-f5756d79ea07";

const nsIID NS_IURILOADER_IID= 
  {0x5cf6420c, 0x74f3, 0x4a7c, 
    [ 0xbc, 0x1d, 0xf5, 0x75, 0x6d, 0x79, 0xea, 0x07 ]};

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
extern(Windows)
interface nsIURILoader : nsISupports {
  static const char[] IID_STR = NS_IURILOADER_IID_STR;
  static const nsIID IID = NS_IURILOADER_IID;

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
  nsresult RegisterContentListener(nsIURIContentListener aContentListener);

  /* void unRegisterContentListener (in nsIURIContentListener aContentListener); */
  nsresult UnRegisterContentListener(nsIURIContentListener aContentListener);

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
  nsresult OpenURI(nsIChannel aChannel, PRBool aIsContentPreferred, nsIInterfaceRequestor aWindowContext);

  /**
   * Stops an in progress load
   */
  /* void stop (in nsISupports aLoadCookie); */
  nsresult Stop(nsISupports aLoadCookie);

}

