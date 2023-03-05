/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPluginManager2.idl
 */

module mozilla.xpcom.nsIPluginManager2;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIPluginManager;

public import mozilla.xpcom.nsIPlugin; /* forward declaration */

public import mozilla.xpcom.nsIEventHandler; /* forward declaration */


/* starting interface:    nsIPluginManager2 */
const char[] NS_IPLUGINMANAGER2_IID_STR = "d2962dc0-4eb6-11d2-8164-006008119d7a";

const nsIID NS_IPLUGINMANAGER2_IID= 
  {0xd2962dc0, 0x4eb6, 0x11d2, 
    [ 0x81, 0x64, 0x00, 0x60, 0x08, 0x11, 0x9d, 0x7a ]};

/**
 * Plugin Manager 2 Interface
 * These extensions to nsIPluginManager are only available in Communicator 5.0.
 */
extern(Windows)
interface nsIPluginManager2 : nsIPluginManager {
  static const char[] IID_STR = NS_IPLUGINMANAGER2_IID_STR;
  static const nsIID IID = NS_IPLUGINMANAGER2_IID;

  /**
   * Puts up a wait cursor.
   *
   * @result - NS_OK if this operation was successful
   */
  /* void beginWaitCursor (); */
  nsresult BeginWaitCursor();

  /**
   * Restores the previous (non-wait) cursor.
   *
   * @result - NS_OK if this operation was successful
   */
  /* void endWaitCursor (); */
  nsresult EndWaitCursor();

  /**
   * Returns true if a URL protocol (e.g. "http") is supported.
   *
   * @param aProtocol - the protocol name
   * @param aResult   - true if the protocol is supported
   * @result          - NS_OK if this operation was successful
   */
  /* void supportsURLProtocol (in string aProtocol, out boolean aResult); */
  nsresult SupportsURLProtocol(char *aProtocol, PRBool *aResult);

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
  nsresult NotifyStatusChange(nsIPlugin aPlugin, nsresult aStatus);

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
  nsresult FindProxyForURL(char *aURL, char **aResult);

  /**
   * Registers a top-level window with the browser. Events received by that
   * window will be dispatched to the event handler specified.
   * 
   * @param aHandler - the event handler for the window
   * @param aWindow  - the platform window reference
   * @result         - NS_OK if this operation was successful
   */
  /* void registerWindow (in nsIEventHandler aHandler, in nsPluginPlatformWindowRef aWindow); */
  nsresult RegisterWindow(nsIEventHandler aHandler, nsPluginPlatformWindowRef aWindow);

  /**
   * Unregisters a top-level window with the browser. The handler and window pair
   * should be the same as that specified to RegisterWindow.
   *
   * @param aHandler - the event handler for the window
   * @param aWindow  - the platform window reference
   * @result         - NS_OK if this operation was successful
   */
  /* void unregisterWindow (in nsIEventHandler aHandler, in nsPluginPlatformWindowRef aWindow); */
  nsresult UnregisterWindow(nsIEventHandler aHandler, nsPluginPlatformWindowRef aWindow);

  /**
   * Allocates a new menu ID (for the Mac).
   *
   * @param aHandler   - the event handler for the window
   * @param aIsSubmenu - whether this is a sub-menu ID or not
   * @param aResult    - the resulting menu ID
   * @result           - NS_OK if this operation was successful
   */
  /* void allocateMenuID (in nsIEventHandler aHandler, in boolean aIsSubmenu, out short aResult); */
  nsresult AllocateMenuID(nsIEventHandler aHandler, PRBool aIsSubmenu, PRInt16 *aResult);

  /**
   * Deallocates a menu ID (for the Mac).
   *
   * @param aHandler - the event handler for the window
   * @param aMenuID  - the menu ID
   * @result         - NS_OK if this operation was successful
   */
  /* void deallocateMenuID (in nsIEventHandler aHandler, in short aMenuID); */
  nsresult DeallocateMenuID(nsIEventHandler aHandler, PRInt16 aMenuID);

  /**
   * Indicates whether this event handler has allocated the given menu ID.
   *
   * @param aHandler - the event handler for the window
   * @param aMenuID  - the menu ID
   * @param aResult  - returns PR_TRUE if the menu ID is allocated
   * @result         - NS_OK if this operation was successful
   */
  /* void hasAllocatedMenuID (in nsIEventHandler aHandler, in short aMenuID, out boolean aResult); */
  nsresult HasAllocatedMenuID(nsIEventHandler aHandler, PRInt16 aMenuID, PRBool *aResult);

}

