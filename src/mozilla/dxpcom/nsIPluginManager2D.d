/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPluginManager2.idl
 */

module mozilla.dxpcom.nsIPluginManager2D;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPluginManager2;


public import mozilla.dxpcom.nsIPluginManager2D;

public import mozilla.xpcom.nsIPluginManager;
public import mozilla.dxpcom.nsIPluginManagerD;

public import mozilla.xpcom.nsIPlugin;

public import mozilla.dxpcom.nsIPluginD;

public import mozilla.xpcom.nsIEventHandler;

public import mozilla.dxpcom.nsIEventHandlerD;


/* starting wrapper class:    nsIPluginManager2 */
/**
 * Plugin Manager 2 Interface
 * These extensions to nsIPluginManager are only available in Communicator 5.0.
 */
class nsIPluginManager2D : public nsIPluginManagerD {

  static const nsIID IID = NS_IPLUGINMANAGER2_IID;


  alias nsIPluginManager2 InnerType;

  this(nsIPluginManager2 intr){
    super(intr);
    this.inner = intr;
  }

  nsIPluginManager2 opCast() {
    return inner;
  }

  void opAssign(nsIPluginManager2 value) {
    inner = value;
  }

  /**
   * Puts up a wait cursor.
   *
   * @result - NS_OK if this operation was successful
   */
  /* void beginWaitCursor (); */
  void BeginWaitCursor(){
    nsresult __result = inner.BeginWaitCursor();
    CheckException(__result);
  }

  /**
   * Restores the previous (non-wait) cursor.
   *
   * @result - NS_OK if this operation was successful
   */
  /* void endWaitCursor (); */
  void EndWaitCursor(){
    nsresult __result = inner.EndWaitCursor();
    CheckException(__result);
  }

  /**
   * Returns true if a URL protocol (e.g. "http") is supported.
   *
   * @param aProtocol - the protocol name
   * @param aResult   - true if the protocol is supported
   * @result          - NS_OK if this operation was successful
   */
  /* void supportsURLProtocol (in string aProtocol, out boolean aResult); */
  void SupportsURLProtocol(char*aProtocol, out PRBool aResult){
    nsresult __result = inner.SupportsURLProtocol(aProtocol, &aResult);
    CheckException(__result);
  }

  /**
   * This method may be called by the plugin to indicate that an error 
   * has occurred, e.g. that the plugin has failed or is shutting down 
   * spontaneously. This allows the browser to clean up any plugin-specific 
   * state.
   *
   * @param aPlugin - the plugin whose status is changing
   * @param aStatus - the error status value
   * @result        - NS_OK if this operation was successful
   */
  /* void notifyStatusChange (in nsIPlugin aPlugin, in nsresult aStatus); */
  void NotifyStatusChange(nsIPluginD aPlugin, nsresult aStatus){
    nsresult __result = inner.NotifyStatusChange(aPlugin ? cast(nsIPlugin)aPlugin : null, aStatus);
    CheckException(__result);
  }

  /**
   * Returns the proxy info for a given URL. The caller is required to
   * free the resulting memory with nsIMalloc::Free. The result will be in the
   * following format
   * 
   *   i)   "DIRECT"  -- no proxy
   *   ii)  "PROXY xxx.xxx.xxx.xxx"   -- use proxy
   *   iii) "SOCKS xxx.xxx.xxx.xxx"  -- use SOCKS
   *   iv)  Mixed. e.g. "PROXY 111.111.111.111;PROXY 112.112.112.112",
   *                    "PROXY 111.111.111.111;SOCKS 112.112.112.112"....
   *
   * Which proxy/SOCKS to use is determined by the plugin.
   */
  /* void findProxyForURL (in string aURL, out string aResult); */
  void FindProxyForURL(char*aURL, out char*aResult){
    nsresult __result = inner.FindProxyForURL(aURL, &aResult);
    CheckException(__result);
  }

  /**
   * Registers a top-level window with the browser. Events received by that
   * window will be dispatched to the event handler specified.
   * 
   * @param aHandler - the event handler for the window
   * @param aWindow  - the platform window reference
   * @result         - NS_OK if this operation was successful
   */
  /* void registerWindow (in nsIEventHandler aHandler, in nsPluginPlatformWindowRef aWindow); */
  void RegisterWindow(nsIEventHandlerD aHandler, nsPluginPlatformWindowRef aWindow){
    nsresult __result = inner.RegisterWindow(aHandler ? cast(nsIEventHandler)aHandler : null, aWindow);
    CheckException(__result);
  }

  /**
   * Unregisters a top-level window with the browser. The handler and window pair
   * should be the same as that specified to RegisterWindow.
   *
   * @param aHandler - the event handler for the window
   * @param aWindow  - the platform window reference
   * @result         - NS_OK if this operation was successful
   */
  /* void unregisterWindow (in nsIEventHandler aHandler, in nsPluginPlatformWindowRef aWindow); */
  void UnregisterWindow(nsIEventHandlerD aHandler, nsPluginPlatformWindowRef aWindow){
    nsresult __result = inner.UnregisterWindow(aHandler ? cast(nsIEventHandler)aHandler : null, aWindow);
    CheckException(__result);
  }

  /**
   * Allocates a new menu ID (for the Mac).
   *
   * @param aHandler   - the event handler for the window
   * @param aIsSubmenu - whether this is a sub-menu ID or not
   * @param aResult    - the resulting menu ID
   * @result           - NS_OK if this operation was successful
   */
  /* void allocateMenuID (in nsIEventHandler aHandler, in boolean aIsSubmenu, out short aResult); */
  void AllocateMenuID(nsIEventHandlerD aHandler, PRBool aIsSubmenu, out PRInt16 aResult){
    nsresult __result = inner.AllocateMenuID(aHandler ? cast(nsIEventHandler)aHandler : null, aIsSubmenu, &aResult);
    CheckException(__result);
  }

  /**
   * Deallocates a menu ID (for the Mac).
   *
   * @param aHandler - the event handler for the window
   * @param aMenuID  - the menu ID
   * @result         - NS_OK if this operation was successful
   */
  /* void deallocateMenuID (in nsIEventHandler aHandler, in short aMenuID); */
  void DeallocateMenuID(nsIEventHandlerD aHandler, PRInt16 aMenuID){
    nsresult __result = inner.DeallocateMenuID(aHandler ? cast(nsIEventHandler)aHandler : null, aMenuID);
    CheckException(__result);
  }

  /**
   * Indicates whether this event handler has allocated the given menu ID.
   *
   * @param aHandler - the event handler for the window
   * @param aMenuID  - the menu ID
   * @param aResult  - returns PR_TRUE if the menu ID is allocated
   * @result         - NS_OK if this operation was successful
   */
  /* void hasAllocatedMenuID (in nsIEventHandler aHandler, in short aMenuID, out boolean aResult); */
  void HasAllocatedMenuID(nsIEventHandlerD aHandler, PRInt16 aMenuID, out PRBool aResult){
    nsresult __result = inner.HasAllocatedMenuID(aHandler ? cast(nsIEventHandler)aHandler : null, aMenuID, &aResult);
    CheckException(__result);
  }

private:
  nsIPluginManager2 inner;

}

