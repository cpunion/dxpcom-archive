/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebBrowser.idl
 */

module mozilla.dxpcom.nsIWebBrowserD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWebBrowser;


public import mozilla.dxpcom.nsIWebBrowserD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIInterfaceRequestor;

public import mozilla.dxpcom.nsIInterfaceRequestorD;

public import mozilla.xpcom.nsIWebBrowserChrome;

public import mozilla.dxpcom.nsIWebBrowserChromeD;

public import mozilla.xpcom.nsIURIContentListener;

public import mozilla.dxpcom.nsIURIContentListenerD;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.dxpcom.nsIDOMWindowD;

public import mozilla.xpcom.nsIWeakReference;

public import mozilla.dxpcom.nsIWeakReferenceD;


/* starting wrapper class:    nsIWebBrowser */
/**
 * The nsIWebBrowser interface is implemented by web browser objects.
 * Embedders use this interface during initialisation to associate
 * the new web browser instance with the embedders chrome and
 * to register any listeners. The interface may also be used at runtime
 * to obtain the content DOM window and from that the rest of the DOM.
 *
 * @status FROZEN
 */
class nsIWebBrowserD : public nsISupportsD {

  static const nsIID IID = NS_IWEBBROWSER_IID;


  alias nsIWebBrowser InnerType;

  this(nsIWebBrowser intr){
    super(intr);
    this.inner = intr;
  }

  nsIWebBrowser opCast() {
    return inner;
  }

  void opAssign(nsIWebBrowser value) {
    inner = value;
  }

  /**
     * Registers a listener of the type specified by the iid to receive
     * callbacks. The browser stores a weak reference to the listener
     * to avoid any circular dependencies.
     * Typically this method will be called to register an object
     * to receive <CODE>nsIWebProgressListener</CODE> or 
     * <CODE>nsISHistoryListener</CODE> notifications in which case the
     * the IID is that of the interface.
     *
     * @param aListener The listener to be added.
     * @param aIID      The IID of the interface that will be called
     *                  on the listener as appropriate.
     * @return          <CODE>NS_OK</CODE> for successful registration;
     *                  <CODE>NS_ERROR_INVALID_ARG</CODE> if aIID is not
     *                  supposed to be registered using this method;
     *                  <CODE>NS_ERROR_FAILURE</CODE> either aListener did not
     *                  expose the interface specified by the IID, or some
     *                  other internal error occurred.
     *
     * @see removeWebBrowserListener
     * @see nsIWeakReference
     * @see nsIWebProgressListener
     * @see nsISHistoryListener
     *
     * @return <CODE>NS_OK</CODE>, listener was successfully added;
     *         <CODE>NS_ERROR_INVALID_ARG</CODE>, one of the arguments was
     *         invalid or the object did not implement the interface
     *         specified by the IID.
     */
  /* void addWebBrowserListener (in nsIWeakReference aListener, in nsIIDRef aIID); */
  void AddWebBrowserListener(nsIWeakReferenceD aListener, nsIID * aIID){
    nsresult __result = inner.AddWebBrowserListener(aListener ? cast(nsIWeakReference)aListener : null, aIID);
    CheckException(__result);
  }

  /**
     * Removes a previously registered listener.
     *
     * @param aListener The listener to be removed.
     * @param aIID      The IID of the interface on the listener that will
     *                  no longer be called.
     *
     * @return <CODE>NS_OK</CODE>, listener was successfully removed;
     *         <CODE>NS_ERROR_INVALID_ARG</CODE> arguments was invalid or
     *         the object did not implement the interface specified by the IID.
     *
     * @see addWebBrowserListener
     * @see nsIWeakReference
     */
  /* void removeWebBrowserListener (in nsIWeakReference aListener, in nsIIDRef aIID); */
  void RemoveWebBrowserListener(nsIWeakReferenceD aListener, nsIID * aIID){
    nsresult __result = inner.RemoveWebBrowserListener(aListener ? cast(nsIWeakReference)aListener : null, aIID);
    CheckException(__result);
  }

