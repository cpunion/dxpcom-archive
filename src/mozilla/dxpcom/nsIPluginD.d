/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPlugin.idl
 */

module mozilla.dxpcom.nsIPluginD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPlugin;


public import mozilla.dxpcom.nsIPluginD;

public import mozilla.xpcom.nsIFactory;
public import mozilla.dxpcom.nsIFactoryD;
public import mozilla.xpcom.nspluginroot;
public import mozilla.dxpcom.nspluginrootD;


/* starting wrapper class:    nsIPlugin */
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
class nsIPluginD : public nsIFactoryD {

  static const nsIID IID = NS_IPLUGIN_IID;


  alias nsIPlugin InnerType;

  this(nsIPlugin intr){
    super(intr);
    this.inner = intr;
  }

  nsIPlugin opCast() {
    return inner;
  }

  void opAssign(nsIPlugin value) {
    inner = value;
  }

  /**
     * Creates a new plugin instance, based on a MIME type. This
     * allows different impelementations to be created depending on
     * the specified MIME type.
     */
  /* void createPluginInstance (in nsISupports aOuter, in nsIIDRef aIID, in string aPluginMIMEType, [iid_is (aIID), retval] out nsQIResult aResult); */
  void CreatePluginInstance(nsISupportsD aOuter, nsIID * aIID, char*aPluginMIMEType, out void * aResult){
    nsresult __result = inner.CreatePluginInstance(aOuter ? cast(nsISupports)aOuter : null, aIID, aPluginMIMEType, &aResult);
    CheckException(__result);
  }

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
  void Initialize(){
    nsresult __result = inner.Initialize();
    CheckException(__result);
  }

  /**
     * Called when the browser is done with the plugin factory, or when
     * the plugin is disabled by the user.
     *
     * (Corresponds to NPP_Shutdown.)
   *
   * @result - NS_OK if this operation was successful
     */
  /* void shutdown (); */
  void Shutdown(){
    nsresult __result = inner.Shutdown();
    CheckException(__result);
  }

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
  void GetMIMEDescription(out char * aMIMEDescription){
    nsresult __result = inner.GetMIMEDescription(&aMIMEDescription);
    CheckException(__result);
  }

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
  void GetValue(nsPluginVariable aVariable, void * aValue){
    nsresult __result = inner.GetValue(aVariable, aValue);
    CheckException(__result);
  }

private:
  nsIPlugin inner;

}

