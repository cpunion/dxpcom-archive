/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPluginManager.idl
 */

module mozilla.xpcom.nsIPluginManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nspluginroot;

public import mozilla.xpcom.nsIPluginStreamListener; /* forward declaration */


/* starting interface:    nsIPluginManager */
const char[] NS_IPLUGINMANAGER_IID_STR = "da58ad80-4eb6-11d2-8164-006008119d7a";

const nsIID NS_IPLUGINMANAGER_IID= 
  {0xda58ad80, 0x4eb6, 0x11d2, 
    [ 0x81, 0x64, 0x00, 0x60, 0x08, 0x11, 0x9d, 0x7a ]};

extern(Windows)
interface nsIPluginManager : nsISupports {
  static const char[] IID_STR = NS_IPLUGINMANAGER_IID_STR;
  static const nsIID IID = NS_IPLUGINMANAGER_IID;

  /**
     * Returns the value of a variable associated with the plugin manager.
     *
     * (Corresponds to NPN_GetValue.)
     *
     * @param variable - the plugin manager variable to get
     * @param value - the address of where to store the resulting value
     * @result - NS_OK if this operation was successful
     */
  /* [noscript] void GetValue (in nsPluginManagerVariable variable, in nativeVoid value); */
  nsresult GetValue(nsPluginManagerVariable variable, void * value);

  /**
     * Causes the plugins directory to be searched again for new plugin 
     * libraries.
     *
     * (Corresponds to NPN_ReloadPlugins.)
     *
     * @param reloadPages - indicates whether currently visible pages should 
     * also be reloaded
     */
  /* void reloadPlugins (in boolean reloadPages); */
  nsresult ReloadPlugins(PRBool reloadPages);

  /**
     * Returns the user agent string for the browser. 
     *
     * (Corresponds to NPN_UserAgent.)
     *
     * @param resultingAgentString - the resulting user agent string
     */
  /* [noscript] void UserAgent (in nativeChar resultingAgentString); */
  nsresult UserAgent(char * * resultingAgentString);

  /**
     * Fetches a URL.
     *
     * (Corresponds to NPN_GetURL and NPN_GetURLNotify.)
     *
     * @param pluginInst - the plugin making the request. If NULL, the URL
     *   is fetched in the background.
     * @param url - the URL to fetch
     * @param target - the target window into which to load the URL, or NULL if
     *   the data should be returned to the plugin via streamListener.
     * @param streamListener - a stream listener to be used to return data to
     *   the plugin. May be NULL if target is not NULL.
     * @param altHost - an IP-address string that will be used instead of the 
     *   host specified in the URL. This is used to prevent DNS-spoofing 
     *   attacks. Can be defaulted to NULL meaning use the host in the URL.
     * @param referrer - the referring URL (may be NULL)
     * @param forceJSEnabled - forces JavaScript to be enabled for 'javascript:'
     *   URLs, even if the user currently has JavaScript disabled (usually 
     *   specify PR_FALSE) 
     * @result - NS_OK if this operation was successful
     */
/**
     * Posts to a URL with post data and/or post headers.
     *
     * (Corresponds to NPN_PostURL and NPN_PostURLNotify.)
     *
     * @param pluginInst - the plugin making the request. If NULL, the URL
     *   is fetched in the background.
     * @param url - the URL to fetch
     * @param postDataLength - the length of postData (if non-NULL)
     * @param postData - the data to POST. NULL specifies that there is not post
     *   data
     * @param isFile - whether the postData specifies the name of a file to 
     *   post instead of data. The file will be deleted afterwards.
     * @param target - the target window into which to load the URL, or NULL if
     *   the data should be returned to the plugin via streamListener.
     * @param streamListener - a stream listener to be used to return data to
     *   the plugin. May be NULL if target is not NULL.
     * @param altHost - an IP-address string that will be used instead of the 
     *   host specified in the URL. This is used to prevent DNS-spoofing 
     *   attacks. Can be defaulted to NULL meaning use the host in the URL.
     * @param referrer - the referring URL (may be NULL)
     * @param forceJSEnabled - forces JavaScript to be enabled for 'javascript:'
     *   URLs, even if the user currently has JavaScript disabled (usually 
     *   specify PR_FALSE) 
     * @param postHeadersLength - the length of postHeaders (if non-NULL)
     * @param postHeaders - the headers to POST. Must be in the form of
     * "HeaderName: HeaderValue\r\n".  Each header, including the last,
     * must be followed by "\r\n".  NULL specifies that there are no
     * post headers
     * @result - NS_OK if this operation was successful
     */
/**
     * Persistently register a plugin with the plugin
     * manager. aMimeTypes, aMimeDescriptions, and aFileExtensions are
     * parallel arrays that contain information about the MIME types
     * that the plugin supports.
     *
     * @param aCID - the plugin's CID
     * @param aPluginName - the plugin's name
     * @param aDescription - a description of the plugin
     * @param aMimeTypes - an array of MIME types that the plugin
     *   is prepared to handle
     * @param aMimeDescriptions - an array of descriptions for the
     *   MIME types that the plugin can handle.
     * @param aFileExtensions - an array of file extensions for
     *   the MIME types that the plugin can handle.
     * @param aCount - the number of elements in the aMimeTypes,
     *   aMimeDescriptions, and aFileExtensions arrays.
     * @result - NS_OK if the operation was successful.
     */
  /* [noscript] void RegisterPlugin (in REFNSIID aCID, in string aPluginName, in string aDescription, in nativeChar aMimeTypes, in nativeChar aMimeDescriptions, in nativeChar aFileExtensions, in long aCount); */
  nsresult RegisterPlugin(REFNSIID aCID, char *aPluginName, char *aDescription, char * * aMimeTypes, char * * aMimeDescriptions, char * * aFileExtensions, PRInt32 aCount);

  /**
     * Unregister a plugin from the plugin manager
     *
     * @param aCID the CID of the plugin to unregister.
     * @result - NS_OK if the operation was successful.
     */
  /* [noscript] void UnregisterPlugin (in REFNSIID aCID); */
  nsresult UnregisterPlugin(REFNSIID aCID);

}