  /**
     * The chrome object associated with the browser instance. The embedder
     * must create one chrome object for <I>each</I> browser object
     * that is instantiated. The embedder must associate the two by setting
     * this property to point to the chrome object before creating the browser
     * window via the browser's <CODE>nsIBaseWindow</CODE> interface. 
     *
     * The chrome object must also implement <CODE>nsIEmbeddingSiteWindow</CODE>.
     *
     * The chrome may optionally implement <CODE>nsIInterfaceRequestor</CODE>,
     * <CODE>nsIWebBrowserChromeFocus</CODE>,
     * <CODE>nsIContextMenuListener</CODE> and
     * <CODE>nsITooltipListener</CODE> to receive additional notifications
     * from the browser object.
     *
     * The chrome object may optionally implement <CODE>nsIWebProgressListener</CODE> 
     * instead of explicitly calling <CODE>addWebBrowserListener</CODE> and
     * <CODE>removeWebBrowserListener</CODE> to register a progress listener
     * object. If the implementation does this, it must also implement
     * <CODE>nsIWeakReference</CODE>.
     * 
     * @note The implementation should not refcount the supplied chrome
     *       object; it should assume that a non <CODE>nsnull</CODE> value is
     *       always valid. The embedder must explicitly set this value back
     *       to nsnull if the chrome object is destroyed before the browser
     *       object.
     *
     * @see nsIBaseWindow
     * @see nsIWebBrowserChrome
     * @see nsIEmbeddingSiteWindow
     * @see nsIInterfaceRequestor
     * @see nsIWebBrowserChromeFocus
     * @see nsIContextMenuListener
     * @see nsITooltipListener
     * @see nsIWeakReference
     * @see nsIWebProgressListener
     */
  /* attribute nsIWebBrowserChrome containerWindow; */
  nsIWebBrowserChromeD  ContainerWindow(){
    nsIWebBrowserChrome value;
    nsresult __result = inner.GetContainerWindow(&value);
    CheckException(__result);
    return new nsIWebBrowserChromeD(value);
  }
  void ContainerWindow(nsIWebBrowserChromeD  aContainerWindow){
    nsIWebBrowserChrome value;
    nsresult __result = inner.SetContainerWindow(value);
    CheckException(__result);
  }

  /**
     * URI content listener parent. The embedder may set this property to
     * their own implementation if they intend to override or prevent
     * how certain kinds of content are loaded.
     *
     * @note If this attribute is set to an object that implements
     *       nsISupportsWeakReference, the implementation should get the
     *       nsIWeakReference and hold that.  Otherwise, the implementation
     *       should not refcount this interface; it should assume that a non
     *       null value is always valid.  In that case, the embedder should
     *       explicitly set this value back to null if the parent content
     *       listener is destroyed before the browser object.
     *
     * @see nsIURIContentListener
     */
  /* attribute nsIURIContentListener parentURIContentListener; */
  nsIURIContentListenerD  ParentURIContentListener(){
    nsIURIContentListener value;
    nsresult __result = inner.GetParentURIContentListener(&value);
    CheckException(__result);
    return new nsIURIContentListenerD(value);
  }
  void ParentURIContentListener(nsIURIContentListenerD  aParentURIContentListener){
    nsIURIContentListener value;
    nsresult __result = inner.SetParentURIContentListener(value);
    CheckException(__result);
  }

  /**
     * The top-level DOM window. The embedder may walk the entire
     * DOM starting from this value.
     *
     * @see nsIDOMWindow
     */
  /* readonly attribute nsIDOMWindow contentDOMWindow; */
  nsIDOMWindowD  ContentDOMWindow(){
    nsIDOMWindow value;
    nsresult __result = inner.GetContentDOMWindow(&value);
    CheckException(__result);
    return new nsIDOMWindowD(value);
  }

private:
  nsIWebBrowser inner;

}

