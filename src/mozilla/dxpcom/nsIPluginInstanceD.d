/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPluginInstance.idl
 */

module mozilla.dxpcom.nsIPluginInstanceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPluginInstance;


public import mozilla.dxpcom.nsIPluginInstanceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIPluginStreamListener;
public import mozilla.dxpcom.nsIPluginStreamListenerD;

public import mozilla.xpcom.nsIPluginInstancePeer;

public import mozilla.dxpcom.nsIPluginInstancePeerD;


/* starting wrapper class:    nsIPluginInstance */
/**
 * The nsIPluginInstance interface is the minimum interface plugin developers
 * need to support in order to implement a plugin instance. The plugin manager
 * may QueryInterface for more specific types, e.g. nsILiveConnectPluginInstance. 
 *
 * (Corresponds to NPP object.)
 *
 * The old NPP_Destroy call has been factored into two plugin instance 
 * methods:
 *
 * Stop -- called when the plugin instance is to be stopped (e.g. by 
 * displaying another plugin manager window, causing the page containing 
 * the plugin to become removed from the display).
 *
 * Destroy -- called once, before the plugin instance peer is to be 
 * destroyed. This method is used to destroy the plugin instance.
 */
class nsIPluginInstanceD : public nsISupportsD {

  static const nsIID IID = NS_IPLUGININSTANCE_IID;


  alias nsIPluginInstance InnerType;

  this(nsIPluginInstance intr){
    super(intr);
    this.inner = intr;
  }

  nsIPluginInstance opCast() {
    return inner;
  }

  void opAssign(nsIPluginInstance value) {
    inner = value;
  }

  /**
     * Initializes a newly created plugin instance, passing to it the
     * plugin instance peer which it should use for all communication
     * back to the browser.
     * 
     * @param aPeer - the corresponding plugin instance peer
     * @result      - NS_OK if this operation was successful
     */
  /* void initialize (in nsIPluginInstancePeer aPeer); */
  void Initialize(nsIPluginInstancePeerD aPeer){
    nsresult __result = inner.Initialize(aPeer ? cast(nsIPluginInstancePeer)aPeer : null);
    CheckException(__result);
  }

  /**
     * Returns a reference back to the plugin instance peer. This method is
     * used whenever the browser needs to obtain the peer back from a plugin
     * instance. The implementation of this method should be sure to increment
     * the reference count on the peer by calling AddRef.
     *
     * @param aPeer - the resulting plugin instance peer
     * @result      - NS_OK if this operation was successful
     */
  /* readonly attribute nsIPluginInstancePeer peer; */
  nsIPluginInstancePeerD  Peer(){
    nsIPluginInstancePeer value;
    nsresult __result = inner.GetPeer(&value);
    CheckException(__result);
    return new nsIPluginInstancePeerD(value);
  }

  /**
     * Called to instruct the plugin instance to start. This will be
     * called after the plugin is first created and initialized, and
     * may be called after the plugin is stopped (via the Stop method)
     * if the plugin instance is returned to in the browser window's
     * history.
     *
     * @result - NS_OK if this operation was successful
     */
  /* void start (); */
  void Start(){
    nsresult __result = inner.Start();
    CheckException(__result);
  }

  /**
     * Called to instruct the plugin instance to stop, thereby
     * suspending its state.  This method will be called whenever the
     * browser window goes on to display another page and the page
     * containing the plugin goes into the window's history list.
     *
     * @result - NS_OK if this operation was successful
     */
  /* void stop (); */
  void Stop(){
    nsresult __result = inner.Stop();
    CheckException(__result);
  }

  /**
     * Called to instruct the plugin instance to destroy itself. This
     * is called when it become no longer possible to return to the
     * plugin instance, either because the browser window's history
     * list of pages is being trimmed, or because the window
     * containing this page in the history is being closed.
     *
     * @result - NS_OK if this operation was successful
     */
  /* void destroy (); */
  void Destroy(){
    nsresult __result = inner.Destroy();
    CheckException(__result);
  }

  /**
     * Called when the window containing the plugin instance changes.
     *
     * (Corresponds to NPP_SetWindow.)
     *
     * @param aWindow - the plugin window structure
     * @result        - NS_OK if this operation was successful
     */
  /* void setWindow (in nsPluginWindowPtr aWindow); */
  void SetWindow(nsPluginWindow * aWindow){
    nsresult __result = inner.SetWindow(aWindow);
    CheckException(__result);
  }

  /**
     * Called to tell the plugin that the initial src/data stream is
	 * ready.  Expects the plugin to return a nsIPluginStreamListener.
     *
     * (Corresponds to NPP_NewStream.)
     *
     * @param aListener - listener the browser will use to give the plugin the data
     * @result          - NS_OK if this operation was successful
     */
  /* void newStream (out nsIPluginStreamListener aListener); */
  void NewStream(out nsIPluginStreamListenerD aListener){
    nsIPluginStreamListener _aListener;
    nsresult __result = inner.NewStream(&_aListener);
    CheckException(__result);
    aListener = _aListener ? new nsIPluginStreamListenerD(_aListener) : null;
  }

  /**
     * Called to instruct the plugin instance to print itself to a printer.
     *
     * (Corresponds to NPP_Print.)
     *
     * @param aPlatformPrint - platform-specific printing information
     * @result               - NS_OK if this operation was successful
     */
  /* void print (in nsPluginPrintPtr aPlatformPrint); */
  void Print(nsPluginPrint * aPlatformPrint){
    nsresult __result = inner.Print(aPlatformPrint);
    CheckException(__result);
  }

  /**
     * Returns the value of a variable associated with the plugin instance.
     *
     * @param aVariable - the plugin instance variable to get
     * @param aValue    - the address of where to store the resulting value
     * @result          - NS_OK if this operation was successful
     */
  /* void getValue (in nsPluginInstanceVariable aVariable, in voidPtr aValue); */
  void GetValue(nsPluginInstanceVariable aVariable, void * aValue){
    nsresult __result = inner.GetValue(aVariable, aValue);
    CheckException(__result);
  }

  /**
     * Handles an event. An nsIEventHandler can also get registered with with
     * nsIPluginManager2::RegisterWindow and will be called whenever an event
     * comes in for that window.
     *
     * Note that for Unix and Mac the nsPluginEvent structure is different
     * from the old NPEvent structure -- it's no longer the native event
     * record, but is instead a struct. This was done for future extensibility,
     * and so that the Mac could receive the window argument too. For Windows
     * and OS2, it's always been a struct, so there's no change for them.
     *
     * (Corresponds to NPP_HandleEvent.)
     *
     * @param aEvent   - the event to be handled
     * @param aHandled - set to PR_TRUE if event was handled
     * @result - NS_OK if this operation was successful
     */
  /* void handleEvent (in nsPluginEventPtr aEvent, out boolean aHandled); */
  void HandleEvent(nsPluginEvent * aEvent, out PRBool aHandled){
    nsresult __result = inner.HandleEvent(aEvent, &aHandled);
    CheckException(__result);
  }

private:
  nsIPluginInstance inner;

}

