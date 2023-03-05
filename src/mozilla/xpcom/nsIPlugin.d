/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPlugin.idl
 */

module mozilla.xpcom.nsIPlugin;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIFactory;
public import mozilla.xpcom.nspluginroot;


/* starting interface:    nsIPlugin */
const char[] NS_IPLUGIN_IID_STR = "df773070-0199-11d2-815b-006008119d7a";

const nsIID NS_IPLUGIN_IID= 
  {0xdf773070, 0x0199, 0x11d2, 
    [ 0x81, 0x5b, 0x00, 0x60, 0x08, 0x11, 0x9d, 0x7a ]};

/**
 * The nsIPlugin interface is the minimum interface plugin developers need to 
 * support in order to implement a plugin. The plugin manager may QueryInterface 
 * for more specific plugin types, e.g. nsILiveConnectPlugin.
 *
 * The old NPP_New plugin operation is now subsumed by two operations:
 *
 * CreateInstance -- called once, after the plugin instance is created. This 
 * method is used to initialize the new plugin instance (although the actual
 * plugin instance object will be created by the plugin manager).
 *
 * nsIPluginInstance::Start -- called when the plugin instance is to be
 * started. This happens in two circumstances: (1) after the plugin instance
 * is first initialized, and (2) after a plugin instance is returned to
 * (e.g. by going back in the window history) after previously being stopped
 * by the Stop method. 
 */
extern(Windows)
interface nsIPlugin : nsIFactory {
  static const char[] IID_STR = NS_IPLUGIN_IID_STR;
  static const nsIID IID = NS_IPLUGIN_IID;

  /**
     * Creates a new plugin instance, based on a MIME type. This
     * allows different impelementations to be created depending on
     * the specified MIME type.
     */
  /* void createPluginInstance (in nsISupports aOuter, in nsIIDRef aIID, in string aPluginMIMEType, [iid_is (aIID), retval] out nsQIResult aResult); */
  nsresult CreatePluginInstance(nsISupports aOuter, nsIID * aIID, char *aPluginMIMEType, void * *aResult);

  /**
     * Initializes the plugin and will be called before any new instances are
   * created. It is passed browserInterfaces on which QueryInterface
   * may be used to obtain an nsIPluginManager, and other interfaces.
   *
   * @param browserInterfaces - an object that allows access to other browser
   * interfaces via QueryInterface
   * @result - NS_OK if this operation was successful
     */
  /* void initialize (); */
  nsresult Initialize();

  /**
     * Called when the browser is done with the plugin factory, or when
     * the plugin is disabled by the user.
     *
     * (Corresponds to NPP_Shutdown.)
   *
   * @result - NS_OK if this operation was successful
     */
  /* void shutdown (); */
  nsresult Shutdown();

  /**
     * Returns the MIME description for the plugin. The MIME description 
     * is a colon-separated string containg the plugin MIME type, plugin
     * data file extension, and plugin name, e.g.:
     *
     * "application/x-simple-plugin:smp:Simple LiveConnect Sample Plug-in"
     *
     * (Corresponds to NPP_GetMIMEDescription.)
     *
   * @param aMIMEDescription - the resulting MIME description 
   * @result                 - NS_OK if this operation was successful
     */
  /* void getMIMEDescription (out constCharPtr aMIMEDescription); */
  nsresult GetMIMEDescription(char * *aMIMEDescription);

  /**
   * Returns the value of a variable associated with the plugin.
     *
   * (Corresponds to NPP_GetValue.)
     *
   * @param aVariable - the plugin variable to get
   * @param aValue    - the address of where to store the resulting value
   * @result          - NS_OK if this operation was successful
     */
  /* void getValue (in nsPluginVariable aVariable, in voidPtr aValue); */
  nsresult GetValue(nsPluginVariable aVariable, void * aValue);

}

