/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPluginInstance.idl
 */

module mozilla.xpcom.nsIPluginInstance;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIPluginStreamListener;

public import mozilla.xpcom.nsIPluginInstancePeer; /* forward declaration */


/* starting interface:    nsIPluginInstance */
const char[] NS_IPLUGININSTANCE_IID_STR = "ebe00f40-0199-11d2-815b-006008119d7a";

const nsIID NS_IPLUGININSTANCE_IID= 
  {0xebe00f40, 0x0199, 0x11d2, 
    [ 0x81, 0x5b, 0x00, 0x60, 0x08, 0x11, 0x9d, 0x7a ]};

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
extern(Windows)
interface nsIPluginInstance : nsISupports {
  static const char[] IID_STR = NS_IPLUGININSTANCE_IID_STR;
  static const nsIID IID = NS_IPLUGININSTANCE_IID;

  /**
     * Initializes a newly created plugin instance, passing to it the
     * plugin instance peer which it should use for all communication
     * back to the browser.
     * 
     * @param aPeer - the corresponding plugin instance peer
     * @result      - NS_OK if this operation was successful
     */
  /* void initialize (in nsIPluginInstancePeer aPeer); */
  nsresult Initialize(nsIPluginInstancePeer aPeer);

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
  nsresult GetPeer(nsIPluginInstancePeer  *aPeer);

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
  nsresult Start();

  /**
     * Called to instruct the plugin instance to stop, thereby
     * suspending its state.  This method will be called whenever the
     * browser window goes on to display another page and the page
     * containing the plugin goes into the window's history list.
     *
     * @result - NS_OK if this operation was successful
     */
  /* void stop (); */
  nsresult Stop();

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
  nsresult Destroy();

  /**
     * Called when the window containing the plugin instance changes.
     *
     * (Corresponds to NPP_SetWindow.)
     *
     * @param aWindow - the plugin window structure
     * @result        - NS_OK if this operation was successful
     */
  /* void setWindow (in nsPluginWindowPtr aWindow); */
  nsresult SetWindow(nsPluginWindow * aWindow);

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
  nsresult NewStream(nsIPluginStreamListener *aListener);

  /**
     * Called to instruct the plugin instance to print itself to a printer.
     *
     * (Corresponds to NPP_Print.)
     *
     * @param aPlatformPrint - platform-specific printing information
     * @result               - NS_OK if this operation was successful
     */
  /* void print (in nsPluginPrintPtr aPlatformPrint); */
  nsresult Print(nsPluginPrint * aPlatformPrint);

  /**
     * Returns the value of a variable associated with the plugin instance.
     *
     * @param aVariable - the plugin instance variable to get
     * @param aValue    - the address of where to store the resulting value
     * @result          - NS_OK if this operation was successful
     */
  /* void getValue (in nsPluginInstanceVariable aVariable, in voidPtr aValue); */
  nsresult GetValue(nsPluginInstanceVariable aVariable, void * aValue);

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
  nsresult HandleEvent(nsPluginEvent * aEvent, PRBool *aHandled);

}

